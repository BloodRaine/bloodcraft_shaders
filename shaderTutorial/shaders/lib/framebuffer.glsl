#define GCOLOR_OUT  gl_FragData[0]
#define GNORMAL_OUT gl_FragData[1]

uniform sampler2D gcolor;
uniform sampler2D gnormal;
uniform sampler2D gdepth;

const int RGBA16 = 1;
const int gcolorFormat = RGBA16;

/* DRAWBUFFERS:012 */

// GETTERS
vec3 getAlbido( in vec2 coord) {
    return texture2D(gcolor, coord).rgb;
}