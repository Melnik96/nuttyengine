/* Copyright (C) 2005-2010, Unigine Corp. All rights reserved.
 *
 * File:    vertex_leaf_light_world.h
 * Desc:    Mesh leaf light world shader
 * Version: 1.10
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
	
	#ifndef VERTEX_LEAF_LIGHT_WORLD
		#define VERTEX_LEAF_LIGHT_WORLD
		
	#else
		
		gl_Position = getPosition(vertex);
		
		gl_TexCoord[0] = texcoord;
		
		float3 light_direction = s_light_direction;
		gl_TexCoord[1].x = dot(light_direction,tangent);
		gl_TexCoord[1].y = dot(light_direction,binormal);
		gl_TexCoord[1].z = dot(light_direction,normal) * s_light_front;
		
		#ifdef PHONG
			float3 camera_direction = s_camera_position - vertex.xyz;
			gl_TexCoord[2].x = dot(camera_direction,tangent);
			gl_TexCoord[2].y = dot(camera_direction,binormal);
			gl_TexCoord[2].z = dot(camera_direction,normal) * s_light_front;
		#endif
		
		#ifdef SHADOW
			gl_TexCoord[4] = vertex;
			#ifdef USE_TRANSLUCENT
				gl_TexCoord[5].x = dot(s_light_shadow_offsets[0].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				gl_TexCoord[5].y = dot(s_light_shadow_offsets[1].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				gl_TexCoord[5].z = dot(s_light_shadow_offsets[2].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				gl_TexCoord[5].w = dot(s_light_shadow_offsets[3].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
			#endif
		#endif
		
		#ifdef USE_ALPHA_FADE && ALPHA_FADE
			gl_TexCoord[7].x = getAlphaFadeScale(bound_sphere);
		#endif
		
	#endif
	
/******************************************************************************\
*
* Direct3D9
*
\******************************************************************************/

#elif DIRECT3D9
	
	#ifndef VERTEX_LEAF_LIGHT_WORLD
		#define VERTEX_LEAF_LIGHT_WORLD
		
		struct VERTEX_OUT {
			float4 position : POSITION;
			float4 texcoord_0 : TEXCOORD0;
			float3 texcoord_1 : TEXCOORD1;
			#ifdef PHONG
				float3 texcoord_2 : TEXCOORD2;
			#endif
			#ifdef SHADOW
				float4 texcoord_4 : TEXCOORD4;
				#ifdef USE_TRANSLUCENT
					float4 texcoord_5 : TEXCOORD5;
				#endif
			#endif
			#ifdef NOISE
				float3 texcoord_6 : TEXCOORD6;
			#endif
			#ifdef USE_ALPHA_FADE && ALPHA_FADE
				float1 texcoord_7 : TEXCOORD7;
			#endif
		};
		
	#else
		
		OUT.position = getPosition(vertex);
		
		OUT.texcoord_0 = texcoord;
		
		float3 light_direction = s_light_direction;
		OUT.texcoord_1.x = dot(light_direction,tangent);
		OUT.texcoord_1.y = dot(light_direction,binormal);
		OUT.texcoord_1.z = dot(light_direction,normal) * s_light_front;
		
		#ifdef PHONG
			float3 camera_direction = s_camera_position - vertex.xyz;
			OUT.texcoord_2.x = dot(camera_direction,tangent);
			OUT.texcoord_2.y = dot(camera_direction,binormal);
			OUT.texcoord_2.z = dot(camera_direction,normal) * s_light_front;
		#endif
		
		#ifdef SHADOW
			OUT.texcoord_4 = vertex;
			#ifdef USE_TRANSLUCENT
				OUT.texcoord_5.x = dot(s_light_shadow_offsets[0].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				OUT.texcoord_5.y = dot(s_light_shadow_offsets[1].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				OUT.texcoord_5.z = dot(s_light_shadow_offsets[2].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				OUT.texcoord_5.w = dot(s_light_shadow_offsets[3].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
			#endif
		#endif
		
		#ifdef USE_ALPHA_FADE && ALPHA_FADE
			OUT.texcoord_7.x = getAlphaFadeScale(bound_sphere);
		#endif
		
	#endif
	
/******************************************************************************\
*
* Direct3D10/Direct3D11
*
\******************************************************************************/

#elif DIRECT3D10 || DIRECT3D11
	
	#ifndef VERTEX_LEAF_LIGHT_WORLD
		#define VERTEX_LEAF_LIGHT_WORLD
		
		struct VERTEX_OUT {
			float4 position : OUT_POSITION;
			float4 texcoord_0 : TEXCOORD0;
			float3 texcoord_1 : TEXCOORD1;
			#ifdef PHONG
				float3 texcoord_2 : TEXCOORD2;
			#endif
			#ifdef SHADOW
				float4 texcoord_4 : TEXCOORD4;
				#ifdef USE_TRANSLUCENT
					float4 texcoord_5 : TEXCOORD5;
				#endif
			#endif
			#ifdef NOISE
				float3 texcoord_6 : TEXCOORD6;
			#endif
			#ifdef USE_ALPHA_FADE && ALPHA_FADE
				float1 texcoord_9 : TEXCOORD9;
			#endif
		};
		
	#else
		
		OUT.position = getPosition(vertex);
		
		OUT.texcoord_0 = texcoord;
		
		float3 light_direction = s_light_direction;
		OUT.texcoord_1.x = dot(light_direction,tangent);
		OUT.texcoord_1.y = dot(light_direction,binormal);
		OUT.texcoord_1.z = dot(light_direction,normal) * s_light_front;
		
		#ifdef PHONG
			float3 camera_direction = s_camera_position - vertex.xyz;
			OUT.texcoord_2.x = dot(camera_direction,tangent);
			OUT.texcoord_2.y = dot(camera_direction,binormal);
			OUT.texcoord_2.z = dot(camera_direction,normal) * s_light_front;
		#endif
		
		#ifdef SHADOW
			OUT.texcoord_4 = vertex;
			#ifdef USE_TRANSLUCENT
				OUT.texcoord_5.x = dot(s_light_shadow_offsets[0].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				OUT.texcoord_5.y = dot(s_light_shadow_offsets[1].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				OUT.texcoord_5.z = dot(s_light_shadow_offsets[2].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				OUT.texcoord_5.w = dot(s_light_shadow_offsets[3].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
			#endif
		#endif
		
		#ifdef USE_ALPHA_FADE && ALPHA_FADE
			OUT.texcoord_9.x = getAlphaFadeScale(bound_sphere);
		#endif
		
	#endif
	
/******************************************************************************\
*
* PlayStation3
*
\******************************************************************************/

#elif PLAYSTATION3
	
	#ifndef VERTEX_LEAF_LIGHT_WORLD
		#define VERTEX_LEAF_LIGHT_WORLD
		
		struct VERTEX_OUT {
			float4 position : POSITION;
			float4 texcoord_0 : TEXCOORD0;
			float3 texcoord_1 : TEXCOORD1;
			#ifdef PHONG
				float3 texcoord_2 : TEXCOORD2;
			#endif
			#ifdef SHADOW
				float4 texcoord_4 : TEXCOORD4;
				float4 texcoord_5 : TEXCOORD5;
				float4 texcoord_6 : TEXCOORD6;
				#ifdef USE_TRANSLUCENT
					float4 texcoord_7 : TEXCOORD7;
				#endif
			#endif
			#ifdef NOISE
				float3 texcoord_8 : TEXCOORD8;
			#endif
			#ifdef USE_ALPHA_FADE && ALPHA_FADE
				float1 texcoord_9 : TEXCOORD9;
			#endif
		};
		
	#else
		
		OUT.position = getPosition(vertex);
		
		OUT.texcoord_0 = texcoord;
		
		float3 light_direction = s_light_direction;
		OUT.texcoord_1.x = dot(light_direction,tangent);
		OUT.texcoord_1.y = dot(light_direction,binormal);
		OUT.texcoord_1.z = dot(light_direction,normal) * s_light_front;
		
		#ifdef PHONG
			float3 camera_direction = s_camera_position - vertex.xyz;
			OUT.texcoord_2.x = dot(camera_direction,tangent);
			OUT.texcoord_2.y = dot(camera_direction,binormal);
			OUT.texcoord_2.z = dot(camera_direction,normal) * s_light_front;
		#endif
		
		#ifdef SHADOW
			OUT.texcoord_4 = vertex;
			OUT.texcoord_5.x = dot(s_light_shadow_projections[0][0],vertex);
			OUT.texcoord_5.y = dot(s_light_shadow_projections[0][1],vertex);
			OUT.texcoord_5.z = dot(s_light_shadow_projections[1][0],vertex);
			OUT.texcoord_5.w = dot(s_light_shadow_projections[1][1],vertex);
			OUT.texcoord_6.x = dot(s_light_shadow_projections[2][0],vertex);
			OUT.texcoord_6.y = dot(s_light_shadow_projections[2][1],vertex);
			OUT.texcoord_6.z = dot(s_light_shadow_projections[3][0],vertex);
			OUT.texcoord_6.w = dot(s_light_shadow_projections[3][1],vertex);
			#ifdef USE_TRANSLUCENT
				OUT.texcoord_7.x = dot(s_light_shadow_offsets[0].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				OUT.texcoord_7.y = dot(s_light_shadow_offsets[1].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				OUT.texcoord_7.z = dot(s_light_shadow_offsets[2].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
				OUT.texcoord_7.w = dot(s_light_shadow_offsets[3].xyz - vertex.xyz,s_light_direction) * s_light_shadow_iradius.x;
			#endif
		#endif
		
		#ifdef USE_ALPHA_FADE && ALPHA_FADE
			OUT.texcoord_9.x = getAlphaFadeScale(bound_sphere);
		#endif
		
	#endif
	
#endif
