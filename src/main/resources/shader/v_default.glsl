#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec2 uv;

out vec2 uv_for_fragment;

uniform mat4 transformation;
uniform mat4 projection;

void main(){

	gl_Position = projection * transformation * vec4(position, 1.0);

	uv_for_fragment = uv;

}