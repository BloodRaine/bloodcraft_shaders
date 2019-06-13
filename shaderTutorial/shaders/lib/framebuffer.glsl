#define GCOLOR_OUT  gl_FragData[0]
#define GNORMAL_OUT gl_FragData[1]

uniform sampler2D gcolor;
uniform sampler2D gnormal;
uniform sampler2D gdepth;

const int RGBA16 = 1;
const int gcolorFormat = RGBA16;

// GETTERS
vec3 getAlbedo( in vec2 coord ) {
    return texture2D(gcolor, coord).rgb;
}

vec3 getNormal( in vec2 coord ) {
    return texture2D(gnormal, coord).rgb;
}