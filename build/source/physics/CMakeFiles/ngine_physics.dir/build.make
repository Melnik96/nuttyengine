# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/melnik/projects/nutty/ngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/melnik/projects/nutty/ngine/build

# Include any dependencies generated for this target.
include source/physics/CMakeFiles/ngine_physics.dir/depend.make

# Include the progress variables for this target.
include source/physics/CMakeFiles/ngine_physics.dir/progress.make

# Include the compile flags for this target's objects.
include source/physics/CMakeFiles/ngine_physics.dir/flags.make

source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o: source/physics/CMakeFiles/ngine_physics.dir/flags.make
source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o: ../source/physics/rb_bullet_api.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nutty/ngine/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o -c /home/melnik/projects/nutty/ngine/source/physics/rb_bullet_api.cpp

source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.i"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/melnik/projects/nutty/ngine/source/physics/rb_bullet_api.cpp > CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.i

source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.s"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/melnik/projects/nutty/ngine/source/physics/rb_bullet_api.cpp -o CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.s

source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o.requires:
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o.requires

source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o.provides: source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o.requires
	$(MAKE) -f source/physics/CMakeFiles/ngine_physics.dir/build.make source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o.provides.build
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o.provides

source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o.provides.build: source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o

source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o: source/physics/CMakeFiles/ngine_physics.dir/flags.make
source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o: ../source/physics/sc_node_phys.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nutty/ngine/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ngine_physics.dir/sc_node_phys.c.o   -c /home/melnik/projects/nutty/ngine/source/physics/sc_node_phys.c

source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ngine_physics.dir/sc_node_phys.c.i"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nutty/ngine/source/physics/sc_node_phys.c > CMakeFiles/ngine_physics.dir/sc_node_phys.c.i

source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ngine_physics.dir/sc_node_phys.c.s"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nutty/ngine/source/physics/sc_node_phys.c -o CMakeFiles/ngine_physics.dir/sc_node_phys.c.s

source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o.requires:
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o.requires

source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o.provides: source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o.requires
	$(MAKE) -f source/physics/CMakeFiles/ngine_physics.dir/build.make source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o.provides.build
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o.provides

source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o.provides.build: source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o

source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o: source/physics/CMakeFiles/ngine_physics.dir/flags.make
source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o: ../source/physics/scene_phys.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nutty/ngine/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ngine_physics.dir/scene_phys.c.o   -c /home/melnik/projects/nutty/ngine/source/physics/scene_phys.c

source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ngine_physics.dir/scene_phys.c.i"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nutty/ngine/source/physics/scene_phys.c > CMakeFiles/ngine_physics.dir/scene_phys.c.i

source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ngine_physics.dir/scene_phys.c.s"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nutty/ngine/source/physics/scene_phys.c -o CMakeFiles/ngine_physics.dir/scene_phys.c.s

source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o.requires:
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o.requires

source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o.provides: source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o.requires
	$(MAKE) -f source/physics/CMakeFiles/ngine_physics.dir/build.make source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o.provides.build
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o.provides

source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o.provides.build: source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o

source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o: source/physics/CMakeFiles/ngine_physics.dir/flags.make
source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o: ../source/physics/phys_rigidbody_mod.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nutty/ngine/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o   -c /home/melnik/projects/nutty/ngine/source/physics/phys_rigidbody_mod.c

source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.i"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nutty/ngine/source/physics/phys_rigidbody_mod.c > CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.i

source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.s"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nutty/ngine/source/physics/phys_rigidbody_mod.c -o CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.s

source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o.requires:
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o.requires

source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o.provides: source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o.requires
	$(MAKE) -f source/physics/CMakeFiles/ngine_physics.dir/build.make source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o.provides.build
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o.provides

source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o.provides.build: source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o

# Object files for target ngine_physics
ngine_physics_OBJECTS = \
"CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o" \
"CMakeFiles/ngine_physics.dir/sc_node_phys.c.o" \
"CMakeFiles/ngine_physics.dir/scene_phys.c.o" \
"CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o"

# External object files for target ngine_physics
ngine_physics_EXTERNAL_OBJECTS =

../lib/x86/libngine_physics.so: source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o
../lib/x86/libngine_physics.so: source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o
../lib/x86/libngine_physics.so: source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o
../lib/x86/libngine_physics.so: source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o
../lib/x86/libngine_physics.so: source/physics/CMakeFiles/ngine_physics.dir/build.make
../lib/x86/libngine_physics.so: /usr/lib/libBulletCollision.so
../lib/x86/libngine_physics.so: /usr/lib/libBulletDynamics.so
../lib/x86/libngine_physics.so: source/physics/CMakeFiles/ngine_physics.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../../lib/x86/libngine_physics.so"
	cd /home/melnik/projects/nutty/ngine/build/source/physics && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ngine_physics.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
source/physics/CMakeFiles/ngine_physics.dir/build: ../lib/x86/libngine_physics.so
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/build

source/physics/CMakeFiles/ngine_physics.dir/requires: source/physics/CMakeFiles/ngine_physics.dir/rb_bullet_api.cpp.o.requires
source/physics/CMakeFiles/ngine_physics.dir/requires: source/physics/CMakeFiles/ngine_physics.dir/sc_node_phys.c.o.requires
source/physics/CMakeFiles/ngine_physics.dir/requires: source/physics/CMakeFiles/ngine_physics.dir/scene_phys.c.o.requires
source/physics/CMakeFiles/ngine_physics.dir/requires: source/physics/CMakeFiles/ngine_physics.dir/phys_rigidbody_mod.c.o.requires
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/requires

source/physics/CMakeFiles/ngine_physics.dir/clean:
	cd /home/melnik/projects/nutty/ngine/build/source/physics && $(CMAKE_COMMAND) -P CMakeFiles/ngine_physics.dir/cmake_clean.cmake
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/clean

source/physics/CMakeFiles/ngine_physics.dir/depend:
	cd /home/melnik/projects/nutty/ngine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/melnik/projects/nutty/ngine /home/melnik/projects/nutty/ngine/source/physics /home/melnik/projects/nutty/ngine/build /home/melnik/projects/nutty/ngine/build/source/physics /home/melnik/projects/nutty/ngine/build/source/physics/CMakeFiles/ngine_physics.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : source/physics/CMakeFiles/ngine_physics.dir/depend

