#version 150
/* std.frag -  simple fragment shader */

in vec4 vertexColor;
out vec4 fragColor;

// entry point
//
void main( void )
{
	// pass through interpolated vertex color.
        fragColor = vertexColor;

}
