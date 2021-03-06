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


#ifndef __SC_NODE_H__
#define __SC_NODE_H__

#include "math/vector.h"
#include "math/matrix.h"
#include "core/tree.h"
#include "core/struct_mod.h"

typedef void(*sc_node_intersect_cb_t)(struct ngine_sc_node* _self, struct ngine_sc_node* _intersector);
typedef void(*sc_node_update_cb_t)(struct ngine_sc_node* _sc_node, float _time_elapsed);

struct intesect {
  sc_node_intersect_cb_t 	intersect_cb;
  
  uint32_t 			num_intersectors;
  struct ngine_sc_node** 	intersectors;
};

enum sc_obj_type {
  NGINE_SC_OBJ_NULL = 0,
  NGINE_SC_OBJ_ENTITY,
  NGINE_SC_OBJ_LIGHT,
  NGINE_SC_OBJ_CAMERA,
  NGINE_SC_OBJ_SPEAKER,
  NGINE_SC_OBJ_LISTENER,
  NGINE_SC_OBJ_TRIGGER
  //user defined types
};

enum {
  NGINE_TRANS_LOCAL = 0,
  NGINE_TRANS_PARENT,
  NGINE_TRANS_WORLD
};

struct ngine_sc_node;

struct ngine_sc_node* 	ngine_sc_node_create(struct ngine_scene* _scene, char* _name, int _type);
void 			ngine_sc_node_delete(struct ngine_sc_node* _self);

char* 			ngine_sc_node_name(struct ngine_sc_node* _self, const char* _name);

void 			ngine_sc_node_add_child(struct ngine_sc_node* _self, struct ngine_sc_node* _child);
void 			ngine_sc_node_remove_child(struct ngine_sc_node* _self, struct ngine_sc_node* _child);

void 			ngine_sc_node_attach(struct ngine_sc_node* _self, void* _obj);
void* 			ngine_sc_node_get_attached(struct ngine_sc_node* _self);

void 			ngine_sc_node_translate(struct ngine_sc_node* _self, vec3* _vec, int _relative);
void 			ngine_sc_node_rotate(struct ngine_sc_node* _self, quat* _orient, int _relative);

void 			ngine_sc_node_set_name(struct ngine_sc_node* _self, const char* _name);
void 			ngine_sc_node_set_pos(struct ngine_sc_node* _self, vec3* _pos, int _relative);
void 			ngine_sc_node_set_rot(struct ngine_sc_node* _self, quat* _orient, int _relative);

mat4 			ngine_sc_node_get_matrix(struct ngine_sc_node* _self);

void 			ngine_sc_node_add_update_cb(struct ngine_sc_node* _self, sc_node_update_cb_t _upd_cb);
void 			ngine_sc_node_remove_update_cb(struct ngine_sc_node* _self, sc_node_update_cb_t _upd_cb);

void 			ngine_sc_node_add_intersect_cb(struct ngine_sc_node* _self, sc_node_intersect_cb_t _intrsc_cb);
void 			ngine_sc_node_remove_intersect_cb(struct ngine_sc_node* _self, sc_node_intersect_cb_t _intrsc_cb);

#endif /* __SC_NODE_H__ */
