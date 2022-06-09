//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 texColor = texture2D(gm_BaseTexture,v_vTexcoord);
	gl_FragColor = v_vColour * vec4(0.874509804,0.91372549,0.960784314,texColor.a);
	

}
