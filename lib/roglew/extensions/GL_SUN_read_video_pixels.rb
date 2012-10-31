module GL_SUN_read_video_pixels
  module RenderContext
    include GLExtension

    functions [:glReadVideoPixelsSUN, [ :int, :int, :int, :int, :uint, :uint, :pointer ], :void]
  end
end