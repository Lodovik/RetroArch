<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     vec2 _DR;
varying     vec2 _DL;
varying     vec2 _UR;
varying     vec2 _UL;
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
varying     vec4 _color;
struct output_dummy {
    vec4 _color;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct deltas {
    vec2 _UL;
    vec2 _UR;
    vec2 _DL;
    vec2 _DR;
};
vec4 _oPosition1;
uniform mat4 rubyMVPMatrix;
vec4 _r0002;
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
    _r0002.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0002.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0002.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0002.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0002;
    _otexCoord = rubyTexCoord.xy;
    gl_Position = _r0002;
    TEX0.xy = rubyTexCoord.xy;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     vec2 _DR;
varying     vec2 _DL;
varying     vec2 _UR;
varying     vec2 _UL;
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
varying     vec4 _color;
struct output_dummy {
    vec4 _color;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct deltas {
    vec2 _UL;
    vec2 _UR;
    vec2 _DL;
    vec2 _DR;
};
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D rubyTexture;
vec2 _c0013;
vec2 _c0015;
vec2 _c0017;
vec2 _c0019;
vec2 _c0023;
vec2 _c0025;
vec2 _c0027;
vec2 _c0029;
float _x0031;
float _x0033;
vec3 _poly0035[3];
float _x0035;
vec3 _poly0037[3];
float _x0037;
vec3 _poly0039[3];
float _x0039;
vec3 _poly0041[3];
float _x0041;
varying vec4 TEX0;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    float _frac_amt_x;
    float _frac_amt_y;
    vec3 _loval;
    vec3 _midval;
    vec3 _hival;
    vec3 _res;
    output_dummy _OUT;
    _c0013 = TEX0.xy + vec2( -9.71703965E-04, -1.11051882E-03);
    _TMP0 = texture2D(rubyTexture, _c0013);
    _c0015 = TEX0.xy + vec2( -9.71703965E-04, 0.00000000E+00);
    _TMP1 = texture2D(rubyTexture, _c0015);
    _c0017 = TEX0.xy + vec2( -9.71703965E-04, 1.11051882E-03);
    _TMP2 = texture2D(rubyTexture, _c0017);
    _c0019 = TEX0.xy + vec2( 0.00000000E+00, -1.11051882E-03);
    _TMP3 = texture2D(rubyTexture, _c0019);
    _TMP4 = texture2D(rubyTexture, TEX0.xy);
    _c0023 = TEX0.xy + vec2( 0.00000000E+00, 1.11051882E-03);
    _TMP5 = texture2D(rubyTexture, _c0023);
    _c0025 = TEX0.xy + vec2( 9.71703965E-04, -1.11051882E-03);
    _TMP6 = texture2D(rubyTexture, _c0025);
    _c0027 = TEX0.xy + vec2( 9.71703965E-04, 0.00000000E+00);
    _TMP7 = texture2D(rubyTexture, _c0027);
    _c0029 = TEX0.xy + vec2( 9.71703965E-04, 1.11051882E-03);
    _TMP8 = texture2D(rubyTexture, _c0029);
    _x0031 = TEX0.x*5.12000000E+02;
    _frac_amt_x = fract(_x0031);
    _x0033 = TEX0.y*4.48000000E+02;
    _frac_amt_y = fract(_x0033);
    _x0035 = _frac_amt_x + 5.00000000E-01;
    _poly0035[2] = (5.00000000E-01*_TMP0.xyz - _TMP3.xyz) + 5.00000000E-01*_TMP6.xyz;
    _poly0035[1] = (-1.50000000E+00*_TMP0.xyz + 2.00000000E+00*_TMP3.xyz) - 5.00000000E-01*_TMP6.xyz;
    _loval = _poly0035[2]*_x0035*_x0035 + _poly0035[1]*_x0035 + _TMP0.xyz;
    _x0037 = _frac_amt_x + 5.00000000E-01;
    _poly0037[2] = (5.00000000E-01*_TMP1.xyz - _TMP4.xyz) + 5.00000000E-01*_TMP7.xyz;
    _poly0037[1] = (-1.50000000E+00*_TMP1.xyz + 2.00000000E+00*_TMP4.xyz) - 5.00000000E-01*_TMP7.xyz;
    _midval = _poly0037[2]*_x0037*_x0037 + _poly0037[1]*_x0037 + _TMP1.xyz;
    _x0039 = _frac_amt_x + 5.00000000E-01;
    _poly0039[2] = (5.00000000E-01*_TMP2.xyz - _TMP5.xyz) + 5.00000000E-01*_TMP8.xyz;
    _poly0039[1] = (-1.50000000E+00*_TMP2.xyz + 2.00000000E+00*_TMP5.xyz) - 5.00000000E-01*_TMP8.xyz;
    _hival = _poly0039[2]*_x0039*_x0039 + _poly0039[1]*_x0039 + _TMP2.xyz;
    _x0041 = _frac_amt_y + 5.00000000E-01;
    _poly0041[2] = (5.00000000E-01*_loval - _midval) + 5.00000000E-01*_hival;
    _poly0041[1] = (-1.50000000E+00*_loval + 2.00000000E+00*_midval) - 5.00000000E-01*_hival;
    _res = _poly0041[2]*_x0041*_x0041 + _poly0041[1]*_x0041 + _loval;
    _OUT._color = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    gl_FragColor = _OUT._color;
    return;
} 
 ]]></fragment>
</shader>