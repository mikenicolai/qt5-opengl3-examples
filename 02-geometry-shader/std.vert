#version 150
/* std.vert - basic transformation, no lighting */

in vec4 vertex;

out vec4 vertexColor;


//
// entry point
//
void main( void )
{
 vertexColor= vec4( 1.0, 0.0, 0.0, 1.0 );
 gl_Position = vertex;

}
