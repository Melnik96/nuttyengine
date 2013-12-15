/* Copyright (C) 2005-2010, Unigine Corp. All rights reserved.
 *
 * File:    fragment_stereo_iz3d.shader
 * Desc:    Post stereo iZ3D shader
 * Version: 1.03
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
	
	half3 color_0 = pow(half3(texture2D(s_texture_0,gl_TexCoord[0].xy).xyz),half3(2.2f));
	half3 color_1 = pow(half3(texture2D(s_texture_1,gl_TexCoord[0].xy).xyz),half3(2.2f));
	
	half3 back = (color_0 + color_1) * 0.5f;
	
	half luminance_0 = dot(color_0,half3(1.0f));
	half luminance_1 = dot(color_1,half3(1.0f));
	half front = luminance_0 + luminance_1;
	front = (front > 0.003f) ? luminance_1 / front : 0.5f;
	
	gl_FragData[0] = half4(pow(back,half3(1.0f / 2.2f)),1.0f);
	gl_FragData[1] = half4(pow(front,1.0f / 2.2f));
}

/******************************************************************************\
*
* Direct3D9
*
\******************************************************************************/

#elif DIRECT3D9

struct FRAGMENT_IN {
	float2 texcoord_0 : TEXCOORD0;
};

struct FRAGMENT_OUT {
	half4 color_0 : COLOR0;
	half4 color_1 : COLOR1;
};

/*
 */
FRAGMENT_OUT main(FRAGMENT_IN IN) {
	
	FRAGMENT_OUT OUT;
	
	half3 color_0 = pow(tex2D(s_texture_0,IN.texcoord_0).xyz,2.2f);
	half3 color_1 = pow(tex2D(s_texture_1,IN.texcoord_0).xyz,2.2f);
	
	half3 back = (color_0 + color_1) * 0.5f;
	
	half luminance_0 = dot(color_0,1.0f);
	half luminance_1 = dot(color_1,1.0f);
	half front = luminance_0 + luminance_1;
	front = (front > 0.003f) ? luminance_1 / front : 0.5f;
	
	OUT.color_0 = half4(pow(back,1.0f / 2.2f),1.0f);
	OUT.color_1 = pow(front,1.0f / 2.2f);
	
	return OUT;
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
	float2 texcoord_0 : TEXCOORD0;
};

struct FRAGMENT_OUT {
	float3 color_0 : SV_TARGET0;
	float3 color_1 : SV_TARGET1;
};

/*
 */
FRAGMENT_OUT main(FRAGMENT_IN IN) {
	
	FRAGMENT_OUT OUT;
	
	float3 color_0 = pow(s_texture_0.Sample(s_sampler_0,IN.texcoord_0).xyz,2.2f);
	float3 color_1 = pow(s_texture_1.Sample(s_sampler_1,IN.texcoord_0).xyz,2.2f);
	
	float3 back = (color_0 + color_1) * 0.5f;
	
	float luminance_0 = dot(color_0,1.0f);
	float luminance_1 = dot(color_1,1.0f);
	float front = luminance_0 + luminance_1;
	front = (front > 0.003f) ? luminance_1 / front : 0.5f;
	
	OUT.color_0 = pow(back,1.0f / 2.2f);
	OUT.color_1 = pow(front,1.0f / 2.2f);
	
	return OUT;
}

#endif
