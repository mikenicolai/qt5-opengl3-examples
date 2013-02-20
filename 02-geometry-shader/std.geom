/* std.geom - pass-through geometry shader */
 
#version 150
#####extension GL_EXT_geometry_shader4 : enable

// this reverses the vertex output order.
uniform bool reverseOrder;

//
// emits input vertex i without
// modifications to it's attributes.
//
void passVertex( int i )
{
	gl_FrontColor  = gl_FrontColorIn[ i ];
	gl_Position    = gl_PositionIn  [ i ];
	gl_TexCoord[0] = gl_TexCoordIn  [ i ][ 0 ];

	EmitVertex();
}


//
// entry point
//
void main( void )
{
	// to see what back face culling does...
	if( reverseOrder ) {
		for( int i = gl_VerticesIn - 1 ; i >= 0 ; i-- )
			passVertex( i );
	}

	// normal processing
	else {
		for( int i = 0 ; i < gl_VerticesIn ; i++ )
			passVertex( i );
	}
}
