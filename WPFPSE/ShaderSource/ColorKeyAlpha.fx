//--------------------------------------------------------------------------------------
// 
// WPF ShaderEffect HLSL -- ColorKeyAlphaEffect
//
//--------------------------------------------------------------------------------------

//--------------------------------------------------------------------------------------
// Sampler Inputs (Brushes, including ImplicitInput)
//--------------------------------------------------------------------------------------

sampler2D  implicitInputSampler : register(S0);

//--------------------------------------------------------------------------------------
// Pixel Shader
//--------------------------------------------------------------------------------------

float4 main(float2 uv : TEXCOORD) : COLOR
{
   float4 color = tex2D( implicitInputSampler, uv );
   
   if(color.r == 0 && color.g > 0.8 && color.b == 0) {
      color.rgba = 0;
   }
   
   return color;
}
