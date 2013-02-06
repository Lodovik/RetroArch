<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     float _frame_rotation;
varying     float _frame_direction;
varying     float _frame_count;
varying     vec2 _output_dummy_size;
varying     vec4 _color1;
struct output_dummy {
    vec4 _color1;
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
vec4 _r0003;
attribute vec4 rubyVertexCoord;
attribute vec4 COLOR;
attribute vec4 rubyTexCoord;
varying vec4 COL0;
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
    vec4 _oColor;
    vec2 _otexCoord;
    _r0003.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0003.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0003.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0003.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _oPosition1 = _r0003;
    _oColor = COLOR;
    _otexCoord = rubyTexCoord.xy;
    gl_Position = _r0003;
    COL0 = COLOR;
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
varying     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec3 _TMP13;
vec3 _TMP15;
vec3 _TMP14;
float _TMP16;
float _TMP17;
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
uniform input_dummy _IN1;
vec2 _c0025;
vec2 _c0027;
vec2 _c0029;
vec2 _c0031;
vec2 _c0035;
vec2 _c0037;
vec2 _c0039;
vec2 _c0041;
varying vec4 TEX0;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec2 _ps;
    vec2 _dx;
    vec2 _dy;
    vec2 _pixcoord;
    vec2 _fp;
    vec2 _d11;
    vec3 _A;
    vec3 _B;
    vec3 _C;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _E0;
    vec3 _E1;
    vec3 _E2;
    vec3 _E3;
    float _a;
    float _b;
    float _c;
    float _d;
    float _e;
    float _f;
    float _g;
    float _h;
    float _i;
    vec3 _res;
    output_dummy _OUT;
    _ps = vec2(9.99899983E-01/rubyTextureSize.x, 9.99899983E-01/rubyTextureSize.y);
    _dx = vec2(float(_ps.x), 0.00000000E+00);
    _dy = vec2(0.00000000E+00, float(_ps.y));
    _pixcoord = TEX0.xy/_ps;
    _fp = fract(_pixcoord);
    _d11 = TEX0.xy - _fp*_ps;
    _c0025 = (_d11 - vec2(float(_dx.x), float(_dx.y))) - vec2(float(_dy.x), float(_dy.y));
    _TMP0 = texture2D(rubyTexture, _c0025);
    _A = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _c0027 = _d11 - vec2(float(_dy.x), float(_dy.y));
    _TMP1 = texture2D(rubyTexture, _c0027);
    _B = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _c0029 = (_d11 + vec2(float(_dx.x), float(_dx.y))) - vec2(float(_dy.x), float(_dy.y));
    _TMP2 = texture2D(rubyTexture, _c0029);
    _C = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _c0031 = _d11 - vec2(float(_dx.x), float(_dx.y));
    _TMP3 = texture2D(rubyTexture, _c0031);
    _D = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = texture2D(rubyTexture, _d11);
    _E = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _c0035 = _d11 + vec2(float(_dx.x), float(_dx.y));
    _TMP5 = texture2D(rubyTexture, _c0035);
    _F = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _c0037 = (_d11 - vec2(float(_dx.x), float(_dx.y))) + vec2(float(_dy.x), float(_dy.y));
    _TMP6 = texture2D(rubyTexture, _c0037);
    _G = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _c0039 = _d11 + vec2(float(_dy.x), float(_dy.y));
    _TMP7 = texture2D(rubyTexture, _c0039);
    _H = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _c0041 = _d11 + vec2(float(_dx.x), float(_dx.y)) + vec2(float(_dy.x), float(_dy.y));
    _TMP8 = texture2D(rubyTexture, _c0041);
    _I = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _E0 = _E;
    _E1 = _E;
    _E2 = _E;
    _E3 = _E;
    _TMP17 = dot(vec3(float(_A.x), float(_A.y), float(_A.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP16 = float(_TMP17);
    _a = float(_TMP16);
    _TMP17 = dot(vec3(float(_B.x), float(_B.y), float(_B.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP16 = float(_TMP17);
    _b = float(_TMP16);
    _TMP17 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP16 = float(_TMP17);
    _c = float(_TMP16);
    _TMP17 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP16 = float(_TMP17);
    _d = float(_TMP16);
    _TMP17 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP16 = float(_TMP17);
    _e = float(_TMP16);
    _TMP17 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP16 = float(_TMP17);
    _f = float(_TMP16);
    _TMP17 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP16 = float(_TMP17);
    _g = float(_TMP16);
    _TMP17 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP16 = float(_TMP17);
    _h = float(_TMP16);
    _TMP17 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP16 = float(_TMP17);
    _i = float(_TMP16);
    if (_e != _h && _h == _f && (_e != _i && (_e != _b || _e != _d || _f != _b && _f != _c || _h != _d && _h != _g) || _e == _g && (_i == _h || _e == _d || _h != _d) || _e == _c && (_i == _h || _e == _b || _f != _b))) { 
        if (_e == _c && _e == _d && _h == _g) { 
            _E3 = _E + 7.50000000E-01*(_H - _E);
            _E2 = (_E + _H) - _E3;
        } else {
            if (_e == _g && _e == _b && _f == _c) { 
                _E3 = _E + 7.50000000E-01*(_F - _E);
                _E1 = (_E + _F) - _E3;
            } else {
                _E3 = _E + 5.00000000E-01*(_F - _E);
            } 
        } 
    } else {
        if (_e != _h && _e != _i && _e != _f && _e == _g && _e == _c) { 
            _E3 = _E + 5.00000000E-01*(_F - _E);
        } 
    } 
    if (_e != _f && _f == _b && (_e != _c && (_e != _d || _e != _h || _b != _d && _b != _a || _f != _h && _f != _i) || _e == _i && (_c == _f || _e == _h || _f != _h) || _e == _a && (_c == _f || _e == _d || _b != _d))) { 
        if (_e == _a && _e == _h && _f == _i) { 
            _E1 = _E1 + 7.50000000E-01*(_F - _E1);
            _E3 = (_E3 + _F) - _E1;
        } else {
            if (_e == _i && _e == _d && _b == _a) { 
                _E1 = _E1 + 7.50000000E-01*(_B - _E1);
                _E0 = (_E + _B) - _E1;
            } else {
                _E1 = _E1 + 5.00000000E-01*(_B - _E1);
            } 
        } 
    } else {
        if (_e != _f && _e != _c && _e != _b && _e == _i && _e == _a) { 
            _E1 = _E1 + 5.00000000E-01*(_B - _E1);
        } 
    } 
    if (_e != _b && _b == _d && (_e != _a && (_e != _h || _e != _f || _d != _h && _d != _g || _b != _f && _b != _c) || _e == _c && (_a == _b || _e == _f || _b != _f) || _e == _g && (_a == _b || _e == _h || _d != _h))) { 
        if (_e == _g && _e == _f && _b == _c) { 
            _E0 = _E0 + 7.50000000E-01*(_B - _E0);
            _E1 = (_E1 + _B) - _E0;
        } else {
            if (_e == _c && _e == _h && _d == _g) { 
                _E0 = _E0 + 7.50000000E-01*(_D - _E0);
                _E2 = (_E2 + _D) - _E0;
            } else {
                _E0 = _E0 + 5.00000000E-01*(_D - _E0);
            } 
        } 
    } else {
        if (_e != _b && _e != _a && _e != _d && _e == _c && _e == _g) { 
            _E0 = _E0 + 5.00000000E-01*(_D - _E0);
        } 
    } 
    if (_e != _d && _d == _h && (_e != _g && (_e != _f || _e != _b || _h != _f && _h != _i || _d != _b && _d != _a) || _e == _a && (_g == _d || _e == _b || _d != _b) || _e == _i && (_g == _d || _e == _f || _h != _f))) { 
        if (_e == _i && _e == _b && _d == _a) { 
            _E2 = _E2 + 7.50000000E-01*(_D - _E2);
            _E0 = (_E0 + _D) - _E2;
        } else {
            if (_e == _a && _e == _f && _h == _i) { 
                _E2 = _E2 + 7.50000000E-01*(_H - _E2);
                _E3 = (_E3 + _H) - _E2;
            } else {
                _E2 = _E2 + 5.00000000E-01*(_H - _E2);
            } 
        } 
    } else {
        if (_e != _d && _e != _g && _e != _h && _e == _a && _e == _i) { 
            _E2 = _E2 + 5.00000000E-01*(_H - _E2);
        } 
    } 
    if (_fp.x < 5.00000000E-01) { 
        if (_fp.y < 5.00000000E-01) { 
            _TMP14 = _E0;
        } else {
            _TMP14 = _E2;
        } 
        _TMP13 = _TMP14;
    } else {
        if (_fp.y < 5.00000000E-01) { 
            _TMP15 = _E1;
        } else {
            _TMP15 = _E3;
        } 
        _TMP13 = _TMP15;
    } 
    _res = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _OUT._color1 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    gl_FragColor = _OUT._color1;
    return;
} 
 ]]></fragment>
</shader>