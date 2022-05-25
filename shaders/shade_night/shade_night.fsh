//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 original = texture2D( gm_BaseTexture, v_vTexcoord );
    float average = (original.r, original.g, original.b) /3.0;
    float alpha = original.a;
    
    gl_FragColor = vec4(average, average, average, alpha);
}

