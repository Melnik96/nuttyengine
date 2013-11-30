/* Copyright (C) 2005-2010, Unigine Corp. All rights reserved.
 *
 * File:    vertex_base_wireframe.h
 * Desc:    Base wireframe shader
 * Version: 1.05
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
	
	#ifndef VERTEX_BASE_WIREFRAME
		#define VERTEX_BASE_WIREFRAME
		
	#else
		
		gl_Position = getPosition(vertex);
		
		#ifdef USE_TESSELLATION && TESSELLATION
			gl_TexCoord[0].xy = texcoord.xy;
		#endif
		
	#endif
	
/******************************************************************************\
*
* Direct3D9
*
\******************************************************************************/

#elif DIRECT3D9
	
	#ifndef VERTEX_BASE_WIREFRAME
		#define VERTEX_BASE_WIREFRAME
		
		struct VERTEX_OUT {
			float4 position : POSITION;
		};
		
	#else
		
		OUT.position = getPosition(vertex);
		
	#endif
	
/******************************************************************************\
*
* Direct3D10/Direct3D11
*
\******************************************************************************/

#elif DIRECT3D10 || DIRECT3D11
	
	#ifndef VERTEX_BASE_WIREFRAME
		#define VERTEX_BASE_WIREFRAME
		
		struct VERTEX_OUT {
			float4 position : OUT_POSITION;
			#ifdef USE_TESSELLATION && TESSELLATION
				float2 texcoord_0 : TEXCOORD0;
				float4 texcoord_9 : TEXCOORD9;
			#endif
		};
		
	#else
		
		OUT.position = getPosition(vertex);
		
		#ifdef USE_TESSELLATION && TESSELLATION
			OUT.texcoord_0 = texcoord.xy;
		#endif
		
	#endif
	
/******************************************************************************\
*
* PlayStation3
*
\******************************************************************************/

#elif PLAYSTATION3
	
	#ifndef VERTEX_BASE_WIREFRAME
		#define VERTEX_BASE_WIREFRAME
		
		struct VERTEX_OUT {
			float4 position : POSITION;
		};
		
	#else
		
		OUT.position = getPosition(vertex);
		
	#endif
	
#endif