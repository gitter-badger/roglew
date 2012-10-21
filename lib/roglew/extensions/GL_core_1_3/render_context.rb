module GL_core_1_3
  module RenderContext
    include GLExtension

    functions [:glActiveTexture, [ :uint ], :void],
              [:glClientActiveTexture,  [ :uint ], :void],
              [:glCompressedTexImage1D, [ :uint, :int, :uint, :int, :int, :int, :pointer ], :void],
              [:glCompressedTexImage2D, [ :uint, :int, :uint, :int, :int, :int, :int, :pointer ], :void],
              [:glCompressedTexImage3D, [ :uint, :int, :uint, :int, :int, :int, :int, :int, :pointer ], :void],
              [:glCompressedTexSubImage1D, [ :uint, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glCompressedTexSubImage2D, [ :uint, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glCompressedTexSubImage3D, [ :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void],
              [:glGetCompressedTexImage, [ :uint, :int, :pointer ], :void],
              [:glLoadTransposeMatrixd,  [:double] * 16, :void],
              [:glLoadTransposeMatrixf,  [:float] * 16, :void],
              [:glMultiTexCoord1d,  [ :uint, :double ], :void],
              [:glMultiTexCoord1dv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord1f,  [ :uint, :float ], :void],
              [:glMultiTexCoord1fv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord1i,  [ :uint, :int ], :void],
              [:glMultiTexCoord1iv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord1s,  [ :uint, :short ], :void],
              [:glMultiTexCoord1sv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord2d,  [ :uint, :double, :double ], :void],
              [:glMultiTexCoord2dv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord2f,  [ :uint, :float, :float ], :void],
              [:glMultiTexCoord2fv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord2i,  [ :uint, :int, :int ], :void],
              [:glMultiTexCoord2iv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord2s,  [ :uint, :short, :short ], :void],
              [:glMultiTexCoord2sv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord3d,  [ :uint, :double, :double, :double ], :void],
              [:glMultiTexCoord3dv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord3f,  [ :uint, :float, :float, :float ], :void],
              [:glMultiTexCoord3fv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord3i,  [ :uint, :int, :int, :int ], :void],
              [:glMultiTexCoord3iv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord3s,  [ :uint, :short, :short, :short ], :void],
              [:glMultiTexCoord3sv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord4d,  [ :uint, :double, :double, :double, :double ], :void],
              [:glMultiTexCoord4dv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord4f,  [ :uint, :float, :float, :float, :float ], :void],
              [:glMultiTexCoord4fv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord4i,  [ :uint, :int, :int, :int, :int ], :void],
              [:glMultiTexCoord4iv, [ :uint, :pointer ], :void],
              [:glMultiTexCoord4s,  [ :uint, :short, :short, :short, :short ], :void],
              [:glMultiTexCoord4sv, [ :uint, :pointer ], :void],
              [:glMultTransposeMatrixd, [:double] * 16, :void],
              [:glMultTransposeMatrixf, [:float] * 16, :void],
              [:glSampleCoverage, [ :float, :uchar ], :void]

  end
end