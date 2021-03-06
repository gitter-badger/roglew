module Roglew
  module GL
    ACTIVE_TEXTURE                 ||= 0x84E0
    ADD_SIGNED                     ||= 0x8574
    CLAMP_TO_BORDER                ||= 0x812D
    CLIENT_ACTIVE_TEXTURE          ||= 0x84E1
    COMBINE                        ||= 0x8570
    COMBINE_ALPHA                  ||= 0x8572
    COMBINE_RGB                    ||= 0x8571
    COMPRESSED_ALPHA               ||= 0x84E9
    COMPRESSED_INTENSITY           ||= 0x84EC
    COMPRESSED_LUMINANCE           ||= 0x84EA
    COMPRESSED_LUMINANCE_ALPHA     ||= 0x84EB
    COMPRESSED_RGB                 ||= 0x84ED
    COMPRESSED_RGBA                ||= 0x84EE
    COMPRESSED_TEXTURE_FORMATS     ||= 0x86A3
    CONSTANT                       ||= 0x8576
    DOT3_RGB                       ||= 0x86AE
    DOT3_RGBA                      ||= 0x86AF
    INTERPOLATE                    ||= 0x8575
    MAX_CUBE_MAP_TEXTURE_SIZE      ||= 0x851C
    MAX_TEXTURE_UNITS              ||= 0x84E2
    MULTISAMPLE                    ||= 0x809D
    MULTISAMPLE_BIT                ||= 0x20000000
    NORMAL_MAP                     ||= 0x8511
    NUM_COMPRESSED_TEXTURE_FORMATS ||= 0x86A2
    OPERAND0_ALPHA                 ||= 0x8598
    OPERAND0_RGB                   ||= 0x8590
    OPERAND1_ALPHA                 ||= 0x8599
    OPERAND1_RGB                   ||= 0x8591
    OPERAND2_ALPHA                 ||= 0x859A
    OPERAND2_RGB                   ||= 0x8592
    PREVIOUS                       ||= 0x8578
    PRIMARY_COLOR                  ||= 0x8577
    PROXY_TEXTURE_CUBE_MAP         ||= 0x851B
    REFLECTION_MAP                 ||= 0x8512
    RGB_SCALE                      ||= 0x8573
    SAMPLE_ALPHA_TO_COVERAGE       ||= 0x809E
    SAMPLE_ALPHA_TO_ONE            ||= 0x809F
    SAMPLE_BUFFERS                 ||= 0x80A8
    SAMPLE_COVERAGE                ||= 0x80A0
    SAMPLE_COVERAGE_INVERT         ||= 0x80AB
    SAMPLE_COVERAGE_VALUE          ||= 0x80AA
    SAMPLES                        ||= 0x80A9
    SOURCE0_ALPHA                  ||= 0x8588
    SOURCE0_RGB                    ||= 0x8580
    SOURCE1_ALPHA                  ||= 0x8589
    SOURCE1_RGB                    ||= 0x8581
    SOURCE2_ALPHA                  ||= 0x858A
    SOURCE2_RGB                    ||= 0x8582
    SUBTRACT                       ||= 0x84E7
    TEXTURE_BINDING_CUBE_MAP       ||= 0x8514
    TEXTURE_COMPRESSED             ||= 0x86A1
    TEXTURE_COMPRESSED_IMAGE_SIZE  ||= 0x86A0
    TEXTURE_COMPRESSION_HINT       ||= 0x84EF
    TEXTURE_CUBE_MAP               ||= 0x8513
    TEXTURE_CUBE_MAP_NEGATIVE_X    ||= 0x8516
    TEXTURE_CUBE_MAP_NEGATIVE_Y    ||= 0x8518
    TEXTURE_CUBE_MAP_NEGATIVE_Z    ||= 0x851A
    TEXTURE_CUBE_MAP_POSITIVE_X    ||= 0x8515
    TEXTURE_CUBE_MAP_POSITIVE_Y    ||= 0x8517
    TEXTURE_CUBE_MAP_POSITIVE_Z    ||= 0x8519
    TEXTURE0                       ||= 0x84C0
    TEXTURE1                       ||= 0x84C1
    TEXTURE10                      ||= 0x84CA
    TEXTURE11                      ||= 0x84CB
    TEXTURE12                      ||= 0x84CC
    TEXTURE13                      ||= 0x84CD
    TEXTURE14                      ||= 0x84CE
    TEXTURE15                      ||= 0x84CF
    TEXTURE16                      ||= 0x84D0
    TEXTURE17                      ||= 0x84D1
    TEXTURE18                      ||= 0x84D2
    TEXTURE19                      ||= 0x84D3
    TEXTURE2                       ||= 0x84C2
    TEXTURE20                      ||= 0x84D4
    TEXTURE21                      ||= 0x84D5
    TEXTURE22                      ||= 0x84D6
    TEXTURE23                      ||= 0x84D7
    TEXTURE24                      ||= 0x84D8
    TEXTURE25                      ||= 0x84D9
    TEXTURE26                      ||= 0x84DA
    TEXTURE27                      ||= 0x84DB
    TEXTURE28                      ||= 0x84DC
    TEXTURE29                      ||= 0x84DD
    TEXTURE3                       ||= 0x84C3
    TEXTURE30                      ||= 0x84DE
    TEXTURE31                      ||= 0x84DF
    TEXTURE4                       ||= 0x84C4
    TEXTURE5                       ||= 0x84C5
    TEXTURE6                       ||= 0x84C6
    TEXTURE7                       ||= 0x84C7
    TEXTURE8                       ||= 0x84C8
    TEXTURE9                       ||= 0x84C9
    TRANSPOSE_COLOR_MATRIX         ||= 0x84E6
    TRANSPOSE_MODELVIEW_MATRIX     ||= 0x84E3
    TRANSPOSE_PROJECTION_MATRIX    ||= 0x84E4
    TRANSPOSE_TEXTURE_MATRIX       ||= 0x84E5
  end
end

module GL_VERSION_1_3
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions [
        [ :glActiveTexture, [ :uint ], :void ],
        [ :glCompressedTexImage1D, [ :uint, :int, :uint, :int, :int, :int, :pointer ], :void ],
        [ :glCompressedTexImage2D, [ :uint, :int, :uint, :int, :int, :int, :int, :pointer ], :void ],
        [ :glCompressedTexImage3D, [ :uint, :int, :uint, :int, :int, :int, :int, :int, :pointer ], :void ],
        [ :glCompressedTexSubImage1D, [ :uint, :int, :int, :int, :uint, :int, :pointer ], :void ],
        [ :glCompressedTexSubImage2D, [ :uint, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void ],
        [ :glCompressedTexSubImage3D, [ :uint, :int, :int, :int, :int, :int, :int, :int, :uint, :int, :pointer ], :void ],
        [ :glGetCompressedTexImage, [ :uint, :int, :pointer ], :void ],
        [ :glSampleCoverage, [ :float, :uchar ], :void ]
    ]

    functions :compatibility, [
        [ :glClientActiveTexture, [ :uint ], :void ],
        [ :glLoadTransposeMatrixd, [:double] * 16, :void ],
        [ :glLoadTransposeMatrixf, [:float] * 16, :void ],
        [ :glMultiTexCoord1d,  [ :uint, :double ], :void ],
        [ :glMultiTexCoord1dv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord1f,  [ :uint, :float ], :void ],
        [ :glMultiTexCoord1fv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord1i,  [ :uint, :int ], :void ],
        [ :glMultiTexCoord1iv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord1s,  [ :uint, :short ], :void ],
        [ :glMultiTexCoord1sv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord2d,  [ :uint, :double, :double ], :void ],
        [ :glMultiTexCoord2dv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord2f,  [ :uint, :float, :float ], :void ],
        [ :glMultiTexCoord2fv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord2i,  [ :uint, :int, :int ], :void ],
        [ :glMultiTexCoord2iv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord2s,  [ :uint, :short, :short ], :void ],
        [ :glMultiTexCoord2sv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord3d,  [ :uint, :double, :double, :double ], :void ],
        [ :glMultiTexCoord3dv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord3f,  [ :uint, :float, :float, :float ], :void ],
        [ :glMultiTexCoord3fv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord3i,  [ :uint, :int, :int, :int ], :void ],
        [ :glMultiTexCoord3iv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord3s,  [ :uint, :short, :short, :short ], :void ],
        [ :glMultiTexCoord3sv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord4d,  [ :uint, :double, :double, :double, :double ], :void ],
        [ :glMultiTexCoord4dv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord4f,  [ :uint, :float, :float, :float, :float ], :void ],
        [ :glMultiTexCoord4fv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord4i,  [ :uint, :int, :int, :int, :int ], :void ],
        [ :glMultiTexCoord4iv, [ :uint, :pointer ], :void ],
        [ :glMultiTexCoord4s,  [ :uint, :short, :short, :short, :short ], :void ],
        [ :glMultiTexCoord4sv, [ :uint, :pointer ], :void ],
        [ :glMultTransposeMatrixd, [:double] * 16, :void ],
        [ :glMultTransposeMatrixf, [:float] * 16, :void ]
    ]
  end
end