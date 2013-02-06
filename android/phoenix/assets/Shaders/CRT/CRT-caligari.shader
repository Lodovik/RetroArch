<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
varying     vec2 _oney;
varying     vec2 _onex;
varying     vec2 _texCoord;
struct tex_coords {
    vec2 _texCoord;
    vec2 _onex;
    vec2 _oney;
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
uniform input_dummy _IN1;
vec4 _r0003;
attribute vec4 rubyVertexCoord;
attribute vec4 COLOR;
varying vec4 COL0;
attribute vec4 rubyTexCoord;
varying vec4 TEX1;
varying vec4 TEX2;
varying vec4 TEX3;
 

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
    vec4 _oColor;
    tex_coords _coords;
    _r0003.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0003.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0003.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0003.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0003;
    _oColor = COLOR;
    _coords._texCoord = rubyTexCoord.xy;
    _coords._onex = vec2(1.00000000E+00/rubyTextureSize.x, 0.00000000E+00);
    _coords._oney = vec2(0.00000000E+00, 1.00000000E+00/rubyTextureSize.y);
    gl_Position = _r0003;
    COL0 = COLOR;
    TEX1.xy = rubyTexCoord.xy;
    TEX2.xy = _coords._onex;
    TEX3.xy = _coords._oney;
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
varying     vec2 _oney;
varying     vec2 _onex;
varying     vec2 _texCoord;
struct tex_coords {
    vec2 _texCoord;
    vec2 _onex;
    vec2 _oney;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _TMP5;
vec4 _TMP10;
float _TMP9;
float _TMP8;
float _TMP7;
float _TMP6;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec2 _TMP0;
uniform input_dummy _IN1;
uniform sampler2D rubyTexture;
vec2 _c0028;
vec2 _c0040;
vec2 _c0052;
vec4 _TMP73;
varying vec4 TEX1;
varying vec4 TEX2;
varying vec4 TEX3;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec2 _coords;
    vec2 _pixel_center;
    vec2 _texture_coords;
    vec4 _color;
    float _dx;
    float _h_weight_00;
    vec2 _coords01;
    vec4 _colorNB;
    float _h_weight_01;
    float _dy;
    float _v_weight_00;
    vec2 _coords10;
    float _v_weight_10;
    _coords = TEX1.xy*rubyTextureSize;
    _TMP0 = floor(_coords);
    _pixel_center = _TMP0 + vec2( 5.00000000E-01, 5.00000000E-01);
    _texture_coords = _pixel_center/rubyTextureSize;
    _TMP1 = texture2D(rubyTexture, _texture_coords);
    _TMP6 = pow(_TMP1.x, 2.40000010E+00);
    _TMP7 = pow(_TMP1.y, 2.40000010E+00);
    _TMP8 = pow(_TMP1.z, 2.40000010E+00);
    _TMP9 = pow(_TMP1.w, 2.40000010E+00);
    _color = vec4(_TMP6, _TMP7, _TMP8, _TMP9);
    _dx = _coords.x - _pixel_center.x;
    _h_weight_00 = _dx/8.99999976E-01;
    if (_h_weight_00 > 1.00000000E+00) { 
        _h_weight_00 = 1.00000000E+00;
    } 
    _h_weight_00 = 1.00000000E+00 - _h_weight_00*_h_weight_00;
    _h_weight_00 = _h_weight_00*_h_weight_00;
    _color = _color*vec4(_h_weight_00, _h_weight_00, _h_weight_00, _h_weight_00);
    if (_dx > 0.00000000E+00) { 
        _coords01 = TEX2.xy;
        _dx = 1.00000000E+00 - _dx;
    } else {
        _coords01 = -TEX2.xy;
        _dx = 1.00000000E+00 + _dx;
    } 
    _c0028 = _texture_coords + _coords01;
    _TMP2 = texture2D(rubyTexture, _c0028);
    _TMP6 = pow(_TMP2.x, 2.40000010E+00);
    _TMP7 = pow(_TMP2.y, 2.40000010E+00);
    _TMP8 = pow(_TMP2.z, 2.40000010E+00);
    _TMP9 = pow(_TMP2.w, 2.40000010E+00);
    _colorNB = vec4(_TMP6, _TMP7, _TMP8, _TMP9);
    _h_weight_01 = _dx/8.99999976E-01;
    if (_h_weight_01 > 1.00000000E+00) { 
        _h_weight_01 = 1.00000000E+00;
    } 
    _h_weight_01 = 1.00000000E+00 - _h_weight_01*_h_weight_01;
    _h_weight_01 = _h_weight_01*_h_weight_01;
    _color = _color + _colorNB*vec4(_h_weight_01, _h_weight_01, _h_weight_01, _h_weight_01);
    _dy = _coords.y - _pixel_center.y;
    _v_weight_00 = _dy/6.49999976E-01;
    if (_v_weight_00 > 1.00000000E+00) { 
        _v_weight_00 = 1.00000000E+00;
    } 
    _v_weight_00 = 1.00000000E+00 - _v_weight_00*_v_weight_00;
    _v_weight_00 = _v_weight_00*_v_weight_00;
    _color = _color*vec4(_v_weight_00, _v_weight_00, _v_weight_00, _v_weight_00);
    if (_dy > 0.00000000E+00) { 
        _coords10 = TEX3.xy;
        _dy = 1.00000000E+00 - _dy;
    } else {
        _coords10 = -TEX3.xy;
        _dy = 1.00000000E+00 + _dy;
    } 
    _c0040 = _texture_coords + _coords10;
    _TMP3 = texture2D(rubyTexture, _c0040);
    _TMP6 = pow(_TMP3.x, 2.40000010E+00);
    _TMP7 = pow(_TMP3.y, 2.40000010E+00);
    _TMP8 = pow(_TMP3.z, 2.40000010E+00);
    _TMP9 = pow(_TMP3.w, 2.40000010E+00);
    _colorNB = vec4(_TMP6, _TMP7, _TMP8, _TMP9);
    _v_weight_10 = _dy/6.49999976E-01;
    if (_v_weight_10 > 1.00000000E+00) { 
        _v_weight_10 = 1.00000000E+00;
    } 
    _v_weight_10 = 1.00000000E+00 - _v_weight_10*_v_weight_10;
    _v_weight_10 = _v_weight_10*_v_weight_10;
    _color = _color + _colorNB*vec4(_v_weight_10*_h_weight_00, _v_weight_10*_h_weight_00, _v_weight_10*_h_weight_00, _v_weight_10*_h_weight_00);
    _c0052 = _texture_coords + _coords01 + _coords10;
    _TMP4 = texture2D(rubyTexture, _c0052);
    _TMP6 = pow(_TMP4.x, 2.40000010E+00);
    _TMP7 = pow(_TMP4.y, 2.40000010E+00);
    _TMP8 = pow(_TMP4.z, 2.40000010E+00);
    _TMP9 = pow(_TMP4.w, 2.40000010E+00);
    _colorNB = vec4(_TMP6, _TMP7, _TMP8, _TMP9);
    _color = _color + _colorNB*vec4(_v_weight_10*_h_weight_01, _v_weight_10*_h_weight_01, _v_weight_10*_h_weight_01, _v_weight_10*_h_weight_01);
    _color = _color*vec4( 1.45000005E+00, 1.45000005E+00, 1.45000005E+00, 1.45000005E+00);
    _TMP6 = pow(_color.x, 4.54545438E-01);
    _TMP7 = pow(_color.y, 4.54545438E-01);
    _TMP8 = pow(_color.z, 4.54545438E-01);
    _TMP9 = pow(_color.w, 4.54545438E-01);
    _TMP5 = vec4(_TMP6, _TMP7, _TMP8, _TMP9);
    _TMP10 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _TMP5);
    _TMP73 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP10);
    gl_FragColor = _TMP73;
    return;
} 
 ]]></fragment>
</shader>