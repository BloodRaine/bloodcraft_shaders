#version 120

varying vec4 texcoord;

varying vec3 lightVector;
varying vec3 lightColor;
varying vec3 ambientLight;

uniform int worldTime;

uniform vec3 sunPosition;
uniform vec3 moonPosition;

void main() {
    
    gl_Position = ftransform();

    texcoord = gl_MultiTexCoord0;

    if (worldTime < 12700 || worldTime > 23250) {
        lightVector = normalize(sunPosition);
        lightColor = vec3(1.0);
        ambientLight = vec3(0.3);
    } else {
        lightVector = normalize(moonPosition);
        lightColor = vec3(0.1);
        ambientLight = vec3(0.03);
    }

}