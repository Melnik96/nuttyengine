# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/melnik/projects/nuttyengine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/melnik/projects/nuttyengine/build

# Include any dependencies generated for this target.
include CMakeFiles/nuttyengine.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nuttyengine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nuttyengine.dir/flags.make

CMakeFiles/nuttyengine.dir/source/dynlib.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/dynlib.c.o: ../source/dynlib.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/dynlib.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/dynlib.c.o   -c /home/melnik/projects/nuttyengine/source/dynlib.c

CMakeFiles/nuttyengine.dir/source/dynlib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/dynlib.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/dynlib.c > CMakeFiles/nuttyengine.dir/source/dynlib.c.i

CMakeFiles/nuttyengine.dir/source/dynlib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/dynlib.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/dynlib.c -o CMakeFiles/nuttyengine.dir/source/dynlib.c.s

CMakeFiles/nuttyengine.dir/source/dynlib.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/dynlib.c.o.requires

CMakeFiles/nuttyengine.dir/source/dynlib.c.o.provides: CMakeFiles/nuttyengine.dir/source/dynlib.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/dynlib.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/dynlib.c.o.provides

CMakeFiles/nuttyengine.dir/source/dynlib.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/dynlib.c.o

CMakeFiles/nuttyengine.dir/source/engine.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/engine.c.o: ../source/engine.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/engine.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/engine.c.o   -c /home/melnik/projects/nuttyengine/source/engine.c

CMakeFiles/nuttyengine.dir/source/engine.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/engine.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/engine.c > CMakeFiles/nuttyengine.dir/source/engine.c.i

CMakeFiles/nuttyengine.dir/source/engine.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/engine.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/engine.c -o CMakeFiles/nuttyengine.dir/source/engine.c.s

CMakeFiles/nuttyengine.dir/source/engine.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/engine.c.o.requires

CMakeFiles/nuttyengine.dir/source/engine.c.o.provides: CMakeFiles/nuttyengine.dir/source/engine.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/engine.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/engine.c.o.provides

CMakeFiles/nuttyengine.dir/source/engine.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/engine.c.o

CMakeFiles/nuttyengine.dir/source/entity.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/entity.c.o: ../source/entity.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/entity.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/entity.c.o   -c /home/melnik/projects/nuttyengine/source/entity.c

CMakeFiles/nuttyengine.dir/source/entity.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/entity.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/entity.c > CMakeFiles/nuttyengine.dir/source/entity.c.i

CMakeFiles/nuttyengine.dir/source/entity.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/entity.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/entity.c -o CMakeFiles/nuttyengine.dir/source/entity.c.s

CMakeFiles/nuttyengine.dir/source/entity.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/entity.c.o.requires

CMakeFiles/nuttyengine.dir/source/entity.c.o.provides: CMakeFiles/nuttyengine.dir/source/entity.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/entity.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/entity.c.o.provides

CMakeFiles/nuttyengine.dir/source/entity.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/entity.c.o

CMakeFiles/nuttyengine.dir/source/scene.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/scene.c.o: ../source/scene.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/scene.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/scene.c.o   -c /home/melnik/projects/nuttyengine/source/scene.c

CMakeFiles/nuttyengine.dir/source/scene.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/scene.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/scene.c > CMakeFiles/nuttyengine.dir/source/scene.c.i

CMakeFiles/nuttyengine.dir/source/scene.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/scene.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/scene.c -o CMakeFiles/nuttyengine.dir/source/scene.c.s

CMakeFiles/nuttyengine.dir/source/scene.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/scene.c.o.requires

CMakeFiles/nuttyengine.dir/source/scene.c.o.provides: CMakeFiles/nuttyengine.dir/source/scene.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/scene.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/scene.c.o.provides

CMakeFiles/nuttyengine.dir/source/scene.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/scene.c.o

CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o: ../source/physics_mgr.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o   -c /home/melnik/projects/nuttyengine/source/physics_mgr.c

CMakeFiles/nuttyengine.dir/source/physics_mgr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/physics_mgr.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/physics_mgr.c > CMakeFiles/nuttyengine.dir/source/physics_mgr.c.i

CMakeFiles/nuttyengine.dir/source/physics_mgr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/physics_mgr.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/physics_mgr.c -o CMakeFiles/nuttyengine.dir/source/physics_mgr.c.s

CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o.requires

CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o.provides: CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o.provides

CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o

CMakeFiles/nuttyengine.dir/source/material.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/material.c.o: ../source/material.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/material.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/material.c.o   -c /home/melnik/projects/nuttyengine/source/material.c

CMakeFiles/nuttyengine.dir/source/material.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/material.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/material.c > CMakeFiles/nuttyengine.dir/source/material.c.i

CMakeFiles/nuttyengine.dir/source/material.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/material.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/material.c -o CMakeFiles/nuttyengine.dir/source/material.c.s

CMakeFiles/nuttyengine.dir/source/material.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/material.c.o.requires

CMakeFiles/nuttyengine.dir/source/material.c.o.provides: CMakeFiles/nuttyengine.dir/source/material.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/material.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/material.c.o.provides

CMakeFiles/nuttyengine.dir/source/material.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/material.c.o

CMakeFiles/nuttyengine.dir/source/serialization.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/serialization.c.o: ../source/serialization.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/serialization.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/serialization.c.o   -c /home/melnik/projects/nuttyengine/source/serialization.c

CMakeFiles/nuttyengine.dir/source/serialization.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/serialization.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/serialization.c > CMakeFiles/nuttyengine.dir/source/serialization.c.i

CMakeFiles/nuttyengine.dir/source/serialization.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/serialization.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/serialization.c -o CMakeFiles/nuttyengine.dir/source/serialization.c.s

CMakeFiles/nuttyengine.dir/source/serialization.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/serialization.c.o.requires

CMakeFiles/nuttyengine.dir/source/serialization.c.o.provides: CMakeFiles/nuttyengine.dir/source/serialization.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/serialization.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/serialization.c.o.provides

CMakeFiles/nuttyengine.dir/source/serialization.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/serialization.c.o

CMakeFiles/nuttyengine.dir/source/mesh.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/mesh.c.o: ../source/mesh.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/mesh.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/mesh.c.o   -c /home/melnik/projects/nuttyengine/source/mesh.c

CMakeFiles/nuttyengine.dir/source/mesh.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/mesh.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/mesh.c > CMakeFiles/nuttyengine.dir/source/mesh.c.i

CMakeFiles/nuttyengine.dir/source/mesh.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/mesh.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/mesh.c -o CMakeFiles/nuttyengine.dir/source/mesh.c.s

CMakeFiles/nuttyengine.dir/source/mesh.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/mesh.c.o.requires

CMakeFiles/nuttyengine.dir/source/mesh.c.o.provides: CMakeFiles/nuttyengine.dir/source/mesh.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/mesh.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/mesh.c.o.provides

CMakeFiles/nuttyengine.dir/source/mesh.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/mesh.c.o

CMakeFiles/nuttyengine.dir/source/camera.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/camera.c.o: ../source/camera.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/camera.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/camera.c.o   -c /home/melnik/projects/nuttyengine/source/camera.c

CMakeFiles/nuttyengine.dir/source/camera.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/camera.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/camera.c > CMakeFiles/nuttyengine.dir/source/camera.c.i

CMakeFiles/nuttyengine.dir/source/camera.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/camera.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/camera.c -o CMakeFiles/nuttyengine.dir/source/camera.c.s

CMakeFiles/nuttyengine.dir/source/camera.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/camera.c.o.requires

CMakeFiles/nuttyengine.dir/source/camera.c.o.provides: CMakeFiles/nuttyengine.dir/source/camera.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/camera.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/camera.c.o.provides

CMakeFiles/nuttyengine.dir/source/camera.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/camera.c.o

CMakeFiles/nuttyengine.dir/source/engine.cpp.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/engine.cpp.o: ../source/engine.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/nuttyengine.dir/source/engine.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/nuttyengine.dir/source/engine.cpp.o -c /home/melnik/projects/nuttyengine/source/engine.cpp

CMakeFiles/nuttyengine.dir/source/engine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nuttyengine.dir/source/engine.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/melnik/projects/nuttyengine/source/engine.cpp > CMakeFiles/nuttyengine.dir/source/engine.cpp.i

CMakeFiles/nuttyengine.dir/source/engine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nuttyengine.dir/source/engine.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/melnik/projects/nuttyengine/source/engine.cpp -o CMakeFiles/nuttyengine.dir/source/engine.cpp.s

CMakeFiles/nuttyengine.dir/source/engine.cpp.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/engine.cpp.o.requires

CMakeFiles/nuttyengine.dir/source/engine.cpp.o.provides: CMakeFiles/nuttyengine.dir/source/engine.cpp.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/engine.cpp.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/engine.cpp.o.provides

CMakeFiles/nuttyengine.dir/source/engine.cpp.o.provides.build: CMakeFiles/nuttyengine.dir/source/engine.cpp.o

CMakeFiles/nuttyengine.dir/source/array.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/array.c.o: ../source/array.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_11)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/array.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/array.c.o   -c /home/melnik/projects/nuttyengine/source/array.c

CMakeFiles/nuttyengine.dir/source/array.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/array.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/array.c > CMakeFiles/nuttyengine.dir/source/array.c.i

CMakeFiles/nuttyengine.dir/source/array.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/array.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/array.c -o CMakeFiles/nuttyengine.dir/source/array.c.s

CMakeFiles/nuttyengine.dir/source/array.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/array.c.o.requires

CMakeFiles/nuttyengine.dir/source/array.c.o.provides: CMakeFiles/nuttyengine.dir/source/array.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/array.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/array.c.o.provides

CMakeFiles/nuttyengine.dir/source/array.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/array.c.o

CMakeFiles/nuttyengine.dir/source/sc_obj.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/sc_obj.c.o: ../source/sc_obj.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_12)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/sc_obj.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/sc_obj.c.o   -c /home/melnik/projects/nuttyengine/source/sc_obj.c

CMakeFiles/nuttyengine.dir/source/sc_obj.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/sc_obj.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/sc_obj.c > CMakeFiles/nuttyengine.dir/source/sc_obj.c.i

CMakeFiles/nuttyengine.dir/source/sc_obj.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/sc_obj.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/sc_obj.c -o CMakeFiles/nuttyengine.dir/source/sc_obj.c.s

CMakeFiles/nuttyengine.dir/source/sc_obj.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/sc_obj.c.o.requires

CMakeFiles/nuttyengine.dir/source/sc_obj.c.o.provides: CMakeFiles/nuttyengine.dir/source/sc_obj.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/sc_obj.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/sc_obj.c.o.provides

CMakeFiles/nuttyengine.dir/source/sc_obj.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/sc_obj.c.o

CMakeFiles/nuttyengine.dir/source/viewport.c.o: CMakeFiles/nuttyengine.dir/flags.make
CMakeFiles/nuttyengine.dir/source/viewport.c.o: ../source/viewport.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/nuttyengine/build/CMakeFiles $(CMAKE_PROGRESS_13)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/nuttyengine.dir/source/viewport.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/nuttyengine.dir/source/viewport.c.o   -c /home/melnik/projects/nuttyengine/source/viewport.c

CMakeFiles/nuttyengine.dir/source/viewport.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nuttyengine.dir/source/viewport.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/nuttyengine/source/viewport.c > CMakeFiles/nuttyengine.dir/source/viewport.c.i

CMakeFiles/nuttyengine.dir/source/viewport.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nuttyengine.dir/source/viewport.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/nuttyengine/source/viewport.c -o CMakeFiles/nuttyengine.dir/source/viewport.c.s

CMakeFiles/nuttyengine.dir/source/viewport.c.o.requires:
.PHONY : CMakeFiles/nuttyengine.dir/source/viewport.c.o.requires

CMakeFiles/nuttyengine.dir/source/viewport.c.o.provides: CMakeFiles/nuttyengine.dir/source/viewport.c.o.requires
	$(MAKE) -f CMakeFiles/nuttyengine.dir/build.make CMakeFiles/nuttyengine.dir/source/viewport.c.o.provides.build
.PHONY : CMakeFiles/nuttyengine.dir/source/viewport.c.o.provides

CMakeFiles/nuttyengine.dir/source/viewport.c.o.provides.build: CMakeFiles/nuttyengine.dir/source/viewport.c.o

# Object files for target nuttyengine
nuttyengine_OBJECTS = \
"CMakeFiles/nuttyengine.dir/source/dynlib.c.o" \
"CMakeFiles/nuttyengine.dir/source/engine.c.o" \
"CMakeFiles/nuttyengine.dir/source/entity.c.o" \
"CMakeFiles/nuttyengine.dir/source/scene.c.o" \
"CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o" \
"CMakeFiles/nuttyengine.dir/source/material.c.o" \
"CMakeFiles/nuttyengine.dir/source/serialization.c.o" \
"CMakeFiles/nuttyengine.dir/source/mesh.c.o" \
"CMakeFiles/nuttyengine.dir/source/camera.c.o" \
"CMakeFiles/nuttyengine.dir/source/engine.cpp.o" \
"CMakeFiles/nuttyengine.dir/source/array.c.o" \
"CMakeFiles/nuttyengine.dir/source/sc_obj.c.o" \
"CMakeFiles/nuttyengine.dir/source/viewport.c.o"

# External object files for target nuttyengine
nuttyengine_EXTERNAL_OBJECTS =

../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/dynlib.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/engine.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/entity.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/scene.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/material.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/serialization.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/mesh.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/camera.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/engine.cpp.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/array.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/sc_obj.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/source/viewport.c.o
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/build.make
../bin/lib/x86/libnuttyengine.so: ../bin/lib/x86/libSIMDx86.a
../bin/lib/x86/libnuttyengine.so: CMakeFiles/nuttyengine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../bin/lib/x86/libnuttyengine.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nuttyengine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nuttyengine.dir/build: ../bin/lib/x86/libnuttyengine.so
.PHONY : CMakeFiles/nuttyengine.dir/build

CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/dynlib.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/engine.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/entity.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/scene.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/physics_mgr.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/material.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/serialization.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/mesh.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/camera.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/engine.cpp.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/array.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/sc_obj.c.o.requires
CMakeFiles/nuttyengine.dir/requires: CMakeFiles/nuttyengine.dir/source/viewport.c.o.requires
.PHONY : CMakeFiles/nuttyengine.dir/requires

CMakeFiles/nuttyengine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nuttyengine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nuttyengine.dir/clean

CMakeFiles/nuttyengine.dir/depend:
	cd /home/melnik/projects/nuttyengine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/melnik/projects/nuttyengine /home/melnik/projects/nuttyengine /home/melnik/projects/nuttyengine/build /home/melnik/projects/nuttyengine/build /home/melnik/projects/nuttyengine/build/CMakeFiles/nuttyengine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nuttyengine.dir/depend

