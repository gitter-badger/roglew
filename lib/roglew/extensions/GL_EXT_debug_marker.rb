module GL_EXT_debug_marker
  module RenderContext
    include GLExtension

    functions [:glInsertEventMarkerEXT, [ :int, :string ], :void],
              [:glPopGroupMarkerEXT, [  ], :void],
              [:glPushGroupMarkerEXT, [ :int, :string ], :void]
  end
end