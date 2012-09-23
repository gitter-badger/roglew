require 'roglew/extensions/GL_EXT_framebuffer_object/render_context'

module GL_ARB_framebuffer_object
  def self.on_load(ctx)
    GL_EXT_framebuffer_object.on_load(ctx)

    [
      #void glBlitFramebuffer(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)
      [:blit_framebuffer, :glBlitFramebuffer, [:GLint]*8 << :GLbitfield << :GLenum, :void],
      #void glFramebufferTextureLayer(GLenum target,GLenum attachment, GLuint texture,GLint level,GLint layer)
      [:framebuffer_texture_layer, :glFramebufferTextureLayer, ([:GLenum]*2 << :GLuint) + [:GLint]*2, :void],
      #void glRenderbufferStorageMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)
      [:renderbuffer_storage_multisample, :glRenderbufferStorageMultisample, [:GLenum, :GLsizei, :GLenum, :GLsizei, :GLsizei], :void],
    ].each { |f| ctx.def_function *f }
  end
end

#module GL_ARB_framebuffer_object
#  include GL_EXT_framebuffer_object
#
#  def self.init_extension
#    GL_EXT_framebuffer_object.init_extension
#
#    [
#      #void glBlitFramebuffer(GLint srcX0, GLint srcY0, GLint srcX1, GLint srcY1, GLint dstX0, GLint dstY0, GLint dstX1, GLint dstY1, GLbitfield mask, GLenum filter)
#      [:glBlitFramebuffer, [:GLint]*8 << :GLbitfield << :GLenum, :void],
#      #void glFramebufferTextureLayer(GLenum target,GLenum attachment, GLuint texture,GLint level,GLint layer)
#      [:glFramebufferTextureLayer, ([:GLenum]*2 << :GLuint) + [:GLint]*2, :void],
#      #void glRenderbufferStorageMultisample(GLenum target, GLsizei samples, GLenum internalformat, GLsizei width, GLsizei height)
#      [:glRenderbufferStorageMultisample, [:GLenum, :GLsizei, :GLenum, :GLsizei, :GLsizei], :void],
#    ].each { |f| def_function *f }
#  end
#
#  {
#    :blit_framebuffer => :glBlitFramebuffer,
#    :framebuffer_texture_layer => :glFramebufferTextureLayer,
#    :renderbuffer_storage_multisample => :glRenderbufferStorageMultisample
#  }.each do |method_name, function_name|
#    define_method(method_name) { |*args| function(function_name).(*args) }
#  end
#end

#class RenderHandle
#  def initialize()
#    @context_class = Class.new(RenderContext)
#  end
#
#  def load_extension(name)
#    mod = get_mod(name)
#    @context_class.send(:include, mod)
#  end
#
#  def bind
#    @context_class.new(self)
#  end
#end