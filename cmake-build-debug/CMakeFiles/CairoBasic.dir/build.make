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
include CMakeFiles/CairoBasic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CairoBasic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CairoBasic.dir/flags.make

CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o: CMakeFiles/CairoBasic.dir/flags.make
CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o: ../src/CairoBasicApp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/origamidance/Playground/CinderElla/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o -c /home/origamidance/Playground/CinderElla/src/CairoBasicApp.cpp

CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/origamidance/Playground/CinderElla/src/CairoBasicApp.cpp > CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.i

CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/origamidance/Playground/CinderElla/src/CairoBasicApp.cpp -o CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.s

CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o.requires:

.PHONY : CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o.requires

CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o.provides: CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o.requires
	$(MAKE) -f CMakeFiles/CairoBasic.dir/build.make CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o.provides.build
.PHONY : CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o.provides

CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o.provides.build: CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o


# Object files for target CairoBasic
CairoBasic_OBJECTS = \
"CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o"

# External object files for target CairoBasic
CairoBasic_EXTERNAL_OBJECTS =

Debug/CairoBasic/CairoBasic: CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o
Debug/CairoBasic/CairoBasic: CMakeFiles/CairoBasic.dir/build.make
Debug/CairoBasic/CairoBasic: /home/origamidance/Playground/Cinder/lib/linux/x86_64/ogl/Debug/libcinder.a
Debug/CairoBasic/CairoBasic: libCinder-NanoVG.a
Debug/CairoBasic/CairoBasic: libCinder-Cairo.a
Debug/CairoBasic/CairoBasic: libCinder-ImGui.a
Debug/CairoBasic/CairoBasic: libNanoVGDeps.a
Debug/CairoBasic/CairoBasic: /usr/lib/libcairo.so
Debug/CairoBasic/CairoBasic: /usr/lib/libpixman-1.so
Debug/CairoBasic/CairoBasic: /usr/lib/libpng.so
Debug/CairoBasic/CairoBasic: /home/origamidance/Playground/Cinder/lib/linux/x86_64/ogl/Debug/libcinder.a
Debug/CairoBasic/CairoBasic: /usr/lib/libGLU.so
Debug/CairoBasic/CairoBasic: /usr/lib/libGL.so
Debug/CairoBasic/CairoBasic: /usr/lib/libSM.so
Debug/CairoBasic/CairoBasic: /usr/lib/libICE.so
Debug/CairoBasic/CairoBasic: /usr/lib/libX11.so
Debug/CairoBasic/CairoBasic: /usr/lib/libXext.so
Debug/CairoBasic/CairoBasic: /usr/lib/libz.so
Debug/CairoBasic/CairoBasic: /usr/lib/libcurl.so
Debug/CairoBasic/CairoBasic: /usr/lib/libfontconfig.so
Debug/CairoBasic/CairoBasic: /usr/lib/libpulse.so
Debug/CairoBasic/CairoBasic: /usr/lib/libmpg123.so
Debug/CairoBasic/CairoBasic: /usr/lib/libsndfile.so
Debug/CairoBasic/CairoBasic: /usr/lib/libgobject-2.0.so
Debug/CairoBasic/CairoBasic: /usr/lib/libglib-2.0.so
Debug/CairoBasic/CairoBasic: /usr/lib/libgstreamer-1.0.so
Debug/CairoBasic/CairoBasic: /usr/lib/libgstbase-1.0.so
Debug/CairoBasic/CairoBasic: /usr/lib/libgstapp-1.0.so
Debug/CairoBasic/CairoBasic: /usr/lib/libgstvideo-1.0.so
Debug/CairoBasic/CairoBasic: /usr/lib/libgstgl-1.0.so
Debug/CairoBasic/CairoBasic: /usr/lib/libboost_system.so
Debug/CairoBasic/CairoBasic: /usr/lib/libboost_filesystem.so
Debug/CairoBasic/CairoBasic: CMakeFiles/CairoBasic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/origamidance/Playground/CinderElla/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Debug/CairoBasic/CairoBasic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CairoBasic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CairoBasic.dir/build: Debug/CairoBasic/CairoBasic

.PHONY : CMakeFiles/CairoBasic.dir/build

CMakeFiles/CairoBasic.dir/requires: CMakeFiles/CairoBasic.dir/src/CairoBasicApp.cpp.o.requires

.PHONY : CMakeFiles/CairoBasic.dir/requires

CMakeFiles/CairoBasic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CairoBasic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CairoBasic.dir/clean

CMakeFiles/CairoBasic.dir/depend:
	cd /home/origamidance/Playground/CinderElla/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/origamidance/Playground/CinderElla /home/origamidance/Playground/CinderElla /home/origamidance/Playground/CinderElla/cmake-build-debug /home/origamidance/Playground/CinderElla/cmake-build-debug /home/origamidance/Playground/CinderElla/cmake-build-debug/CMakeFiles/CairoBasic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CairoBasic.dir/depend
