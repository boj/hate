module GL
  GL_VERTEX_SHADER = 0x8B31
  GL_FRAGMENT_SHADER = 0x8B30
  
  # GL_VERSION_2_0
  attach_function :glBlendEquationSeparate, [ :uint, :uint ], :void
  attach_function :glDrawBuffers, [ :int, :pointer ], :void
  attach_function :glStencilOpSeparate, [ :uint, :uint, :uint, :uint ], :void
  attach_function :glStencilFuncSeparate, [ :uint, :uint, :int, :uint ], :void
  attach_function :glStencilMaskSeparate, [ :uint, :uint ], :void
  attach_function :glAttachShader, [ :uint, :uint ], :void
  attach_function :glBindAttribLocation, [ :uint, :uint, :string ], :void
  attach_function :glCompileShader, [ :uint ], :void
  attach_function :glCreateProgram, [  ], :uint
  attach_function :glCreateShader, [ :uint ], :uint
  attach_function :glDeleteProgram, [ :uint ], :void
  attach_function :glDeleteShader, [ :uint ], :void
  attach_function :glDetachShader, [ :uint, :uint ], :void
  attach_function :glDisableVertexAttribArray, [ :uint ], :void
  attach_function :glEnableVertexAttribArray, [ :uint ], :void
  attach_function :glGetActiveAttrib, [ :uint, :uint, :int, :pointer, :pointer, :pointer, :string ], :void
  attach_function :glGetActiveUniform, [ :uint, :uint, :int, :pointer, :pointer, :pointer, :string ], :void
  attach_function :glGetAttachedShaders, [ :uint, :int, :pointer, :pointer ], :void
  attach_function :glGetAttribLocation, [ :uint, :string ], :int
  attach_function :glGetProgramiv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetProgramInfoLog, [ :uint, :int, :pointer, :string ], :void
  attach_function :glGetShaderiv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetShaderInfoLog, [ :uint, :int, :pointer, :string ], :void
  attach_function :glGetShaderSource, [ :uint, :int, :pointer, :string ], :void
  attach_function :glGetUniformLocation, [ :uint, :string ], :int
  attach_function :glGetUniformfv, [ :uint, :int, :pointer ], :void
  attach_function :glGetUniformiv, [ :uint, :int, :pointer ], :void
  attach_function :glGetVertexAttribdv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetVertexAttribfv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetVertexAttribiv, [ :uint, :uint, :pointer ], :void
  attach_function :glGetVertexAttribPointerv, [ :uint, :uint, :pointer ], :void
  attach_function :glIsProgram, [ :uint ], :uchar
  attach_function :glIsShader, [ :uint ], :uchar
  attach_function :glLinkProgram, [ :uint ], :void
  attach_function :glShaderSource, [ :uint, :int, :pointer, :pointer ], :void
  attach_function :glUseProgram, [ :uint ], :void
  attach_function :glUniform1f, [ :int, :float ], :void
  attach_function :glUniform2f, [ :int, :float, :float ], :void
  attach_function :glUniform3f, [ :int, :float, :float, :float ], :void
  attach_function :glUniform4f, [ :int, :float, :float, :float, :float ], :void
  attach_function :glUniform1i, [ :int, :int ], :void
  attach_function :glUniform2i, [ :int, :int, :int ], :void
  attach_function :glUniform3i, [ :int, :int, :int, :int ], :void
  attach_function :glUniform4i, [ :int, :int, :int, :int, :int ], :void
  attach_function :glUniform1fv, [ :int, :int, :pointer ], :void
  attach_function :glUniform2fv, [ :int, :int, :pointer ], :void
  attach_function :glUniform3fv, [ :int, :int, :pointer ], :void
  attach_function :glUniform4fv, [ :int, :int, :pointer ], :void
  attach_function :glUniform1iv, [ :int, :int, :pointer ], :void
  attach_function :glUniform2iv, [ :int, :int, :pointer ], :void
  attach_function :glUniform3iv, [ :int, :int, :pointer ], :void
  attach_function :glUniform4iv, [ :int, :int, :pointer ], :void
  attach_function :glUniformMatrix2fv, [ :int, :int, :uchar, :pointer ], :void
  attach_function :glUniformMatrix3fv, [ :int, :int, :uchar, :pointer ], :void
  attach_function :glUniformMatrix4fv, [ :int, :int, :uchar, :pointer ], :void
  attach_function :glValidateProgram, [ :uint ], :void
  attach_function :glVertexAttrib1d, [ :uint, :double ], :void
  attach_function :glVertexAttrib1dv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib1f, [ :uint, :float ], :void
  attach_function :glVertexAttrib1fv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib1s, [ :uint, :short ], :void
  attach_function :glVertexAttrib1sv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib2d, [ :uint, :double, :double ], :void
  attach_function :glVertexAttrib2dv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib2f, [ :uint, :float, :float ], :void
  attach_function :glVertexAttrib2fv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib2s, [ :uint, :short, :short ], :void
  attach_function :glVertexAttrib2sv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib3d, [ :uint, :double, :double, :double ], :void
  attach_function :glVertexAttrib3dv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib3f, [ :uint, :float, :float, :float ], :void
  attach_function :glVertexAttrib3fv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib3s, [ :uint, :short, :short, :short ], :void
  attach_function :glVertexAttrib3sv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4Nbv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4Niv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4Nsv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4Nub, [ :uint, :uchar, :uchar, :uchar, :uchar ], :void
  attach_function :glVertexAttrib4Nubv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4Nuiv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4Nusv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4bv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4d, [ :uint, :double, :double, :double, :double ], :void
  attach_function :glVertexAttrib4dv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4f, [ :uint, :float, :float, :float, :float ], :void
  attach_function :glVertexAttrib4fv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4iv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4s, [ :uint, :short, :short, :short, :short ], :void
  attach_function :glVertexAttrib4sv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4ubv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4uiv, [ :uint, :pointer ], :void
  attach_function :glVertexAttrib4usv, [ :uint, :pointer ], :void
  attach_function :glVertexAttribPointer, [ :uint, :int, :uint, :uchar, :int, :pointer ], :void
  callback(:PFNGLBLENDEQUATIONSEPARATEPROC, [ :uint, :uint ], :void)
  callback(:PFNGLDRAWBUFFERSPROC, [ :int, :pointer ], :void)
  callback(:PFNGLSTENCILOPSEPARATEPROC, [ :uint, :uint, :uint, :uint ], :void)
  callback(:PFNGLSTENCILFUNCSEPARATEPROC, [ :uint, :uint, :int, :uint ], :void)
  callback(:PFNGLSTENCILMASKSEPARATEPROC, [ :uint, :uint ], :void)
  callback(:PFNGLATTACHSHADERPROC, [ :uint, :uint ], :void)
  callback(:PFNGLBINDATTRIBLOCATIONPROC, [ :uint, :uint, :string ], :void)
  callback(:PFNGLCOMPILESHADERPROC, [ :uint ], :void)
  callback(:PFNGLCREATEPROGRAMPROC, [  ], :uint)
  callback(:PFNGLCREATESHADERPROC, [ :uint ], :uint)
  callback(:PFNGLDELETEPROGRAMPROC, [ :uint ], :void)
  callback(:PFNGLDELETESHADERPROC, [ :uint ], :void)
  callback(:PFNGLDETACHSHADERPROC, [ :uint, :uint ], :void)
  callback(:PFNGLDISABLEVERTEXATTRIBARRAYPROC, [ :uint ], :void)
  callback(:PFNGLENABLEVERTEXATTRIBARRAYPROC, [ :uint ], :void)
  callback(:PFNGLGETACTIVEATTRIBPROC, [ :uint, :uint, :int, :pointer, :pointer, :pointer, :string ], :void)
  callback(:PFNGLGETACTIVEUNIFORMPROC, [ :uint, :uint, :int, :pointer, :pointer, :pointer, :string ], :void)
  callback(:PFNGLGETATTACHEDSHADERSPROC, [ :uint, :int, :pointer, :pointer ], :void)
  callback(:PFNGLGETATTRIBLOCATIONPROC, [ :uint, :string ], :int)
  callback(:PFNGLGETPROGRAMIVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETPROGRAMINFOLOGPROC, [ :uint, :int, :pointer, :string ], :void)
  callback(:PFNGLGETSHADERIVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETSHADERINFOLOGPROC, [ :uint, :int, :pointer, :string ], :void)
  callback(:PFNGLGETSHADERSOURCEPROC, [ :uint, :int, :pointer, :string ], :void)
  callback(:PFNGLGETUNIFORMLOCATIONPROC, [ :uint, :string ], :int)
  callback(:PFNGLGETUNIFORMFVPROC, [ :uint, :int, :pointer ], :void)
  callback(:PFNGLGETUNIFORMIVPROC, [ :uint, :int, :pointer ], :void)
  callback(:PFNGLGETVERTEXATTRIBDVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETVERTEXATTRIBFVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETVERTEXATTRIBIVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLGETVERTEXATTRIBPOINTERVPROC, [ :uint, :uint, :pointer ], :void)
  callback(:PFNGLISPROGRAMPROC, [ :uint ], :uchar)
  callback(:PFNGLISSHADERPROC, [ :uint ], :uchar)
  callback(:PFNGLLINKPROGRAMPROC, [ :uint ], :void)
  callback(:PFNGLSHADERSOURCEPROC, [ :uint, :int, :pointer, :pointer ], :void)
  callback(:PFNGLUSEPROGRAMPROC, [ :uint ], :void)
  callback(:PFNGLUNIFORM1FPROC, [ :int, :float ], :void)
  callback(:PFNGLUNIFORM2FPROC, [ :int, :float, :float ], :void)
  callback(:PFNGLUNIFORM3FPROC, [ :int, :float, :float, :float ], :void)
  callback(:PFNGLUNIFORM4FPROC, [ :int, :float, :float, :float, :float ], :void)
  callback(:PFNGLUNIFORM1IPROC, [ :int, :int ], :void)
  callback(:PFNGLUNIFORM2IPROC, [ :int, :int, :int ], :void)
  callback(:PFNGLUNIFORM3IPROC, [ :int, :int, :int, :int ], :void)
  callback(:PFNGLUNIFORM4IPROC, [ :int, :int, :int, :int, :int ], :void)
  callback(:PFNGLUNIFORM1FVPROC, [ :int, :int, :pointer ], :void)
  callback(:PFNGLUNIFORM2FVPROC, [ :int, :int, :pointer ], :void)
  callback(:PFNGLUNIFORM3FVPROC, [ :int, :int, :pointer ], :void)
  callback(:PFNGLUNIFORM4FVPROC, [ :int, :int, :pointer ], :void)
  callback(:PFNGLUNIFORM1IVPROC, [ :int, :int, :pointer ], :void)
  callback(:PFNGLUNIFORM2IVPROC, [ :int, :int, :pointer ], :void)
  callback(:PFNGLUNIFORM3IVPROC, [ :int, :int, :pointer ], :void)
  callback(:PFNGLUNIFORM4IVPROC, [ :int, :int, :pointer ], :void)
  callback(:PFNGLUNIFORMMATRIX2FVPROC, [ :int, :int, :uchar, :pointer ], :void)
  callback(:PFNGLUNIFORMMATRIX3FVPROC, [ :int, :int, :uchar, :pointer ], :void)
  callback(:PFNGLUNIFORMMATRIX4FVPROC, [ :int, :int, :uchar, :pointer ], :void)
  callback(:PFNGLVALIDATEPROGRAMPROC, [ :uint ], :void)
  callback(:PFNGLVERTEXATTRIB1DPROC, [ :uint, :double ], :void)
  callback(:PFNGLVERTEXATTRIB1DVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB1FPROC, [ :uint, :float ], :void)
  callback(:PFNGLVERTEXATTRIB1FVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB1SPROC, [ :uint, :short ], :void)
  callback(:PFNGLVERTEXATTRIB1SVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB2DPROC, [ :uint, :double, :double ], :void)
  callback(:PFNGLVERTEXATTRIB2DVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB2FPROC, [ :uint, :float, :float ], :void)
  callback(:PFNGLVERTEXATTRIB2FVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB2SPROC, [ :uint, :short, :short ], :void)
  callback(:PFNGLVERTEXATTRIB2SVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB3DPROC, [ :uint, :double, :double, :double ], :void)
  callback(:PFNGLVERTEXATTRIB3DVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB3FPROC, [ :uint, :float, :float, :float ], :void)
  callback(:PFNGLVERTEXATTRIB3FVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB3SPROC, [ :uint, :short, :short, :short ], :void)
  callback(:PFNGLVERTEXATTRIB3SVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4NBVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4NIVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4NSVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4NUBPROC, [ :uint, :uchar, :uchar, :uchar, :uchar ], :void)
  callback(:PFNGLVERTEXATTRIB4NUBVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4NUIVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4NUSVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4BVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4DPROC, [ :uint, :double, :double, :double, :double ], :void)
  callback(:PFNGLVERTEXATTRIB4DVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4FPROC, [ :uint, :float, :float, :float, :float ], :void)
  callback(:PFNGLVERTEXATTRIB4FVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4IVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4SPROC, [ :uint, :short, :short, :short, :short ], :void)
  callback(:PFNGLVERTEXATTRIB4SVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4UBVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4UIVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIB4USVPROC, [ :uint, :pointer ], :void)
  callback(:PFNGLVERTEXATTRIBPOINTERPROC, [ :uint, :int, :uint, :uchar, :int, :pointer ], :void)
  
  # GL_VERSION_2_1
  attach_function :glUniformMatrix2x3fv, [ :int, :int, :uchar, :pointer ], :void
  attach_function :glUniformMatrix3x2fv, [ :int, :int, :uchar, :pointer ], :void
  attach_function :glUniformMatrix2x4fv, [ :int, :int, :uchar, :pointer ], :void
  attach_function :glUniformMatrix4x2fv, [ :int, :int, :uchar, :pointer ], :void
  attach_function :glUniformMatrix3x4fv, [ :int, :int, :uchar, :pointer ], :void
  attach_function :glUniformMatrix4x3fv, [ :int, :int, :uchar, :pointer ], :void
  callback(:PFNGLUNIFORMMATRIX2X3FVPROC, [ :int, :int, :uchar, :pointer ], :void)
  callback(:PFNGLUNIFORMMATRIX3X2FVPROC, [ :int, :int, :uchar, :pointer ], :void)
  callback(:PFNGLUNIFORMMATRIX2X4FVPROC, [ :int, :int, :uchar, :pointer ], :void)
  callback(:PFNGLUNIFORMMATRIX4X2FVPROC, [ :int, :int, :uchar, :pointer ], :void)
  callback(:PFNGLUNIFORMMATRIX3X4FVPROC, [ :int, :int, :uchar, :pointer ], :void)
  callback(:PFNGLUNIFORMMATRIX4X3FVPROC, [ :int, :int, :uchar, :pointer ], :void)
end
