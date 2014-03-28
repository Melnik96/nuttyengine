/* Copyright (C) 2005-2010, Unigine Corp. All rights reserved.
 *
 * File:    vertex_surface_light_spot.h
 * Desc:    Water surface light spot shader
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

/******************************************************************************\
*
* OpenGL
*
\******************************************************************************/

#ifdef OPENGL
	
	#ifndef VERTEX_SURFACE_LIGHT_SPOT
		#define VERTEX_SURFACE_LIGHT_SPOT
		
	#else
			
		gl_Position = getPosition(vertex);
		
		gl_TexCoord[0] = float4(texcoord,s_projection[1].y,gl_Position.w);
		
		gl_TexCoord[1].xyz = normal;
		
		gl_TexCoord[2] = direction;
		
		gl_TexCoord[3] = vertex;
		
		normal *= s_light_front;
		
		gl_TexCoord[4].xyz = float3(tangent.x,binormal.x,normal.x);
		gl_TexCoord[5].xyz = float3(tangent.y,binormal.y,normal.y);
		gl_TexCoord[6].xyz = float3(tangent.z,binormal.z,normal.z);
		
		gl_TexCoord[7] = getProjection(gl_Position);
		
	#endif
	
/******************************************************************************\
*
* Direct3D9
*
\******************************************************************************/

#elif DIRECT3D9
	
	#ifndef VERTEX_SURFACE_LIGHT_SPOT
		#define VERTEX_SURFACE_LIGHT_SPOT
		
		struct VERTEX_OUT {
			float4 position : POSITION;
			float4 texcoord_0 : TEXCOORD0;
			float3 texcoord_1 : TEXCOORD1;
			float4 texcoord_2 : TEXCOORD2;
			float4 texcoord_3 : TEXCOORD3;
			float3 texcoord_4 : TEXCOORD4;
			float3 texcoord_5 : TEXCOORD5;
			float3 texcoord_6 : TEXCOORD6;
			float4 texcoord_7 : TEXCOORD7;
		};
		
	#else
		
		OUT.position = getPosition(vertex);
		
		OUT.texcoord_0 = float4(texcoord,s_projection[1].y,OUT.position.w);
		
		OUT.texcoord_1 = normal;
		
		OUT.texcoord_2 = direction;
		
		OUT.texcoord_3 = vertex;
		
		normal *= s_light_front;
		
		OUT.texcoord_4 = float3(tangent.x,binormal.x,normal.x);
		OUT.texcoord_5 = float3(tangent.y,binormal.y,normal.y);
		OUT.texcoord_6 = float3(tangent.z,binormal.z,normal.z);
		
		OUT.texcoord_7 = getProjection(OUT.position);
		
	#endif
	
/******************************************************************************\
*
* Direct3D10/Direct3D11
*
\******************************************************************************/

#elif DIRECT3D10 || DIRECT3D11
	
	#ifndef VERTEX_SURFACE_LIGHT_SPOT
		#define VERTEX_SURFACE_LIGHT_SPOT
		
		struct VERTEX_OUT {
			float4 position : SV_POSITION;
			float4 texcoord_0 : TEXCOORD0;
			float3 texcoord_1 : TEXCOORD1;
			float4 texcoord_2 : TEXCOORD2;
			float4 texcoord_3 : TEXCOORD3;
			float3 texcoord_4 : TEXCOORD4;
			float3 texcoord_5 : TEXCOORD5;
			float3 texcoord_6 : TEXCOORD6;
			float4 texcoord_7 : TEXCOORD7;
			float4 texcoord_8 : TEXCOORD8;
			float4 texcoord_9 : TEXCOORD9;
		};
		
		cbuffer shader_light_spot_parameters {
			float4 normal_0_transform;
			float4 normal_1_transform;
			float4 normal_2_transform;
			float4 normal_3_transform;
			float4 foam_0_transform;
			float4 foam_1_transform;
		};
		
	#else
		
		OUT.position = getPosition(vertex);
		
		OUT.texcoord_0 = float4(texcoord,s_projection[1].y,OUT.position.w);
		
		OUT.texcoord_1 = normal;
		
		OUT.texcoord_2 = direction;
		
		OUT.texcoord_3 = vertex;
		
		normal *= s_light_front;
		
		OUT.texcoord_4 = float3(tangent.x,binormal.x,normal.x);
		OUT.texcoord_5 = float3(tangent.y,binormal.y,normal.y);
		OUT.texcoord_6 = float3(tangent.z,binormal.z,normal.z);
		
		OUT.texcoord_7.xy = texcoord * normal_0_transform.xy + normal_0_transform.zw;
		OUT.texcoord_7.zw = texcoord * normal_1_transform.xy + normal_1_transform.zw;
		OUT.texcoord_8.xy = texcoord * normal_2_transform.xy + normal_2_transform.zw;
		OUT.texcoord_8.zw = texcoord * normal_3_transform.xy + normal_3_transform.zw;
		
		OUT.texcoord_9.xy = texcoord * foam_0_transform.xy + foam_0_transform.zw;
		OUT.texcoord_9.zw = texcoord * foam_1_transform.xy + foam_1_transform.zw;
		
	#endif
	
/******************************************************************************\
*
* PlayStation3
*
\******************************************************************************/

#elif PLAYSTATION3
	
	#ifndef VERTEX_SURFACE_LIGHT_SPOT
		#define VERTEX_SURFACE_LIGHT_SPOT
		
		struct VERTEX_OUT {
			float4 position : POSITION;
			float4 texcoord_0 : TEXCOORD0;
			float3 texcoord_1 : TEXCOORD1;
			float4 texcoord_2 : TEXCOORD2;
			float4 texcoord_3 : TEXCOORD3;
			float3 texcoord_4 : TEXCOORD4;
			float3 texcoord_5 : TEXCOORD5;
			float3 texcoord_6 : TEXCOORD6;
			float4 texcoord_7 : TEXCOORD7;
			float4 texcoord_8 : TEXCOORD8;
			float4 texcoord_9 : TEXCOORD9;
		};
		
		uniform float4 normal_0_transform;
		uniform float4 normal_1_transform;
		uniform float4 normal_2_transform;
		uniform float4 normal_3_transform;
		
	#else
		
		OUT.position = getPosition(vertex);
		
		OUT.texcoord_0 = float4(texcoord,s_projection[1].y,OUT.position.w);
		
		OUT.texcoord_1 = normal;
		
		OUT.texcoord_2 = direction;
		
		OUT.texcoord_3 = vertex;
		
		normal *= s_light_front;
		
		OUT.texcoord_4 = float3(tangent.x,binormal.x,normal.x);
		OUT.texcoord_5 = float3(tangent.y,binormal.y,normal.y);
		OUT.texcoord_6 = float3(tangent.z,binormal.z,normal.z);
		
		OUT.texcoord_7.xy = texcoord * normal_0_transform.xy + normal_0_transform.zw;
		OUT.texcoord_7.zw = texcoord * normal_1_transform.xy + normal_1_transform.zw;
		OUT.texcoord_8.xy = texcoord * normal_2_transform.xy + normal_2_transform.zw;
		OUT.texcoord_8.zw = texcoord * normal_3_transform.xy + normal_3_transform.zw;
		
		OUT.texcoord_9 = getProjection(OUT.position);
		
	#endif
	
#endif