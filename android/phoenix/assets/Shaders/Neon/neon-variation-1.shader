<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
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
vec3 _TMP15;
vec3 _TMP14;
float _TMP13;
float _TMP12;
float _TMP11;
float _TMP10;
float _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform input_dummy _IN1;
uniform sampler2D rubyTexture;
vec2 _c0020;
vec2 _c0022;
vec2 _c0024;
vec2 _c0026;
vec2 _c0030;
vec2 _c0032;
vec2 _c0034;
vec2 _c0036;
float _x0038;
float _x0042;
float _x0046;
float _x0050;
float _x0054;
vec3 _a0060;
varying vec4 TEX0;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec2 _delta;
    output_dummy _OUT;
    vec3 _first;
    vec3 _second;
    vec3 _mid_horiz;
    vec3 _mid_vert;
    vec3 _res;
    vec3 _TMP18;
    _delta = 5.00000000E-01/rubyTextureSize;
    _c0020 = TEX0.xy + vec2(-_delta.x, -_delta.y);
    _TMP0 = texture2D(rubyTexture, _c0020);
    _c0022 = TEX0.xy + vec2(-_delta.x, 0.00000000E+00);
    _TMP1 = texture2D(rubyTexture, _c0022);
    _c0024 = TEX0.xy + vec2(-_delta.x, _delta.y);
    _TMP2 = texture2D(rubyTexture, _c0024);
    _c0026 = TEX0.xy + vec2(0.00000000E+00, -_delta.y);
    _TMP3 = texture2D(rubyTexture, _c0026);
    _c0030 = TEX0.xy + vec2(0.00000000E+00, _delta.y);
    _TMP5 = texture2D(rubyTexture, _c0030);
    _c0032 = TEX0.xy + vec2(_delta.x, -_delta.y);
    _TMP6 = texture2D(rubyTexture, _c0032);
    _c0034 = TEX0.xy + vec2(_delta.x, 0.00000000E+00);
    _TMP7 = texture2D(rubyTexture, _c0034);
    _c0036 = TEX0.xy + vec2(_delta.x, _delta.y);
    _TMP8 = texture2D(rubyTexture, _c0036);
    _x0038 = TEX0.x*rubyTextureSize.x + 5.00000000E-01;
    _TMP9 = fract(_x0038);
    _first = _TMP0.xyz + _TMP9*(_TMP6.xyz - _TMP0.xyz);
    _x0042 = TEX0.x*rubyTextureSize.x + 5.00000000E-01;
    _TMP10 = fract(_x0042);
    _second = _TMP2.xyz + _TMP10*(_TMP8.xyz - _TMP2.xyz);
    _x0046 = TEX0.x*rubyTextureSize.x + 5.00000000E-01;
    _TMP11 = fract(_x0046);
    _mid_horiz = _TMP1.xyz + _TMP11*(_TMP7.xyz - _TMP1.xyz);
    _x0050 = TEX0.y*rubyTextureSize.y + 5.00000000E-01;
    _TMP12 = fract(_x0050);
    _mid_vert = _TMP3.xyz + _TMP12*(_TMP5.xyz - _TMP3.xyz);
    _x0054 = TEX0.y*rubyTextureSize.y + 5.00000000E-01;
    _TMP13 = fract(_x0054);
    _res = _first + _TMP13*(_second - _first);
    _TMP14 = _mid_horiz + 5.00000000E-01*(_mid_vert - _mid_horiz);
    _a0060 = _res - _TMP14;
    _TMP15 = abs(_a0060);
    _TMP18 = 2.80000001E-01*(_res + _mid_horiz + _mid_vert) + 4.69999981E+00*_TMP15;
    _OUT._color = vec4(_TMP18.x, _TMP18.y, _TMP18.z, 1.00000000E+00);
    gl_FragColor = _OUT._color;
    return;
} 
 ]]></fragment>
</shader>