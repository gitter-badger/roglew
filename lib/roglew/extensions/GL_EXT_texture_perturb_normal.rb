module Roglew
  module GL
    PERTURB_EXT        ||= 0x85AE
    TEXTURE_NORMAL_EXT ||= 0x85AF
  end
end

module GL_EXT_texture_perturb_normal
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [:glTextureNormalEXT, [ :uint ], :void]
    ]
  end
end

