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
CMAKE_SOURCE_DIR = /home/melnik/projects/ngine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/melnik/projects/ngine/build

# Include any dependencies generated for this target.
include examples/CMakeFiles/s_dynstr.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/s_dynstr.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/s_dynstr.dir/flags.make

examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o: examples/CMakeFiles/s_dynstr.dir/flags.make
examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o: ../examples/serialize/dyn_string/main.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/melnik/projects/ngine/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o"
	cd /home/melnik/projects/ngine/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o   -c /home/melnik/projects/ngine/examples/serialize/dyn_string/main.c

examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.i"
	cd /home/melnik/projects/ngine/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/melnik/projects/ngine/examples/serialize/dyn_string/main.c > CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.i

examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.s"
	cd /home/melnik/projects/ngine/build/examples && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/melnik/projects/ngine/examples/serialize/dyn_string/main.c -o CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.s

examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o.requires:
.PHONY : examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o.requires

examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o.provides: examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o.requires
	$(MAKE) -f examples/CMakeFiles/s_dynstr.dir/build.make examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o.provides.build
.PHONY : examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o.provides

examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o.provides.build: examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o

# Object files for target s_dynstr
s_dynstr_OBJECTS = \
"CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o"

# External object files for target s_dynstr
s_dynstr_EXTERNAL_OBJECTS =

../editor/bin/s_dynstr: examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o
../editor/bin/s_dynstr: examples/CMakeFiles/s_dynstr.dir/build.make
../editor/bin/s_dynstr: ../bin/lib/x86/libngine.so
../editor/bin/s_dynstr: examples/CMakeFiles/s_dynstr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable ../../editor/bin/s_dynstr"
	cd /home/melnik/projects/ngine/build/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/s_dynstr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/s_dynstr.dir/build: ../editor/bin/s_dynstr
.PHONY : examples/CMakeFiles/s_dynstr.dir/build

examples/CMakeFiles/s_dynstr.dir/requires: examples/CMakeFiles/s_dynstr.dir/serialize/dyn_string/main.c.o.requires
.PHONY : examples/CMakeFiles/s_dynstr.dir/requires

examples/CMakeFiles/s_dynstr.dir/clean:
	cd /home/melnik/projects/ngine/build/examples && $(CMAKE_COMMAND) -P CMakeFiles/s_dynstr.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/s_dynstr.dir/clean

examples/CMakeFiles/s_dynstr.dir/depend:
	cd /home/melnik/projects/ngine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/melnik/projects/ngine /home/melnik/projects/ngine/examples /home/melnik/projects/ngine/build /home/melnik/projects/ngine/build/examples /home/melnik/projects/ngine/build/examples/CMakeFiles/s_dynstr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/s_dynstr.dir/depend

