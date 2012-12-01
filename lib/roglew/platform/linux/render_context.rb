module Roglew
  class RenderContext
    #if version not passed, builds context with latest version
    def initialize(display, screen, window, version = nil)
      @display, @screen, @window = display, screen, window
      @loaded_extensions = Set.new

      extension_list(:glx).each { |ext| load_extension(ext) }

      attrList = FFI::MemoryPointer.new(:int, 11)
      attrList.write_array_of_int([
                                    Roglew::GLX::RGBA,       Roglew::GLX::DOUBLEBUFFER,
                                    Roglew::GLX::RED_SIZE,   4,
                                    Roglew::GLX::GREEN_SIZE, 4,
                                    Roglew::GLX::BLUE_SIZE,  4,
                                    Roglew::GLX::DEPTH_SIZE, 16
                                  ])
      @visual = glXChooseVisual(@display, screen, attrList)
      @context = glXCreateContext(@display, @visual, nil, true)


      bind do
        #check version
        max_version = glGetString(GL::VERSION).split('.', 2).map!(&:to_i)

        #if max OpelGL version is less than requested, give error
        raise ArgumentError, "unsupported version #{version.join('.')}" if version && (max_version <=> version < 0)

        @version = version || max_version
        extension_list(:core).each { |ext| load_extension(ext) }
        old_context, @context = @context, upgrade_context if @version[0] > 2
        extension_list(:gl, :platform).each { |ext| load_extension(ext) }
      end

      self.class.finalize(self, @display, @context)
    end

    def get_proc_address(name)
      func = begin
        GLX.attach_function :glXGetProcAddress, [:string], :pointer
      rescue FFI::NotFoundError
        GLX.attach_function :glXGetProcAddressARB, [:string], :pointer
      end
      define_singleton_method(:get_proc_address, ->(n) { func.(n) })
      send(:get_proc_address, name)
    end

    def swap_buffers
      #TODO
      raise NotImplementedError
    end

    def unbind
      glXMakeCurrent(@display, 0, nil)
    end

    #------
    private

    def upgrade_context
      load_extension :GLX_ARB_create_context

      raise 'undefined function wglCreateContextAttribsARB' unless respond_to?(:glXCreateContextAttribsARB)

      attribs = [GLX::CONTEXT_MAJOR_VERSION_ARB, @version[0],
                 GLX::CONTEXT_MINOR_VERSION_ARB, @version[1],
                 GLX::CONTEXT_FLAGS_ARB,         GLX::CONTEXT_FORWARD_COMPATIBLE_BIT_ARB,
                 0]
      ptr_attribs = FFI::MemoryPointer.new(:int, attribs.length)
      ptr_attribs.write_array_of_int(attribs)
      glXCreateContextAttribsARB(@context, nil, ptr_attribs)
    end

    def extension_list_glx
      major, minor = FFI::MemoryPointer.new(:int), FFI::MemoryPointer.new(:int)
      glXQueryVersion(@display, major, minor)
      version = major.read_int, minor.read_int
      puts "GLX Version #{version.join('.')}"

      list = Dir["#{File.expand_path('../../../extensions', __FILE__)}/GLX_VERSION_*.rb"].
             map! { |f| File.basename(f, '.rb') }
      list.select! { |f| (f.gsub('GLX_VERSION_', '').split('_', 2).map!(&:to_i) <=> version) <= 0 }
      list
    end

    def extension_list_platform
      (respond_to?(:glXQueryExtensionsString) ? glXQueryExtensionsString(@display, @screen) : '').split.map!(&:to_sym)
    end

    def make_current
      glXMakeCurrent(@display, @window, @context)
    end
  end
end