#version 410

uniform mat4 projectionMatrix;
uniform mat4 modelViewMatrix;

in vec3 position;
// attribute vec4 inputColor;

// varying vec4 outputColor;
// varying vec2 texcoord;
void main()
{
    gl_Position = transpose(projectionMatrix) * transpose(modelViewMatrix) * vec4(position, 1.0);
    // texcoord = position * vec2(0.5) + vec2(0.5);
}


//attribute vec4 position;
//attribute vec3 normal;
//
//varying lowp vec4 colorVarying;
//
//uniform mat4 modelViewProjectionMatrix;
//uniform mat3 normalMatrix;
//
//void main()
//{
//    vec3 eyeNormal = normalize(normalMatrix * normal);
//    vec3 lightPosition = vec3(0.0, 0.0, 1.0);
//    vec4 diffuseColor = vec4(0.4, 0.4, 1.0, 1.0);
//    
//    float nDotVP = max(0.0, dot(eyeNormal, normalize(lightPosition)));
//                 
//    colorVarying = diffuseColor * nDotVP;
//    
//    gl_Position = modelViewProjectionMatrix * position;
//}
