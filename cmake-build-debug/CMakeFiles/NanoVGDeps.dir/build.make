# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = /home/origamidance/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.3727.114/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/origamidance/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/173.3727.114/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/origamidance/Playground/CinderElla

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/origamidance/Playground/CinderElla/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/NanoVGDeps.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/NanoVGDeps.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/NanoVGDeps.dir/flags.make

CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o: CMakeFiles/NanoVGDeps.dir/flags.make
CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o: ../blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/origamidance/Playground/CinderElla/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o   -c /home/origamidance/Playground/CinderElla/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c

CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/origamidance/Playground/CinderElla/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c > CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.i

CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/origamidance/Playground/CinderElla/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c -o CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.s

CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o.requires:

.PHONY : CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o.requires

CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o.provides: CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o.requires
	$(MAKE) -f CMakeFiles/NanoVGDeps.dir/build.make CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o.provides.build
.PHONY : CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o.provides

CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o.provides.build: CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o


# Object files for target NanoVGDeps
NanoVGDeps_OBJECTS = \
"CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o"

# External object files for target NanoVGDeps
NanoVGDeps_EXTERNAL_OBJECTS =

libNanoVGDeps.a: CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o
libNanoVGDeps.a: CMakeFiles/NanoVGDeps.dir/build.make
libNanoVGDeps.a: CMakeFiles/NanoVGDeps.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/origamidance/Playground/CinderElla/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libNanoVGDeps.a"
	$(CMAKE_COMMAND) -P CMakeFiles/NanoVGDeps.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/NanoVGDeps.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/NanoVGDeps.dir/build: libNanoVGDeps.a

.PHONY : CMakeFiles/NanoVGDeps.dir/build

CMakeFiles/NanoVGDeps.dir/requires: CMakeFiles/NanoVGDeps.dir/blocks/Cinder-NanoVG/deps/nanovg/src/nanovg.c.o.requires

.PHONY : CMakeFiles/NanoVGDeps.dir/requires

CMakeFiles/NanoVGDeps.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/NanoVGDeps.dir/cmake_clean.cmake
.PHONY : CMakeFiles/NanoVGDeps.dir/clean

CMakeFiles/NanoVGDeps.dir/depend:
	cd /home/origamidance/Playground/CinderElla/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/origamidance/Playground/CinderElla /home/origamidance/Playground/CinderElla /home/origamidance/Playground/CinderElla/cmake-build-debug /home/origamidance/Playground/CinderElla/cmake-build-debug /home/origamidance/Playground/CinderElla/cmake-build-debug/CMakeFiles/NanoVGDeps.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/NanoVGDeps.dir/depend

