/*
 * <one line to give the program's name and a brief idea of what it does.>
 * Copyright (C) 2013  <copyright holder> <email>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

/* inclusion guard */
#ifndef __MATERIAL_H__
#define __MATERIAL_H__

#include "math/vector.h"

struct ngine_material {
  char* name;
  
  vec3 ambient_color;
  vec3 difuse_color;
  vec3 specular_color;
  vec3 emissive_color;// light
  
  struct ngine_texture* tex_color;
  struct ngine_texture* tex_hight;
  struct ngine_texture* tex_difuse;
  struct ngine_texture* tex_specular;
  
  /**
   * if tech == NULL then use default renderer techniqueue.
   * techs could be more for compatibility with diffrent renderer techs.
   */
  struct ngine_tech* tech;
};

struct ngine_material* ngine_material_create();

#endif /* __MATERIAL_H__ */
