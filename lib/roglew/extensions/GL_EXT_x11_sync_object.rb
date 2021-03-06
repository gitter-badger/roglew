module Roglew
  module GL
    SYNC_X11_FENCE_EXT ||= 0x90E1
  end
end

module GL_EXT_x11_sync_object
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glImportSyncEXT, [ :uint, :int64, :uint ], :pointer]
    ]
  end
end

