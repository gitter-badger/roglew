module GL_SGIS_texture_filter4
  module RenderContext
    include Roglew::GLExtension

    functions [:glGetTexFilterFuncSGIS, [ :uint, :uint, :pointer ], :void],
              [:glTexFilterFuncSGIS, [ :uint, :uint, :int, :pointer ], :void]
  end
end