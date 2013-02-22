#version 150


layout(triangles) in;
layout(triangle_strip, max_vertices = 3) out;

// input position and color
in vec4 vertPosition[];
in vec4 vertColor[];

out gl_PerVertex {
    vec4 gl_Position;
};
out vec4 geomColor;

void main() {

 for(int i = 0; i < vertPosition.length(); i++) {
    // copy attributes
    gl_Position = vertPosition[i];
    geomColor=vertColor[i];
    // done with the vertex
    EmitVertex();
  }
  EndPrimitive();
}
