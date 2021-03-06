#version 150
uniform vec2 screen_pixel_size;

in vec2 a_pos;
in vec2 a_tex_coord;
in int a_texid;
in int a_options;
in vec3 a_channel_color;

out vec2 v_tex_coord;
flat out int v_options;
flat out int v_texid;
out vec3 v_channel_color;

void main (void)
{
    vec2 half_screen_pixel_size = screen_pixel_size / 2;
    gl_Position = vec4((a_pos - half_screen_pixel_size) / half_screen_pixel_size, 0, 1);
    v_tex_coord = a_tex_coord;
    v_options = a_options;
    v_texid = a_texid;
    v_channel_color = a_channel_color;
}
