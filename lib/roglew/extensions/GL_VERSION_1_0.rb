module GL_VERSION_1_0
  module RenderHandle
    include Roglew::RenderHandleExtension

    functions :ffi, :compatibility, [
        [ :glAccum, [ :uint, :float ], :void ],
        [ :glAlphaFunc, [ :uint, :float ], :void ],
        [ :glBegin, [ :uint ], :void ],
        [ :glBitmap, [ :int, :int, :float, :float, :float, :float, :pointer ], :void ],
        [ :glCallList, [ :uint ], :void ],
        [ :glCallLists, [ :int, :uint, :pointer ], :void ],
        [ :glClearAccum, [ :float, :float, :float, :float ], :void ],
        [ :glClearIndex, [ :float ], :void ],
        [ :glClipPlane, [ :uint, :pointer ], :void ],
        [ :glColor3b, [ :char, :char, :char ], :void ],
        [ :glColor3bv, [ :pointer ], :void ],
        [ :glColor3d, [ :double, :double, :double ], :void ],
        [ :glColor3dv, [ :pointer ], :void ],
        [ :glColor3f, [ :float, :float, :float ], :void ],
        [ :glColor3fv, [ :pointer ], :void ],
        [ :glColor3i, [ :int, :int, :int ], :void ],
        [ :glColor3iv, [ :pointer ], :void ],
        [ :glColor3s, [ :short, :short, :short ], :void ],
        [ :glColor3sv, [ :pointer ], :void ],
        [ :glColor3ub, [ :uchar, :uchar, :uchar ], :void ],
        [ :glColor3ubv, [ :pointer ], :void ],
        [ :glColor3ui, [ :uint, :uint, :uint ], :void ],
        [ :glColor3uiv, [ :pointer ], :void ],
        [ :glColor3us, [ :ushort, :ushort, :ushort ], :void ],
        [ :glColor3usv, [ :pointer ], :void ],
        [ :glColor4b, [ :char, :char, :char, :char ], :void ],
        [ :glColor4bv, [ :pointer ], :void ],
        [ :glColor4d, [ :double, :double, :double, :double ], :void ],
        [ :glColor4dv, [ :pointer ], :void ],
        [ :glColor4f, [ :float, :float, :float, :float ], :void ],
        [ :glColor4fv, [ :pointer ], :void ],
        [ :glColor4i, [ :int, :int, :int, :int ], :void ],
        [ :glColor4iv, [ :pointer ], :void ],
        [ :glColor4s, [ :short, :short, :short, :short ], :void ],
        [ :glColor4sv, [ :pointer ], :void ],
        [ :glColor4ub, [ :uchar, :uchar, :uchar, :uchar ], :void ],
        [ :glColor4ubv, [ :pointer ], :void ],
        [ :glColor4ui, [ :uint, :uint, :uint, :uint ], :void ],
        [ :glColor4uiv, [ :pointer ], :void ],
        [ :glColor4us, [ :ushort, :ushort, :ushort, :ushort ], :void ],
        [ :glColor4usv, [ :pointer ], :void ],
        [ :glColorMaterial, [ :uint, :uint ], :void ],
        [ :glCopyPixels, [ :int, :int, :int, :int, :uint ], :void ],
        [ :glDeleteLists, [ :uint, :int ], :void ],
        [ :glDrawPixels, [ :int, :int, :uint, :uint, :pointer ], :void ],
        [ :glEdgeFlag, [ :uchar ], :void ],
        [ :glEdgeFlagv, [ :pointer ], :void ],
        [ :glEnd, [], :void ],
        [ :glEndList, [], :void ],
        [ :glEvalCoord1d, [ :double ], :void ],
        [ :glEvalCoord1dv, [ :pointer ], :void ],
        [ :glEvalCoord1f, [ :float ], :void ],
        [ :glEvalCoord1fv, [ :pointer ], :void ],
        [ :glEvalCoord2d, [ :double, :double ], :void ],
        [ :glEvalCoord2dv, [ :pointer ], :void ],
        [ :glEvalCoord2f, [ :float, :float ], :void ],
        [ :glEvalCoord2fv, [ :pointer ], :void ],
        [ :glEvalMesh1, [ :uint, :int, :int ], :void ],
        [ :glEvalMesh2, [ :uint, :int, :int, :int, :int ], :void ],
        [ :glEvalPoint1, [ :int ], :void ],
        [ :glEvalPoint2, [ :int, :int ], :void ],
        [ :glFeedbackBuffer, [ :int, :uint, :pointer ], :void ],
        [ :glFogf, [ :uint, :float ], :void ],
        [ :glFogfv, [ :uint, :pointer ], :void ],
        [ :glFogi, [ :uint, :int ], :void ],
        [ :glFogiv, [ :uint, :pointer ], :void ],
        [ :glFrustum, [ :double, :double, :double, :double, :double, :double ], :void ],
        [ :glGenLists, [ :int ], :uint ],
        [ :glGetClipPlane, [ :uint, :pointer ], :void ],
        [ :glGetLightfv, [ :uint, :uint, :pointer ], :void ],
        [ :glGetLightiv, [ :uint, :uint, :pointer ], :void ],
        [ :glGetMapdv, [ :uint, :uint, :pointer ], :void ],
        [ :glGetMapfv, [ :uint, :uint, :pointer ], :void ],
        [ :glGetMapiv, [ :uint, :uint, :pointer ], :void ],
        [ :glGetMaterialfv, [ :uint, :uint, :pointer ], :void ],
        [ :glGetMaterialiv, [ :uint, :uint, :pointer ], :void ],
        [ :glGetPixelMapfv, [ :uint, :pointer ], :void ],
        [ :glGetPixelMapuiv, [ :uint, :pointer ], :void ],
        [ :glGetPixelMapusv, [ :uint, :pointer ], :void ],
        [ :glGetPolygonStipple, [ :pointer ], :void ],
        [ :glGetTexEnvfv, [ :uint, :uint, :pointer ], :void ],
        [ :glGetTexEnviv, [ :uint, :uint, :pointer ], :void ],
        [ :glGetTexGenfv, [ :uint, :uint, :pointer ], :void ],
        [ :glGetTexGeniv, [ :uint, :uint, :pointer ], :void ],
        [ :glIndexd, [ :double ], :void ],
        [ :glIndexdv, [ :pointer ], :void ],
        [ :glIndexf, [ :float ], :void ],
        [ :glIndexfv, [ :pointer ], :void ],
        [ :glIndexi, [ :int ], :void ],
        [ :glIndexiv, [ :pointer ], :void ],
        [ :glIndexs, [ :short ], :void ],
        [ :glIndexsv, [ :pointer ], :void ],
        [ :glIndexMask, [ :uint ], :void ],
        [ :glInitNames, [], :void ],
        [ :glIsList, [ :uint ], :uchar ],
        [ :glLightf, [ :uint, :uint, :float ], :void ],
        [ :glLightfv, [ :uint, :uint, :pointer ], :void ],
        [ :glLighti, [ :uint, :uint, :int ], :void ],
        [ :glLightiv, [ :uint, :uint, :pointer ], :void ],
        [ :glLightModelf, [ :uint, :float ], :void ],
        [ :glLightModelfv, [ :uint, :pointer ], :void ],
        [ :glLightModeli, [ :uint, :int ], :void ],
        [ :glLightModeliv, [ :uint, :pointer ], :void ],
        [ :glLineStipple, [ :int, :ushort ], :void ],
        [ :glListBase, [ :uint ], :void ],
        [ :glLoadIdentity, [], :void ],
        [ :glLoadMatrixd, [ :pointer ], :void ],
        [ :glLoadMatrixf, [ :pointer ], :void ],
        [ :glLoadName, [ :uint ], :void ],
        [ :glMap1d, [ :uint, :double, :double, :int, :int, :pointer ], :void ],
        [ :glMap1f, [ :uint, :float, :float, :int, :int, :pointer ], :void ],
        [ :glMap2d, [ :uint, :double, :double, :int, :int, :double, :double, :int, :int, :pointer ], :void ],
        [ :glMap2f, [ :uint, :float, :float, :int, :int, :float, :float, :int, :int, :pointer ], :void ],
        [ :glMaterialf, [ :uint, :uint, :float ], :void ],
        [ :glMaterialfv, [ :uint, :uint, :pointer ], :void ],
        [ :glMateriali, [ :uint, :uint, :int ], :void ],
        [ :glMaterialiv, [ :uint, :uint, :pointer ], :void ],
        [ :glMatrixMode, [ :uint ], :void ],
        [ :glMultMatrixd, [ :pointer ], :void ],
        [ :glMultMatrixf, [ :pointer ], :void ],
        [ :glNewList, [ :uint, :uint ], :void ],
        [ :glNormal3b, [ :char, :char, :char ], :void ],
        [ :glNormal3bv, [ :pointer ], :void ],
        [ :glNormal3d, [ :double, :double, :double ], :void ],
        [ :glNormal3dv, [ :pointer ], :void ],
        [ :glNormal3f, [ :float, :float, :float ], :void ],
        [ :glNormal3fv, [ :pointer ], :void ],
        [ :glNormal3i, [ :int, :int, :int ], :void ],
        [ :glNormal3iv, [ :pointer ], :void ],
        [ :glNormal3s, [ :short, :short, :short ], :void ],
        [ :glNormal3sv, [ :pointer ], :void ],
        [ :glOrtho, [ :double, :double, :double, :double, :double, :double ], :void ],
        [ :glPassThrough, [ :float ], :void ],
        [ :glPixelMapfv, [ :uint, :int, :pointer ], :void ],
        [ :glPixelMapuiv, [ :uint, :int, :pointer ], :void ],
        [ :glPixelMapusv, [ :uint, :int, :pointer ], :void ],
        [ :glPixelTransferf, [ :uint, :float ], :void ],
        [ :glPixelTransferi, [ :uint, :int ], :void ],
        [ :glPixelZoom, [ :float, :float ], :void ],
        [ :glPolygonStipple, [ :pointer ], :void ],
        [ :glPopAttrib, [], :void ],
        [ :glPopMatrix, [], :void ],
        [ :glPopName, [], :void ],
        [ :glPushAttrib, [ :uint ], :void ],
        [ :glPushMatrix, [], :void ],
        [ :glPushName, [ :uint ], :void ],
        [ :glRasterPos2d, [ :double, :double ], :void ],
        [ :glRasterPos2dv, [ :pointer ], :void ],
        [ :glRasterPos2f, [ :float, :float ], :void ],
        [ :glRasterPos2fv, [ :pointer ], :void ],
        [ :glRasterPos2i, [ :int, :int ], :void ],
        [ :glRasterPos2iv, [ :pointer ], :void ],
        [ :glRasterPos2s, [ :short, :short ], :void ],
        [ :glRasterPos2sv, [ :pointer ], :void ],
        [ :glRasterPos3d, [ :double, :double, :double ], :void ],
        [ :glRasterPos3dv, [ :pointer ], :void ],
        [ :glRasterPos3f, [ :float, :float, :float ], :void ],
        [ :glRasterPos3fv, [ :pointer ], :void ],
        [ :glRasterPos3i, [ :int, :int, :int ], :void ],
        [ :glRasterPos3iv, [ :pointer ], :void ],
        [ :glRasterPos3s, [ :short, :short, :short ], :void ],
        [ :glRasterPos3sv, [ :pointer ], :void ],
        [ :glRasterPos4d, [ :double, :double, :double, :double ], :void ],
        [ :glRasterPos4dv, [ :pointer ], :void ],
        [ :glRasterPos4f, [ :float, :float, :float, :float ], :void ],
        [ :glRasterPos4fv, [ :pointer ], :void ],
        [ :glRasterPos4i, [ :int, :int, :int, :int ], :void ],
        [ :glRasterPos4iv, [ :pointer ], :void ],
        [ :glRasterPos4s, [ :short, :short, :short, :short ], :void ],
        [ :glRasterPos4sv, [ :pointer ], :void ],
        [ :glRectd, [ :double, :double, :double, :double ], :void ],
        [ :glRectdv, [ :pointer, :pointer ], :void ],
        [ :glRectf, [ :float, :float, :float, :float ], :void ],
        [ :glRectfv, [ :pointer, :pointer ], :void ],
        [ :glRecti, [ :int, :int, :int, :int ], :void ],
        [ :glRectiv, [ :pointer, :pointer ], :void ],
        [ :glRects, [ :short, :short, :short, :short ], :void ],
        [ :glRectsv, [ :pointer, :pointer ], :void ],
        [ :glRenderMode, [ :uint ], :int ],
        [ :glRotated, [ :double, :double, :double, :double ], :void ],
        [ :glRotatef, [ :float, :float, :float, :float ], :void ],
        [ :glScaled, [ :double, :double, :double ], :void ],
        [ :glScalef, [ :float, :float, :float ], :void ],
        [ :glSelectBuffer, [ :int, :pointer ], :void ],
        [ :glShadeModel, [ :uint ], :void ],
        [ :glTexCoord1d, [ :double ], :void ],
        [ :glTexCoord1dv, [ :pointer ], :void ],
        [ :glTexCoord1f, [ :float ], :void ],
        [ :glTexCoord1fv, [ :pointer ], :void ],
        [ :glTexCoord1i, [ :int ], :void ],
        [ :glTexCoord1iv, [ :pointer ], :void ],
        [ :glTexCoord1s, [ :short ], :void ],
        [ :glTexCoord1sv, [ :pointer ], :void ],
        [ :glTexCoord2d, [ :double, :double ], :void ],
        [ :glTexCoord2dv, [ :pointer ], :void ],
        [ :glTexCoord2f, [ :float, :float ], :void ],
        [ :glTexCoord2fv, [ :pointer ], :void ],
        [ :glTexCoord2i, [ :int, :int ], :void ],
        [ :glTexCoord2iv, [ :pointer ], :void ],
        [ :glTexCoord2s, [ :short, :short ], :void ],
        [ :glTexCoord2sv, [ :pointer ], :void ],
        [ :glTexCoord3d, [ :double, :double, :double ], :void ],
        [ :glTexCoord3dv, [ :pointer ], :void ],
        [ :glTexCoord3f, [ :float, :float, :float ], :void ],
        [ :glTexCoord3fv, [ :pointer ], :void ],
        [ :glTexCoord3i, [ :int, :int, :int ], :void ],
        [ :glTexCoord3iv, [ :pointer ], :void ],
        [ :glTexCoord3s, [ :short, :short, :short ], :void ],
        [ :glTexCoord3sv, [ :pointer ], :void ],
        [ :glTexCoord4d, [ :double, :double, :double, :double ], :void ],
        [ :glTexCoord4dv, [ :pointer ], :void ],
        [ :glTexCoord4f, [ :float, :float, :float, :float ], :void ],
        [ :glTexCoord4fv, [ :pointer ], :void ],
        [ :glTexCoord4i, [ :int, :int, :int, :int ], :void ],
        [ :glTexCoord4iv, [ :pointer ], :void ],
        [ :glTexCoord4s, [ :short, :short, :short, :short ], :void ],
        [ :glTexCoord4sv, [ :pointer ], :void ],
        [ :glTexEnvf, [ :uint, :uint, :float ], :void ],
        [ :glTexEnvfv, [ :uint, :uint, :pointer ], :void ],
        [ :glTexEnvi, [ :uint, :uint, :int ], :void ],
        [ :glTexEnviv, [ :uint, :uint, :pointer ], :void ],
        [ :glTexGend, [ :uint, :uint, :double ], :void ],
        [ :glTexGendv, [ :uint, :uint, :pointer ], :void ],
        [ :glTexGenf, [ :uint, :uint, :float ], :void ],
        [ :glTexGenfv, [ :uint, :uint, :pointer ], :void ],
        [ :glTexGeni, [ :uint, :uint, :int ], :void ],
        [ :glTexGeniv, [ :uint, :uint, :pointer ], :void ],
        [ :glTranslated, [ :double, :double, :double ], :void ],
        [ :glTranslatef, [ :float, :float, :float ], :void ],
        [ :glVertex2d, [ :double, :double ], :void ],
        [ :glVertex2dv, [ :pointer ], :void ],
        [ :glVertex2f, [ :float, :float ], :void ],
        [ :glVertex2fv, [ :pointer ], :void ],
        [ :glVertex2i, [ :int, :int ], :void ],
        [ :glVertex2iv, [ :pointer ], :void ],
        [ :glVertex2s, [ :short, :short ], :void ],
        [ :glVertex2sv, [ :pointer ], :void ],
        [ :glVertex3d, [ :double, :double, :double ], :void ],
        [ :glVertex3dv, [ :pointer ], :void ],
        [ :glVertex3f, [ :float, :float, :float ], :void ],
        [ :glVertex3fv, [ :pointer ], :void ],
        [ :glVertex3i, [ :int, :int, :int ], :void ],
        [ :glVertex3iv, [ :pointer ], :void ],
        [ :glVertex3s, [ :short, :short, :short ], :void ],
        [ :glVertex3sv, [ :pointer ], :void ],
        [ :glVertex4d, [ :double, :double, :double, :double ], :void ],
        [ :glVertex4dv, [ :pointer ], :void ],
        [ :glVertex4f, [ :float, :float, :float, :float ], :void ],
        [ :glVertex4fv, [ :pointer ], :void ],
        [ :glVertex4i, [ :int, :int, :int, :int ], :void ],
        [ :glVertex4iv, [ :pointer ], :void ],
        [ :glVertex4s, [ :short, :short, :short, :short ], :void ],
        [ :glVertex4sv, [ :pointer ], :void ]
    ]
  end

  module RenderContext
    include Roglew::RenderContextExtension

    checks_current
    def begin(mode)
      @rh.glBegin(mode)
      return unless block_given?
      yield
      @rh.glEnd
    end

    %w'
      points
      lines
      line_strip
      line_loop
      triangles
      triangle_strip
      triangle_fan
      quads
      quad_strip
      polygon'.
    each do |v|
      class_eval("def #{v}(&block) self.begin(GL::#{v.upcase}, &block) end")
    end
  end
end