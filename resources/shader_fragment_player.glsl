#version 330 core
out vec4 color;
in vec3 vertex_normal;
in vec3 vertex_pos;
in vec2 vertex_tex;
uniform vec3 campos;

uniform sampler2D tex;

void main()
{
    vec4 tcol = texture(tex, vertex_tex*10.);
    color = tcol;
    color *= 0.3;
    color.a = 1;
    color = vec4(0, 0, 1, 1);
}
