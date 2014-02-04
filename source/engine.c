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

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <memory.h>

#include <GL/glew.h>
#include <GL/gl.h>
#include <GLFW/glfw3.h>

#include "cntr/array.h"
#include "cntr/tree.h"
#include "cntr/list.h"

#include "math/matrix.h"
#include "math/vector.h"

#include "viewport.h"
#include "engine.h"
#include "camera.h"
#include "scene.h"
#include "sc_obj.h"
#include "entity.h"
#include "mesh.h"
#include "audio.h"
#include "render/hw_buffers.h"
#include "shader_prog.h"
#include "iofile.h"
#include "log.h"

//predef intern
void worker_handler(void* _self);
void update_obj_handler(void* _node);
void draw(struct scene* _scene, struct entity* _entity, vec3* _cswp);
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods);

int ngine_init(struct engine* _self, char* _win_name) {
  memset(_self, 0, sizeof(struct engine));
  
//   if(_win_name == 0) {
  if(!glfwInit())
    return -1;

    _self->window = glfwCreateWindow(640, 480, _win_name, NULL, NULL);
    if(!_self->window) {
      glfwTerminate();
      return -1;
    }
    glfwMakeContextCurrent(_self->window);
  
    glfwSetKeyCallback(_self->window, key_callback);
//   glfwSetMouseButtonCallback(_self->window);
  
  glewExperimental = GL_TRUE;
  int glew_err = glewInit();
  if(glew_err != GLEW_OK) {
    error(glewGetErrorString(glew_err));
    return 0;
  }
  
  // устанавливаем вьюпорт на все окно
        glViewport(0, 0, 640, 480);

        // параметры OpenGL
        glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
        glClearDepth(1.0f);
        glEnable(GL_DEPTH_TEST);
        glEnable(GL_CULL_FACE);
  
  
  //compile shaders
  debug("load shaders");
  struct shader_source sh_source;
  memset(&sh_source, 0, sizeof(sh_source));
  sh_source.vertex = file_rdbufp("media/materials/shaders/base_vert.glsl");
  sh_source.fragment = file_rdbufp("media/materials/shaders/base_frag.glsl");  
  sh_source.geometry = 0;
  
  debug("init shaders");
  ///TODO optimization, copy source of file in memory
  _self->shaders = malloc(sizeof(struct shader_prog));
  memset(_self->shaders, 0, sizeof(struct shader_prog));
  if(shader_prog_init(_self->shaders, "base", &sh_source)) {
    debug("base shader compilation succesfull");
  }
  //init shader uniforms, id
//   }// -norender
  
  //create threads
//   pthread_create(&_self->thr_physics, NULL, NULL, NULL);
// 
  //workers
  list_init(&_self->jobs);
  
  uint8_t max_workers = 4;
//   max_workers = get_num_cpu_cores() - 2;
  
  pthread_mutex_init(&_self->mutex_workers, NULL);
  
  _self->thr_workers = malloc(max_workers*sizeof(pthread_t));

//   for(uint8_t i = 0; i != max_workers; ++i) {
//     pthread_create(&_self->thr_workers[i], NULL, worker_handler, _self);
//   }
  
  return 1;
}

int ngine_frame(struct engine* _self, float _elapsed) {
  if(_self->active_render) {
    //for evry scene
    for(uint8_t i = 0; i < _self->num_scenes; ++i) {
//       cur_scene = _self->scenes;
      
      if(glfwWindowShouldClose(_self->window)) { return 0; }
      
// //       glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);//need cpu resources
// //       glClearColor(0.0f, 0.0f, 0.5f, 0.0f);

      tree_for_each((struct tree*)(_self->scenes->root_object), update_obj_handler);
  
      glfwSwapBuffers(_self->window);
      glfwPollEvents();
    }
  }
  
  return 1;
}

int ngine_shutdown(struct engine* _self) {
  glfwTerminate();
}

#ifndef GLEW_VERSION_4_4
#define GLEW_VERSION_4_4 0
#endif
void ngine_get_opengl_version(char* _ver) {
  if(GLEW_VERSION_4_4) { memcpy(_ver, "4.4", 4); }
  else if(GLEW_VERSION_4_3) { memcpy(_ver, "4.3", 4); }
  else if(GLEW_VERSION_4_2) { memcpy(_ver, "4.2", 4); }
  else if(GLEW_VERSION_4_1) { memcpy(_ver, "4.1", 4); }
  else if(GLEW_VERSION_4_0) { memcpy(_ver, "4.0", 4); }
  else if(GLEW_VERSION_3_3) { memcpy(_ver, "3.3", 4); }
  else if(GLEW_VERSION_3_2) { memcpy(_ver, "3.2", 4); }
  else if(GLEW_VERSION_3_1) { memcpy(_ver, "3.1", 4); }
  else if(GLEW_VERSION_3_0) { memcpy(_ver, "3.0", 4); }
  else if(GLEW_VERSION_2_1) { memcpy(_ver, "2.1", 4); }
  else if(GLEW_VERSION_2_0) { memcpy(_ver, "2.0", 4); }
  else if(GLEW_VERSION_1_5) { memcpy(_ver, "1.5", 4); }
  else if(GLEW_VERSION_1_4) { memcpy(_ver, "1.4", 4); }
  else if(GLEW_VERSION_1_3) { memcpy(_ver, "1.3", 4); }
  else if(GLEW_VERSION_1_2_1) { memcpy(_ver, "1.2.1", 6); }
  else if(GLEW_VERSION_1_2) { memcpy(_ver, "1.2", 4); }
  else if(GLEW_VERSION_1_1) { memcpy(_ver, "1.1", 4); }
  else { memcpy(_ver, "0.0", 4); }
}

//intern
void update_obj_handler(void* _node) {
  struct sc_obj* _obj = _node;
  
  if(_obj->engine->viewport->camera->updated) {
    vec3 cswp;
      vec3 world_pso;
      if(_obj->engine->viewport->camera->link.parent) {
	vec3* pso_parent = &((struct sc_obj*)_obj->engine->viewport->camera->link.parent)->last_pso;
	vec3* pso_child = qrot(&_obj->engine->viewport->camera->orient, &_obj->engine->viewport->camera->pos);
	vec3_sum_of(&world_pso, pso_parent, pso_child);
      } else {
	vec3* pso_child = qrot(&_obj->engine->viewport->camera->orient, &_obj->engine->viewport->camera->pos);
	world_pso = *pso_child;
      }
      _obj->engine->viewport->camera->last_pso = world_pso;//TODO fix
  }
  
  if(_obj->updated) {
    if(memcmp(_obj->type, "entity", 6)==0 && sc_obj_check_visible(_obj, _obj->engine->viewport->camera)) {
      //http://www.flipcode.com/archives/Frustum_Culling.shtml
      //http://blog.makingartstudios.com/?p=155
      //update model_view_proj_mat
      debug("procces entity obj\n");
      
//       pso = pos*scale*rot
//       world_pso = pso+child_pso
//       cam_space_world_pso = world_pso+(-cam_pso)
//       perspective_cswp = get_perspective(cam_space_world_pso, tan(fov/2))
      
      vec3 cswp;
      vec3 world_pso;
      if(_obj->link.parent) {
	vec3* pso_parent = &((struct sc_obj*)_obj->link.parent)->last_pso;
	vec3* pso_child = &_obj->pos;
	vec3_sum_of(&world_pso, pso_parent, pso_child);
	vec3_diff_of(&cswp, &world_pso, &_obj->engine->viewport->camera->last_pso);
      } else {
	vec3* pso_child = &_obj->pos;
	vec3_diff_of(&cswp, pso_child, &_obj->engine->viewport->camera->last_pso);
	world_pso = *pso_child;
      }
      _obj->last_pso = world_pso;
      
      draw(_obj->engine->scenes, ((struct entity*)_obj->typed_objs), &_obj->pos);//need frustum optimization
    }
    else if(memcmp(_obj->type, "camera", 7)) {printf("procces camera obj\n");}
    else if(memcmp(_obj->type, "light", 6)) {printf("procces light obj\n");}
    else if(memcmp(_obj->type, "null", 6)) {printf("procces null obj\n");}
  }
  
  _obj->updated = 0;
}

void draw(struct scene* _scene, struct entity* _entity, vec3* _cswp) {
  glUseProgram(_scene->cur_shader->id);
  glUniformMatrix4fv(_scene->cur_shader->uniforms->id, 1, GL_TRUE, _cswp);
  
  //push uniforms to shader
  //use shader
  
//   glEnable(GL_DEPTH_TEST);
  glBindVertexArray(_entity->hw->vao);
  
//         const unsigned int MaterialIndex = _entity->material[i];
// 
//         assert(MaterialIndex < m_Textures.size());
//         
//         if (m_Textures[MaterialIndex]) {
//             m_Textures[MaterialIndex]->Bind(GL_TEXTURE0);
//         }

	glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, _entity->hw->index);
	glDrawElements(GL_TRIANGLES, 
                               _entity->mesh->num_indices, 
                               GL_UNSIGNED_INT,
                               (void*)(0));
  
// 	OPENGL_CHECK_FOR_ERRORS();
	
  glBindVertexArray(NULL);
}

int sc_obj_check_visible(aabb* _aabb, vec3* _proj_mat) {
//   vec3 projected[8];
//   
//   for(uint8_t i = 0; i != 8; ++i) {
//     vec3_mat4_mul_of(&projected[i], &_aabb->val[i], _proj_mat);
//     if(projected[i].x > 1.f || projected[i].x < -1.f ||
//        projected[i].y > 1.f || projected[i].y < -1.f ||
//        projected[i].z > 1.f || projected[i].z < -1.f) { return 0; } else { return 1; }
//   }
  return 1;
}

void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods) {
  if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
    glfwSetWindowShouldClose(window, GL_TRUE);
  else if(key == GLFW_KEY_A && action == GLFW_PRESS)
    sound_play_wav("test.wav");
}

void worker_handler(void* _self) {
  struct engine* _engine = (struct engine*)_self;
  struct list* _jobs = (struct list*)&_engine->jobs;
  struct job* item;
  while(1) {
    while(!list_empty(_jobs)) {
      pthread_mutex_lock(&_engine->mutex_workers);
      list_for_each(item, _jobs, link) {
	pthread_mutex_unlock(&_engine->mutex_workers);
	item->handler(item->args);
	pthread_mutex_lock(&_engine->mutex_workers);
	list_remove((struct list*)item);
      }
    }
    usleep(3600/_engine->fixed_fps);//wait for new jobs
  }
}
