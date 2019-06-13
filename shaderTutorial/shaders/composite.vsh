#version 120

varying vec4 texcoord;
varying vec3 lightVector;

uniform int worldTime;
uniform vec3 sunPosition;
uniform vec3 moonPosition;

void main() {
    
    gl_Position = ftransform();

    texcoord = gl_MultiTexCoord0;

    if (worldTime < 12700 || worldTime > 23250) {
        lightVector = normalize(sunPosition);
    } else {
        lightVector = normalize(moonPosition);
    }

}