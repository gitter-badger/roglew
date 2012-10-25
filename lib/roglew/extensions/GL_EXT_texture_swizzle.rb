module Roglew
  module GL
    TEXTURE_SWIZZLE_A_EXT    = 0x8E45
    TEXTURE_SWIZZLE_B_EXT    = 0x8E44
    TEXTURE_SWIZZLE_G_EXT    = 0x8E43
    TEXTURE_SWIZZLE_R_EXT    = 0x8E42
    TEXTURE_SWIZZLE_RGBA_EXT = 0x8E46
  end
end

module GL_EXT_texture_swizzle
  module RenderContext
    include GLExtension

    functions
  end
end

