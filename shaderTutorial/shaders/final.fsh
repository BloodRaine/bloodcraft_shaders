#version 120

varying vec4 texcoord;

uniform sampler2D gcolor;

// FILTERS

void vignette(inout vec3 color) {
    float dist = distance(texcoord.st, vec2(0.5)) * 2;
    dist /= 1.542f;

    dist = pow(dist, 1.1f);
    color.rgb *= (1.0f - dist) / 0.5;
}

vec3 convertToHDR(in vec3 color) {
    vec3 HDRImage;

    vec3 overExposed = color * 1.2f;
    vec3 underExposed = color / 1.5f;

    HDRImage = mix(underExposed, overExposed, color);

    return HDRImage;
}

vec3 getExposure( in vec3 color ) {
    vec3 retColor;
    color *= 1.115;
    retColor = pow(color, vec3(1/2.2));

    return retColor;
}

void main() {
    vec3 color = texture2D(gcolor, texcoord.st).rgb;

    color = convertToHDR(color);

    // color = getExposure(color);

    gl_FragColor = vec4(color.rgb, 1.0f);
}