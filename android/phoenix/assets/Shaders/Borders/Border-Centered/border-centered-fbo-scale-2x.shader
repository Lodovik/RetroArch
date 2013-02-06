<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
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
vec4 _oPosition1;
uniform mat4 rubyMVPMatrix;
uniform input_dummy _IN1;
vec4 _r0005;
attribute vec4 rubyVertexCoord;
attribute vec4 COLOR;
varying vec4 COL0;
attribute vec4 rubyTexCoord;
varying vec4 TEX0;
attribute vec4 rubyTexCoord1;
varying vec4 TEX1;
 

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
    vec2 _oTex;
    vec2 _otex_border;
    vec2 _scale;
    vec2 _middle;
    vec2 _diff;
    vec2 _dist;
    _r0005.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0005.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0005.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0005.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0005;
    _oColor = COLOR;
    _scale = (rubyOutputSize/vec2( 5.12000000E+02, 4.48000000E+02))/2.00000000E+00;
    _middle = (5.00000000E-01*rubyInputSize)/rubyTextureSize;
    _diff = rubyTexCoord.xy - _middle;
    _oTex = _middle + _diff*_scale;
    _dist = rubyTexCoord1.xy - vec2( 5.00000000E-01, 5.00000000E-01);
    _otex_border = vec2( 5.00000000E-01, 5.00000000E-01) + (_dist*rubyOutputSize)/vec2( 1.92000000E+03, 1.08000000E+03);
    gl_Position = _r0005;
    COL0 = COLOR;
    TEX0.xy = _oTex;
    TEX1.xy = _otex_border;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count1;
varying     vec2 _output_dummy_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count1;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec4 _TMP0;
uniform sampler2D rubyTexture;
uniform sampler2D _bg1;
varying vec4 TEX0;
varying vec4 TEX1;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec4 _frame;
    vec4 _background;
    _frame = texture2D(rubyTexture, TEX0.xy);
    _TMP0 = texture2D(_bg1, TEX1.xy);
    _background = vec4(_TMP0.x, _TMP0.y, _TMP0.z, _TMP0.w);
    _ret_0 = _frame + _background.w*(_background - _frame);
    gl_FragColor = _ret_0;
    return;
} 
 ]]></fragment>
</shader>