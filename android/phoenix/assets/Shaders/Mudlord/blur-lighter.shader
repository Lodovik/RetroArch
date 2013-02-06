<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     vec4 _col;
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct output_dummy {
    vec4 _col;
};
vec4 _oPosition1;
uniform mat4 rubyMVPMatrix;
vec4 _r0003;
attribute vec4 rubyVertexCoord;
attribute vec4 rubyTexCoord;
varying vec4 TEX0;
 

         mat4 transpose_(mat4 matrix)
         {
            mat4 ret;
            for (int i = 0; i < 4; i++)
               for (int j = 0; j < 4; j++)
                  ret[i][j] = matrix[j][i];

            return ret;
         }
         
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    mat4 rubyMVPMatrix_ = transpose_(rubyMVPMatrix);
    vec2 _otexCoord;
    _r0003.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0003.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0003.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0003.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0003;
    _otexCoord = rubyTexCoord.xy;
    gl_Position = _r0003;
    TEX0.xy = rubyTexCoord.xy;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     vec4 _col;
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct output_dummy {
    vec4 _col;
};
vec4 _TMP1;
uniform sampler2D rubyTexture;
vec2 _c0008;
varying vec4 TEX0;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec4 _color;
    output_dummy _OUT;
    _color = texture2D(rubyTexture, TEX0.xy);
    _c0008 = TEX0.xy + vec2( -3.26212001E-04, -4.05805011E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( -8.40143999E-04, -7.35799986E-05);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( -6.95914030E-04, 4.57137008E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( -2.03345015E-04, 6.20716019E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 9.62340040E-04, -1.94983018E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 4.73434018E-04, -4.80026036E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 5.19456051E-04, 7.67022022E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 1.85461002E-04, -8.93124030E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 5.07430988E-04, 6.44250031E-05);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( 8.96420039E-04, 4.12458030E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( -3.21940024E-04, -9.32615018E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _c0008 = TEX0.xy + vec2( -7.91558996E-04, -5.97705017E-04);
    _TMP1 = texture2D(rubyTexture, _c0008);
    _color = _color + _TMP1;
    _OUT._col = _color/1.30000000E+01;
    gl_FragColor = _OUT._col;
    return;
} 
 ]]></fragment>
</shader>