/* Copyright (C) 2005-2010, Unigine Corp. All rights reserved.
 *
 * File:    fragment_dof_lens.shader
 * Desc:    Render dof lens shader
 * Version: 1.01
 * Author:  Alexander Zaprjagaev <frustum@unigine.com>
 *
 * This file is part of the Unigine engine (http://unigine.com/).
 *
 * Your use and or redistribution of this software in source and / or
 * binary form, with or without modification, is subject to: (i) your
 * ongoing acceptance of and compliance with the terms and conditions of
 * the Unigine License Agreement; and (ii) your inclusion of this notice
 * in any version of this software that you use or redistribute.
 * A copy of the Unigine License Agreement is available by contacting
 * Unigine Corp. at http://unigine.com/
 */

/* s_texture_0 is sample texture
 * s_texture_1 is iris texture
 */

#include <core/shaders/common/fragment_base.h>

/******************************************************************************\
*
* OpenGL
*
\******************************************************************************/

#ifdef OPENGL

uniform sampler2D s_texture_0;
uniform sampler2D s_texture_1;

/*
 */
void main() {
	
	half iris = texture2D(s_texture_1,gl_TexCoord[0].zw).x;
	
	half3 color = texture2D(s_texture_0,gl_TexCoord[0].xy * 0.5f + 0.5f).xyz;
	
	gl_FragColor = half4(color * iris,iris);
}

/******************************************************************************\
*
* Direct3D9
*
\******************************************************************************/

#elif DIRECT3D9

/*
 */
half4 main() : COLOR {
	
	return 0.0f;
}

/******************************************************************************\
*
* Direct3D10/Direct3D11
*
\******************************************************************************/

#elif DIRECT3D10 || DIRECT3D11

Texture2D s_texture_0 : register(t0);
Texture2D s_texture_1 : register(t1);

struct FRAGMENT_IN {
	float4 position : SV_POSITION;
	float4 texcoord_0 : TEXCOORD0;
};

/*
 */
float4 main(FRAGMENT_IN IN) : SV_TARGET {
	
	half iris = s_texture_1.Sample(s_sampler_1,IN.texcoord_0.zw).x;
	
	half3 color = s_texture_0.Sample(s_sampler_0,IN.texcoord_0.xy * 0.5f + 0.5f).xyz;
	
	return float4(color * iris,iris);
}

/******************************************************************************\
*
* PlayStation3
*
\******************************************************************************/

#elif PLAYSTATION3

/*
 */
half4 main() : COLOR {
	
	return 0.0f;
}

#endif