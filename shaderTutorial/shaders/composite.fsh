#version 120

varying vec4 texcoord;

void main() {
    vec3 finalComposite = texture2D(gcolor, texcoord.st).rgb;
    vec3 finalCompositeNormal = texture2D(gnormal, texcoord.st).rgb;
    vec3 finalCompositeDepth = texture2D(gdepth, texcoord.st).rgb;

    gl_FragData[0] = vec4(finalComposite.rgb, 1.0);
    gl_FragData[1] = vec4(finalComposite.rgb, 1.0);
    gl_FragData[2] = vec4(finalComposite.rgb, 1.0);
}