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

#ifndef SHADER_PROG_H
#define SHADER_PROG_H
#include <stdint.h>

enum gl_shader_types {
  GLST_VERTEX = 0,
  GLST_FRAGMENT = 1
};

struct shader_source {
  char* vertex;
  char* geometry;
  char* fragment;
};

struct shader_uniform {
  char     name[32];
  uint32_t id;
};

struct shader_prog {
  char 			 name[32];
  uint32_t 		 id;
  struct shader_uniform* uniforms;
};

int shader_prog_init(struct shader_prog* _prog, const char* _name, struct shader_source* _sources);

#endif // SHADER_PROG_H
