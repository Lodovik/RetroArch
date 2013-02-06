<?xml version="1.0" encoding="UTF-8"?>
<!-- XML/GLSL shader autogenerated by cg2xml.py -->
<shader language="GLSL" style="GLES2">
    <vertex><![CDATA[
varying     vec4 _t1;
varying     vec2 _texCoord1;
varying     vec4 _position1;
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
struct out_vertex {
    vec4 _position1;
    vec2 _texCoord1;
    vec4 _t1;
};
out_vertex _ret_0;
uniform mat4 rubyMVPMatrix;
uniform input_dummy _IN1;
vec4 _r0003;
attribute vec4 rubyVertexCoord;
attribute vec4 rubyTexCoord;
varying vec4 TEX0;
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
    out_vertex _OUT;
    vec2 _ps;
    _r0003.x = dot(rubyMVPMatrix_[0], rubyVertexCoord);
    _r0003.y = dot(rubyMVPMatrix_[1], rubyVertexCoord);
    _r0003.z = dot(rubyMVPMatrix_[2], rubyVertexCoord);
    _r0003.w = dot(rubyMVPMatrix_[3], rubyVertexCoord);
    _ps = vec2(1.00000000E+00/rubyTextureSize.x, 1.00000000E+00/rubyTextureSize.y);
    _OUT._t1.xy = vec2(0.00000000E+00, -_ps.y);
    _OUT._t1.zw = vec2(-_ps.x, 0.00000000E+00);
    _position1 = _r0003;
    _texCoord1 = rubyTexCoord.xy;
    _t1 = _OUT._t1;
    gl_Position = _r0003;
    TEX0.xy = rubyTexCoord.xy;
    TEX1 = _OUT._t1;
    return;
    TEX0.xy = _texCoord1;
    TEX1 = _t1;
} 
 ]]></vertex>
    <fragment><![CDATA[
#ifdef GL_ES
precision mediump float;
#endif
varying     vec4 _t1;
varying     vec2 _texCoord;
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
struct out_vertex {
    vec2 _texCoord;
    vec4 _t1;
};
vec4 _ret_0;
vec3 _TMP16;
vec3 _TMP24;
vec3 _TMP28;
vec3 _TMP29;
vec3 _TMP30;
vec3 _TMP25;
vec3 _TMP26;
vec3 _TMP27;
vec3 _TMP17;
vec3 _TMP21;
vec3 _TMP22;
vec3 _TMP23;
vec3 _TMP18;
vec3 _TMP19;
vec3 _TMP20;
float _TMP31;
float _TMP32;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
float _TMP7;
float _TMP6;
float _TMP5;
float _TMP4;
float _TMP3;
float _TMP2;
float _TMP1;
float _TMP0;
uniform sampler2D rubyTexture;
uniform input_dummy _IN1;
vec2 _x0038;
vec2 _c0056;
vec2 _c0058;
vec2 _c0060;
vec2 _c0064;
vec2 _c0066;
vec2 _c0068;
vec2 _c0070;
varying vec4 TEX0;
varying vec4 TEX1;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    vec2 _fp;
    vec2 _g1;
    vec2 _g2;
    vec3 _B;
    vec3 _C;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _E11;
    vec3 _E15;
    float _b;
    float _c;
    float _d;
    float _e;
    float _f;
    float _g;
    float _h;
    float _i;
    vec3 _res;
    _x0038 = TEX0.xy*rubyTextureSize;
    _fp = fract(_x0038);
    _TMP0 = float((_fp.x >= 5.00000000E-01));
    _TMP1 = float((_fp.y >= 5.00000000E-01));
    _TMP2 = float((_fp.x >= 5.00000000E-01));
    _TMP3 = float((_fp.y >= 5.00000000E-01));
    _g1 = TEX1.xy*((_TMP0 + _TMP1) - 1.00000000E+00) + TEX1.zw*(_TMP2 - _TMP3);
    _TMP4 = float((_fp.y >= 5.00000000E-01));
    _TMP5 = float((_fp.x >= 5.00000000E-01));
    _TMP6 = float((_fp.x >= 5.00000000E-01));
    _TMP7 = float((_fp.y >= 5.00000000E-01));
    _g2 = TEX1.xy*(_TMP4 - _TMP5) + TEX1.zw*((_TMP6 + _TMP7) - 1.00000000E+00);
    _c0056 = TEX0.xy + _g1;
    _TMP8 = texture2D(rubyTexture, _c0056);
    _B = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _c0058 = (TEX0.xy + _g1) - _g2;
    _TMP9 = texture2D(rubyTexture, _c0058);
    _C = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _c0060 = TEX0.xy + _g2;
    _TMP10 = texture2D(rubyTexture, _c0060);
    _D = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _TMP11 = texture2D(rubyTexture, TEX0.xy);
    _E = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _c0064 = TEX0.xy - _g2;
    _TMP12 = texture2D(rubyTexture, _c0064);
    _F = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _c0066 = (TEX0.xy - _g1) + _g2;
    _TMP13 = texture2D(rubyTexture, _c0066);
    _G = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _c0068 = TEX0.xy - _g1;
    _TMP14 = texture2D(rubyTexture, _c0068);
    _H = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _c0070 = (TEX0.xy - _g1) - _g2;
    _TMP15 = texture2D(rubyTexture, _c0070);
    _I = vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z));
    _E11 = _E;
    _E15 = _E;
    _TMP32 = dot(vec3(float(_B.x), float(_B.y), float(_B.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP31 = float(_TMP32);
    _b = float(_TMP31);
    _TMP32 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP31 = float(_TMP32);
    _c = float(_TMP31);
    _TMP32 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP31 = float(_TMP32);
    _d = float(_TMP31);
    _TMP32 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP31 = float(_TMP32);
    _e = float(_TMP31);
    _TMP32 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP31 = float(_TMP32);
    _f = float(_TMP31);
    _TMP32 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP31 = float(_TMP32);
    _g = float(_TMP31);
    _TMP32 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP31 = float(_TMP32);
    _h = float(_TMP31);
    _TMP32 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP31 = float(_TMP32);
    _i = float(_TMP31);
    if (_h == _f && _h != _e && (_e == _g && (_h == _i || _e == _d) || _e == _c && (_h == _i || _e == _b))) { 
        _E11 = _E*5.00000000E-01 + _F*5.00000000E-01;
        _E15 = _F;
    } 
    if (_fp.x < 5.00000000E-01) { 
        if (_fp.x < 2.50000000E-01) { 
            if (_fp.y < 2.50000000E-01) { 
                _TMP18 = _E15;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP19 = _E11;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP20 = _E11;
                    } else {
                        _TMP20 = _E15;
                    } 
                    _TMP19 = _TMP20;
                } 
                _TMP18 = _TMP19;
            } 
            _TMP17 = _TMP18;
        } else {
            if (_fp.y < 2.50000000E-01) { 
                _TMP21 = _E11;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP22 = _E;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP23 = _E;
                    } else {
                        _TMP23 = _E11;
                    } 
                    _TMP22 = _TMP23;
                } 
                _TMP21 = _TMP22;
            } 
            _TMP17 = _TMP21;
        } 
        _TMP16 = _TMP17;
    } else {
        if (_fp.x < 7.50000000E-01) { 
            if (_fp.y < 2.50000000E-01) { 
                _TMP25 = _E11;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP26 = _E;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP27 = _E;
                    } else {
                        _TMP27 = _E11;
                    } 
                    _TMP26 = _TMP27;
                } 
                _TMP25 = _TMP26;
            } 
            _TMP24 = _TMP25;
        } else {
            if (_fp.y < 2.50000000E-01) { 
                _TMP28 = _E15;
            } else {
                if (_fp.y < 5.00000000E-01) { 
                    _TMP29 = _E11;
                } else {
                    if (_fp.y < 7.50000000E-01) { 
                        _TMP30 = _E11;
                    } else {
                        _TMP30 = _E15;
                    } 
                    _TMP29 = _TMP30;
                } 
                _TMP28 = _TMP29;
            } 
            _TMP24 = _TMP28;
        } 
        _TMP16 = _TMP24;
    } 
    _res = vec3(float(_TMP16.x), float(_TMP16.y), float(_TMP16.z));
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    gl_FragColor = _ret_0;
    return;
} 
 ]]></fragment>
</shader>