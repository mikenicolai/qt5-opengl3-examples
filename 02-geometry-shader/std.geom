#version 150


//layout(triangles) in;
//layout(triangle_strip, max_vertices = 3) out;

in vec4 vertColor;
out vec4 geomColor;

void main() {

 for(int i = 0; i < gl_in.length(); i++) {
    // copy attributes
    gl_Position = gl_in[i].gl_Position;
    geomColor=vertColor;
    // done with the vertex
    EmitVertex();
  }
  EndPrimitive();
}
