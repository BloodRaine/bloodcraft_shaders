#version 120

#include "/lib/framebuffer.glsl"

varying vec3 tintColor;
varying vec4 texcoord;
varying vec3 normal;

uniform sampler2D texture;

void main() {
    vec4 blockColor = texture2D(texture, texcoord.st);
    blockColor.rgb *= tintColor;

    GCOLOR_OUT = blockColor;
    GNORMAL_OUT = vec4(normal, 1.0f);
}