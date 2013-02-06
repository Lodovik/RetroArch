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
float _TMP0;
uniform mat4 rubyMVPMatrix;
uniform input_dummy _IN1;
vec4 _r0005;
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
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[0].x), float(rubyMVPMatrix_[0].y), float(rubyMVPMatrix_[0].z), float(rubyMVPMatrix_[0].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0005.x = float(_TMP0);
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[1].x), float(rubyMVPMatrix_[1].y), float(rubyMVPMatrix_[1].z), float(rubyMVPMatrix_[1].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0005.y = float(_TMP0);
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[2].x), float(rubyMVPMatrix_[2].y), float(rubyMVPMatrix_[2].z), float(rubyMVPMatrix_[2].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0005.z = float(_TMP0);
    _TMP0 = dot(vec4(float(rubyMVPMatrix_[3].x), float(rubyMVPMatrix_[3].y), float(rubyMVPMatrix_[3].z), float(rubyMVPMatrix_[3].w)), vec4(float(rubyVertexCoord.x), float(rubyVertexCoord.y), float(rubyVertexCoord.z), float(rubyVertexCoord.w)));
    _r0005.w = float(_TMP0);
    _ps = vec2(float((1.00000000E+00/rubyTextureSize.x)), float((1.00000000E+00/rubyTextureSize.y)));
    _OUT._t1.xy = vec2(_ps.x, 0.00000000E+00);
    _OUT._t1.zw = vec2(0.00000000E+00, _ps.y);
    _position1 = _r0005;
    _texCoord1 = rubyTexCoord.xy;
    _t1 = _OUT._t1;
    gl_Position = vec4(float(_r0005.x), float(_r0005.y), float(_r0005.z), float(_r0005.w));
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
varying     vec4 _t11;
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
    vec4 _t11;
};
vec4 _ret_0;
vec3 _TMP29;
vec3 _TMP31;
vec3 _TMP33;
vec3 _TMP35;
vec3 _TMP36;
vec3 _TMP34;
vec3 _TMP32;
vec3 _TMP30;
float _TMP45;
float _TMP44;
float _TMP43;
float _TMP42;
vec4 _TMP28;
vec4 _TMP27;
vec4 _TMP41;
vec4 _TMP40;
vec4 _TMP39;
vec4 _TMP38;
vec4 _TMP37;
float _TMP46;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
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
vec2 _x0057;
vec2 _c0059;
vec2 _c0061;
vec2 _c0063;
vec2 _c0065;
vec2 _c0069;
vec2 _c0071;
vec2 _c0073;
vec2 _c0075;
vec2 _c0077;
vec2 _c0079;
vec2 _c0081;
vec2 _c0083;
vec2 _c0085;
vec2 _c0087;
vec2 _c0089;
vec2 _c0091;
vec2 _c0093;
vec2 _c0095;
vec2 _c0097;
vec2 _c0099;
vec4 _r0101;
vec4 _r0111;
vec4 _r0121;
vec4 _r0131;
vec4 _r0141;
vec4 _r0151;
float _a0165;
float _a0167;
float _a0169;
float _a0171;
float _a0175;
float _a0177;
float _a0179;
float _a0181;
float _a0185;
float _a0187;
float _a0189;
float _a0191;
float _a0195;
float _a0197;
float _a0199;
float _a0201;
float _a0205;
float _a0207;
float _a0209;
float _a0211;
float _a0217;
float _a0219;
float _a0221;
float _a0223;
float _a0227;
float _a0229;
float _a0231;
float _a0233;
float _a0237;
float _a0239;
float _a0241;
float _a0243;
float _a0247;
float _a0249;
float _a0251;
float _a0253;
float _a0257;
float _a0259;
float _a0261;
float _a0263;
float _a0267;
float _a0269;
float _a0271;
float _a0273;
float _a0277;
float _a0279;
float _a0281;
float _a0283;
float _a0287;
float _a0289;
float _a0291;
float _a0293;
float _a0297;
float _a0299;
float _a0301;
float _a0303;
float _a0307;
float _a0309;
float _a0311;
float _a0313;
float _a0317;
float _a0319;
float _a0321;
float _a0323;
varying vec4 TEX0;
varying vec4 TEX1;
 
uniform mediump vec2 rubyOutputSize;
uniform mediump vec2 rubyTextureSize;
uniform mediump vec2 rubyInputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _ir_lv1;
    bvec4 _ir_lv2_left;
    bvec4 _ir_lv2_up;
    bvec4 _nc;
    bvec4 _fx;
    bvec4 _fx_left;
    bvec4 _fx_up;
    vec2 _fp;
    vec2 _dx;
    vec2 _dy;
    vec3 _A1;
    vec3 _B1;
    vec3 _C;
    vec3 _D;
    vec3 _E;
    vec3 _F;
    vec3 _G;
    vec3 _H;
    vec3 _I;
    vec3 _A11;
    vec3 _C1;
    vec3 _A0;
    vec3 _G0;
    vec3 _C4;
    vec3 _I4;
    vec3 _G5;
    vec3 _I5;
    vec3 _B11;
    vec3 _D0;
    vec3 _H5;
    vec3 _F4;
    vec4 _b1;
    vec4 _c1;
    vec4 _e1;
    vec4 _i4;
    vec4 _i5;
    vec4 _h5;
    vec4 _w1;
    vec4 _w2;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    _x0057 = TEX0.xy*rubyTextureSize;
    _fp = fract(_x0057);
    _dx = vec2(float(TEX1.x), float(TEX1.y));
    _dy = vec2(float(TEX1.z), float(TEX1.w));
    _c0059 = (TEX0.xy - _dx) - _dy;
    _TMP0 = texture2D(rubyTexture, _c0059);
    _A1 = vec3(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z));
    _c0061 = TEX0.xy - _dy;
    _TMP1 = texture2D(rubyTexture, _c0061);
    _B1 = vec3(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z));
    _c0063 = (TEX0.xy + _dx) - _dy;
    _TMP2 = texture2D(rubyTexture, _c0063);
    _C = vec3(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z));
    _c0065 = TEX0.xy - _dx;
    _TMP3 = texture2D(rubyTexture, _c0065);
    _D = vec3(float(_TMP3.x), float(_TMP3.y), float(_TMP3.z));
    _TMP4 = texture2D(rubyTexture, TEX0.xy);
    _E = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _c0069 = TEX0.xy + _dx;
    _TMP5 = texture2D(rubyTexture, _c0069);
    _F = vec3(float(_TMP5.x), float(_TMP5.y), float(_TMP5.z));
    _c0071 = (TEX0.xy - _dx) + _dy;
    _TMP6 = texture2D(rubyTexture, _c0071);
    _G = vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z));
    _c0073 = TEX0.xy + _dy;
    _TMP7 = texture2D(rubyTexture, _c0073);
    _H = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _c0075 = TEX0.xy + _dx + _dy;
    _TMP8 = texture2D(rubyTexture, _c0075);
    _I = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _c0077 = (TEX0.xy - _dx) - 2.00000000E+00*_dy;
    _TMP9 = texture2D(rubyTexture, _c0077);
    _A11 = vec3(float(_TMP9.x), float(_TMP9.y), float(_TMP9.z));
    _c0079 = (TEX0.xy + _dx) - 2.00000000E+00*_dy;
    _TMP10 = texture2D(rubyTexture, _c0079);
    _C1 = vec3(float(_TMP10.x), float(_TMP10.y), float(_TMP10.z));
    _c0081 = (TEX0.xy - 2.00000000E+00*_dx) - _dy;
    _TMP11 = texture2D(rubyTexture, _c0081);
    _A0 = vec3(float(_TMP11.x), float(_TMP11.y), float(_TMP11.z));
    _c0083 = (TEX0.xy - 2.00000000E+00*_dx) + _dy;
    _TMP12 = texture2D(rubyTexture, _c0083);
    _G0 = vec3(float(_TMP12.x), float(_TMP12.y), float(_TMP12.z));
    _c0085 = (TEX0.xy + 2.00000000E+00*_dx) - _dy;
    _TMP13 = texture2D(rubyTexture, _c0085);
    _C4 = vec3(float(_TMP13.x), float(_TMP13.y), float(_TMP13.z));
    _c0087 = TEX0.xy + 2.00000000E+00*_dx + _dy;
    _TMP14 = texture2D(rubyTexture, _c0087);
    _I4 = vec3(float(_TMP14.x), float(_TMP14.y), float(_TMP14.z));
    _c0089 = (TEX0.xy - _dx) + 2.00000000E+00*_dy;
    _TMP15 = texture2D(rubyTexture, _c0089);
    _G5 = vec3(float(_TMP15.x), float(_TMP15.y), float(_TMP15.z));
    _c0091 = TEX0.xy + _dx + 2.00000000E+00*_dy;
    _TMP16 = texture2D(rubyTexture, _c0091);
    _I5 = vec3(float(_TMP16.x), float(_TMP16.y), float(_TMP16.z));
    _c0093 = TEX0.xy - 2.00000000E+00*_dy;
    _TMP17 = texture2D(rubyTexture, _c0093);
    _B11 = vec3(float(_TMP17.x), float(_TMP17.y), float(_TMP17.z));
    _c0095 = TEX0.xy - 2.00000000E+00*_dx;
    _TMP18 = texture2D(rubyTexture, _c0095);
    _D0 = vec3(float(_TMP18.x), float(_TMP18.y), float(_TMP18.z));
    _c0097 = TEX0.xy + 2.00000000E+00*_dy;
    _TMP19 = texture2D(rubyTexture, _c0097);
    _H5 = vec3(float(_TMP19.x), float(_TMP19.y), float(_TMP19.z));
    _c0099 = TEX0.xy + 2.00000000E+00*_dx;
    _TMP20 = texture2D(rubyTexture, _c0099);
    _F4 = vec3(float(_TMP20.x), float(_TMP20.y), float(_TMP20.z));
    _TMP46 = dot(vec3(float(_B1.x), float(_B1.y), float(_B1.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0101.x = float(_TMP46);
    _TMP46 = dot(vec3(float(_D.x), float(_D.y), float(_D.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0101.y = float(_TMP46);
    _TMP46 = dot(vec3(float(_H.x), float(_H.y), float(_H.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0101.z = float(_TMP46);
    _TMP46 = dot(vec3(float(_F.x), float(_F.y), float(_F.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0101.w = float(_TMP46);
    _b1 = vec4(float(_r0101.x), float(_r0101.y), float(_r0101.z), float(_r0101.w));
    _TMP46 = dot(vec3(float(_C.x), float(_C.y), float(_C.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0111.x = float(_TMP46);
    _TMP46 = dot(vec3(float(_A1.x), float(_A1.y), float(_A1.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0111.y = float(_TMP46);
    _TMP46 = dot(vec3(float(_G.x), float(_G.y), float(_G.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0111.z = float(_TMP46);
    _TMP46 = dot(vec3(float(_I.x), float(_I.y), float(_I.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0111.w = float(_TMP46);
    _c1 = vec4(float(_r0111.x), float(_r0111.y), float(_r0111.z), float(_r0111.w));
    _TMP46 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0121.x = float(_TMP46);
    _TMP46 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0121.y = float(_TMP46);
    _TMP46 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0121.z = float(_TMP46);
    _TMP46 = dot(vec3(float(_E.x), float(_E.y), float(_E.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0121.w = float(_TMP46);
    _e1 = vec4(float(_r0121.x), float(_r0121.y), float(_r0121.z), float(_r0121.w));
    _TMP46 = dot(vec3(float(_I4.x), float(_I4.y), float(_I4.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0131.x = float(_TMP46);
    _TMP46 = dot(vec3(float(_C1.x), float(_C1.y), float(_C1.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0131.y = float(_TMP46);
    _TMP46 = dot(vec3(float(_A0.x), float(_A0.y), float(_A0.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0131.z = float(_TMP46);
    _TMP46 = dot(vec3(float(_G5.x), float(_G5.y), float(_G5.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0131.w = float(_TMP46);
    _i4 = vec4(float(_r0131.x), float(_r0131.y), float(_r0131.z), float(_r0131.w));
    _TMP46 = dot(vec3(float(_I5.x), float(_I5.y), float(_I5.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0141.x = float(_TMP46);
    _TMP46 = dot(vec3(float(_C4.x), float(_C4.y), float(_C4.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0141.y = float(_TMP46);
    _TMP46 = dot(vec3(float(_A11.x), float(_A11.y), float(_A11.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0141.z = float(_TMP46);
    _TMP46 = dot(vec3(float(_G0.x), float(_G0.y), float(_G0.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0141.w = float(_TMP46);
    _i5 = vec4(float(_r0141.x), float(_r0141.y), float(_r0141.z), float(_r0141.w));
    _TMP46 = dot(vec3(float(_H5.x), float(_H5.y), float(_H5.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0151.x = float(_TMP46);
    _TMP46 = dot(vec3(float(_F4.x), float(_F4.y), float(_F4.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0151.y = float(_TMP46);
    _TMP46 = dot(vec3(float(_B11.x), float(_B11.y), float(_B11.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0151.z = float(_TMP46);
    _TMP46 = dot(vec3(float(_D0.x), float(_D0.y), float(_D0.z)), vec3( 1.43515625E+01, 2.81718750E+01, 5.47265625E+00));
    _r0151.w = float(_TMP46);
    _h5 = vec4(float(_r0151.x), float(_r0151.y), float(_r0151.z), float(_r0151.w));
    _fx.x = _fp.y + _fp.x > 1.50000000E+00;
    _fx_left.x = _fp.y + 5.00000000E-01*_fp.x > 1.00000000E+00;
    _fx_up.x = _fp.y + 2.00000000E+00*_fp.x > 2.00000000E+00;
    _fx.y = -_fp.y + _fp.x > 5.00000000E-01;
    _fx_left.y = -_fp.y + 2.00000000E+00*_fp.x > 1.00000000E+00;
    _fx_up.y = -_fp.y + 5.00000000E-01*_fp.x > 0.00000000E+00;
    _fx.z = -_fp.y + -_fp.x > -5.00000000E-01;
    _fx_left.z = -_fp.y + -5.00000000E-01*_fp.x > -5.00000000E-01;
    _fx_up.z = -_fp.y + -2.00000000E+00*_fp.x > -1.00000000E+00;
    _fx.w = _fp.y + -_fp.x > 5.00000000E-01;
    _fx_left.w = _fp.y + -2.00000000E+00*_fp.x > 0.00000000E+00;
    _fx_up.w = _fp.y + -5.00000000E-01*_fp.x > 5.00000000E-01;
    _ir_lv1.x = _e1.x != _b1.w && _e1.x != _b1.z;
    _ir_lv2_left.x = _e1.x != _c1.z && _b1.y != _c1.z;
    _ir_lv2_up.x = _e1.x != _c1.x && _b1.x != _c1.x;
    _ir_lv1.y = _e1.y != _b1.x && _e1.y != _b1.w;
    _ir_lv2_left.y = _e1.y != _c1.w && _b1.z != _c1.w;
    _ir_lv2_up.y = _e1.y != _c1.y && _b1.y != _c1.y;
    _ir_lv1.z = _e1.z != _b1.y && _e1.z != _b1.x;
    _ir_lv2_left.z = _e1.z != _c1.x && _b1.w != _c1.x;
    _ir_lv2_up.z = _e1.z != _c1.z && _b1.z != _c1.z;
    _ir_lv1.w = _e1.w != _b1.z && _e1.w != _b1.y;
    _ir_lv2_left.w = _e1.w != _c1.y && _b1.x != _c1.y;
    _ir_lv2_up.w = _e1.w != _c1.w && _b1.w != _c1.w;
    _a0165 = _e1.x - _c1.x;
    _TMP42 = abs(_a0165);
    _a0167 = _e1.y - _c1.y;
    _TMP43 = abs(_a0167);
    _a0169 = _e1.z - _c1.z;
    _TMP44 = abs(_a0169);
    _a0171 = _e1.w - _c1.w;
    _TMP45 = abs(_a0171);
    _TMP37 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0175 = _e1.x - _c1.z;
    _TMP42 = abs(_a0175);
    _a0177 = _e1.y - _c1.w;
    _TMP43 = abs(_a0177);
    _a0179 = _e1.z - _c1.x;
    _TMP44 = abs(_a0179);
    _a0181 = _e1.w - _c1.y;
    _TMP45 = abs(_a0181);
    _TMP38 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0185 = _c1.w - _h5.x;
    _TMP42 = abs(_a0185);
    _a0187 = _c1.x - _h5.y;
    _TMP43 = abs(_a0187);
    _a0189 = _c1.y - _h5.z;
    _TMP44 = abs(_a0189);
    _a0191 = _c1.z - _h5.w;
    _TMP45 = abs(_a0191);
    _TMP39 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0195 = _c1.w - _h5.y;
    _TMP42 = abs(_a0195);
    _a0197 = _c1.x - _h5.z;
    _TMP43 = abs(_a0197);
    _a0199 = _c1.y - _h5.w;
    _TMP44 = abs(_a0199);
    _a0201 = _c1.z - _h5.x;
    _TMP45 = abs(_a0201);
    _TMP40 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0205 = _b1.z - _b1.w;
    _TMP42 = abs(_a0205);
    _a0207 = _b1.w - _b1.x;
    _TMP43 = abs(_a0207);
    _a0209 = _b1.x - _b1.y;
    _TMP44 = abs(_a0209);
    _a0211 = _b1.y - _b1.z;
    _TMP45 = abs(_a0211);
    _TMP41 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _w1 = _TMP37 + _TMP38 + _TMP39 + _TMP40 + 4.00000000E+00*_TMP41;
    _a0217 = _b1.z - _b1.y;
    _TMP42 = abs(_a0217);
    _a0219 = _b1.w - _b1.z;
    _TMP43 = abs(_a0219);
    _a0221 = _b1.x - _b1.w;
    _TMP44 = abs(_a0221);
    _a0223 = _b1.y - _b1.x;
    _TMP45 = abs(_a0223);
    _TMP37 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0227 = _b1.z - _i5.x;
    _TMP42 = abs(_a0227);
    _a0229 = _b1.w - _i5.y;
    _TMP43 = abs(_a0229);
    _a0231 = _b1.x - _i5.z;
    _TMP44 = abs(_a0231);
    _a0233 = _b1.y - _i5.w;
    _TMP45 = abs(_a0233);
    _TMP38 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0237 = _b1.w - _i4.x;
    _TMP42 = abs(_a0237);
    _a0239 = _b1.x - _i4.y;
    _TMP43 = abs(_a0239);
    _a0241 = _b1.y - _i4.z;
    _TMP44 = abs(_a0241);
    _a0243 = _b1.z - _i4.w;
    _TMP45 = abs(_a0243);
    _TMP39 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0247 = _b1.w - _b1.x;
    _TMP42 = abs(_a0247);
    _a0249 = _b1.x - _b1.y;
    _TMP43 = abs(_a0249);
    _a0251 = _b1.y - _b1.z;
    _TMP44 = abs(_a0251);
    _a0253 = _b1.z - _b1.w;
    _TMP45 = abs(_a0253);
    _TMP40 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0257 = _e1.x - _c1.w;
    _TMP42 = abs(_a0257);
    _a0259 = _e1.y - _c1.x;
    _TMP43 = abs(_a0259);
    _a0261 = _e1.z - _c1.y;
    _TMP44 = abs(_a0261);
    _a0263 = _e1.w - _c1.z;
    _TMP45 = abs(_a0263);
    _TMP41 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _w2 = _TMP37 + _TMP38 + _TMP39 + _TMP40 + 4.00000000E+00*_TMP41;
    _a0267 = _b1.w - _c1.z;
    _TMP42 = abs(_a0267);
    _a0269 = _b1.x - _c1.w;
    _TMP43 = abs(_a0269);
    _a0271 = _b1.y - _c1.x;
    _TMP44 = abs(_a0271);
    _a0273 = _b1.z - _c1.y;
    _TMP45 = abs(_a0273);
    _TMP27 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _t1 = 2.00000000E+00*_TMP27;
    _a0277 = _b1.z - _c1.x;
    _TMP42 = abs(_a0277);
    _a0279 = _b1.w - _c1.y;
    _TMP43 = abs(_a0279);
    _a0281 = _b1.x - _c1.z;
    _TMP44 = abs(_a0281);
    _a0283 = _b1.y - _c1.w;
    _TMP45 = abs(_a0283);
    _t2 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0287 = _b1.w - _c1.z;
    _TMP42 = abs(_a0287);
    _a0289 = _b1.x - _c1.w;
    _TMP43 = abs(_a0289);
    _a0291 = _b1.y - _c1.x;
    _TMP44 = abs(_a0291);
    _a0293 = _b1.z - _c1.y;
    _TMP45 = abs(_a0293);
    _t3 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0297 = _b1.z - _c1.x;
    _TMP42 = abs(_a0297);
    _a0299 = _b1.w - _c1.y;
    _TMP43 = abs(_a0299);
    _a0301 = _b1.x - _c1.z;
    _TMP44 = abs(_a0301);
    _a0303 = _b1.y - _c1.w;
    _TMP45 = abs(_a0303);
    _TMP28 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _t4 = 2.00000000E+00*_TMP28;
    _edr = bvec4(_w1.x < _w2.x && _ir_lv1.x, _w1.y < _w2.y && _ir_lv1.y, _w1.z < _w2.z && _ir_lv1.z, _w1.w < _w2.w && _ir_lv1.w);
    _edr_left = bvec4(_t1.x <= _t2.x && _ir_lv2_left.x, _t1.y <= _t2.y && _ir_lv2_left.y, _t1.z <= _t2.z && _ir_lv2_left.z, _t1.w <= _t2.w && _ir_lv2_left.w);
    _edr_up = bvec4(_t4.x <= _t3.x && _ir_lv2_up.x, _t4.y <= _t3.y && _ir_lv2_up.y, _t4.z <= _t3.z && _ir_lv2_up.z, _t4.w <= _t3.w && _ir_lv2_up.w);
    _nc.x = _edr.x && (_fx.x || _edr_left.x && _fx_left.x || _edr_up.x && _fx_up.x);
    _nc.y = _edr.y && (_fx.y || _edr_left.y && _fx_left.y || _edr_up.y && _fx_up.y);
    _nc.z = _edr.z && (_fx.z || _edr_left.z && _fx_left.z || _edr_up.z && _fx_up.z);
    _nc.w = _edr.w && (_fx.w || _edr_left.w && _fx_left.w || _edr_up.w && _fx_up.w);
    _a0307 = _e1.x - _b1.w;
    _TMP42 = abs(_a0307);
    _a0309 = _e1.y - _b1.x;
    _TMP43 = abs(_a0309);
    _a0311 = _e1.z - _b1.y;
    _TMP44 = abs(_a0311);
    _a0313 = _e1.w - _b1.z;
    _TMP45 = abs(_a0313);
    _t1 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _a0317 = _e1.x - _b1.z;
    _TMP42 = abs(_a0317);
    _a0319 = _e1.y - _b1.w;
    _TMP43 = abs(_a0319);
    _a0321 = _e1.z - _b1.x;
    _TMP44 = abs(_a0321);
    _a0323 = _e1.w - _b1.y;
    _TMP45 = abs(_a0323);
    _t2 = vec4(_TMP42, _TMP43, _TMP44, _TMP45);
    _px = bvec4(_t1.x <= _t2.x, _t1.y <= _t2.y, _t1.z <= _t2.z, _t1.w <= _t2.w);
    if (_nc.x) { 
        if (_px.x) { 
            _TMP30 = _F;
        } else {
            _TMP30 = _H;
        } 
        _TMP29 = _TMP30;
    } else {
        if (_nc.y) { 
            if (_px.y) { 
                _TMP32 = _B1;
            } else {
                _TMP32 = _F;
            } 
            _TMP31 = _TMP32;
        } else {
            if (_nc.z) { 
                if (_px.z) { 
                    _TMP34 = _D;
                } else {
                    _TMP34 = _B1;
                } 
                _TMP33 = _TMP34;
            } else {
                if (_nc.w) { 
                    if (_px.w) { 
                        _TMP36 = _H;
                    } else {
                        _TMP36 = _D;
                    } 
                    _TMP35 = _TMP36;
                } else {
                    _TMP35 = _E;
                } 
                _TMP33 = _TMP35;
            } 
            _TMP31 = _TMP33;
        } 
        _TMP29 = _TMP31;
    } 
    _ret_0 = vec4(_TMP29.x, _TMP29.y, _TMP29.z, 1.00000000E+00);
    gl_FragColor = vec4(float(_ret_0.x), float(_ret_0.y), float(_ret_0.z), float(_ret_0.w));
    return;
} 
 ]]></fragment>
</shader>