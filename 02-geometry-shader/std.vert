#version 150
/* std.vert - basic transformation, no lighting */

in vec4 vertex;

out vec4 vertPosition;
out vec4 vertColor;



void main( void )
{
 vertColor= vec4( 1.0, 0.0, 0.0, 1.0 );
 vertPosition = vertex;
}
