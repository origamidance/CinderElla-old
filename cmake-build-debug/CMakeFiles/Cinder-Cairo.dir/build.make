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
include CMakeFiles/Cinder-Cairo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Cinder-Cairo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Cinder-Cairo.dir/flags.make

CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o: CMakeFiles/Cinder-Cairo.dir/flags.make
CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o: ../blocks/Cinder-Cairo/src/Cairo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/origamidance/Playground/CinderElla/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o -c /home/origamidance/Playground/CinderElla/blocks/Cinder-Cairo/src/Cairo.cpp

CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/origamidance/Playground/CinderElla/blocks/Cinder-Cairo/src/Cairo.cpp > CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.i

CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/origamidance/Playground/CinderElla/blocks/Cinder-Cairo/src/Cairo.cpp -o CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.s

CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o.requires:

.PHONY : CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o.requires

CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o.provides: CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o.requires
	$(MAKE) -f CMakeFiles/Cinder-Cairo.dir/build.make CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o.provides.build
.PHONY : CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o.provides

CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o.provides.build: CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o


# Object files for target Cinder-Cairo
Cinder__Cairo_OBJECTS = \
"CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o"

# External object files for target Cinder-Cairo
Cinder__Cairo_EXTERNAL_OBJECTS =

libCinder-Cairo.a: CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o
libCinder-Cairo.a: CMakeFiles/Cinder-Cairo.dir/build.make
libCinder-Cairo.a: CMakeFiles/Cinder-Cairo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/origamidance/Playground/CinderElla/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libCinder-Cairo.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Cinder-Cairo.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Cinder-Cairo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Cinder-Cairo.dir/build: libCinder-Cairo.a

.PHONY : CMakeFiles/Cinder-Cairo.dir/build

CMakeFiles/Cinder-Cairo.dir/requires: CMakeFiles/Cinder-Cairo.dir/blocks/Cinder-Cairo/src/Cairo.cpp.o.requires

.PHONY : CMakeFiles/Cinder-Cairo.dir/requires

CMakeFiles/Cinder-Cairo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Cinder-Cairo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Cinder-Cairo.dir/clean

CMakeFiles/Cinder-Cairo.dir/depend:
	cd /home/origamidance/Playground/CinderElla/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/origamidance/Playground/CinderElla /home/origamidance/Playground/CinderElla /home/origamidance/Playground/CinderElla/cmake-build-debug /home/origamidance/Playground/CinderElla/cmake-build-debug /home/origamidance/Playground/CinderElla/cmake-build-debug/CMakeFiles/Cinder-Cairo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Cinder-Cairo.dir/depend
