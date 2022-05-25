//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 original = texture2D( gm_BaseTexture, v_vTexcoord );
    
    if((original.r > 240.0))
    {
        gl_FragColor = vec4(100.0, original.g, original.b, original.a);
    }
    else
    {
        gl_FragColor = vec4(original.r, original.g, original.b, original.a);
    }
}

