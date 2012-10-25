module GL_HP_image_transform
  module RenderContext
    include GLExtension

    functions [:glGetImageTransformParameterfvHP, [ :uint, :uint, :pointer ], :void],
              [:glGetImageTransformParameterivHP, [ :uint, :uint, :pointer ], :void],
              [:glImageTransformParameterfHP, [ :uint, :uint, :float ], :void],
              [:glImageTransformParameterfvHP, [ :uint, :uint, :pointer ], :void],
              [:glImageTransformParameteriHP, [ :uint, :uint, :int ], :void],
              [:glImageTransformParameterivHP, [ :uint, :uint, :pointer ], :void]
  end
end