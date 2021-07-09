# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build

# Include any dependencies generated for this target.
include CMakeFiles/WaterShader.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/WaterShader.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/WaterShader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/WaterShader.dir/flags.make

CMakeFiles/WaterShader.dir/src/main.cpp.o: CMakeFiles/WaterShader.dir/flags.make
CMakeFiles/WaterShader.dir/src/main.cpp.o: ../src/main.cpp
CMakeFiles/WaterShader.dir/src/main.cpp.o: CMakeFiles/WaterShader.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/WaterShader.dir/src/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WaterShader.dir/src/main.cpp.o -MF CMakeFiles/WaterShader.dir/src/main.cpp.o.d -o CMakeFiles/WaterShader.dir/src/main.cpp.o -c /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/main.cpp

CMakeFiles/WaterShader.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WaterShader.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/main.cpp > CMakeFiles/WaterShader.dir/src/main.cpp.i

CMakeFiles/WaterShader.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WaterShader.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/main.cpp -o CMakeFiles/WaterShader.dir/src/main.cpp.s

CMakeFiles/WaterShader.dir/src/gl_helper.cpp.o: CMakeFiles/WaterShader.dir/flags.make
CMakeFiles/WaterShader.dir/src/gl_helper.cpp.o: ../src/gl_helper.cpp
CMakeFiles/WaterShader.dir/src/gl_helper.cpp.o: CMakeFiles/WaterShader.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/WaterShader.dir/src/gl_helper.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WaterShader.dir/src/gl_helper.cpp.o -MF CMakeFiles/WaterShader.dir/src/gl_helper.cpp.o.d -o CMakeFiles/WaterShader.dir/src/gl_helper.cpp.o -c /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/gl_helper.cpp

CMakeFiles/WaterShader.dir/src/gl_helper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WaterShader.dir/src/gl_helper.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/gl_helper.cpp > CMakeFiles/WaterShader.dir/src/gl_helper.cpp.i

CMakeFiles/WaterShader.dir/src/gl_helper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WaterShader.dir/src/gl_helper.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/gl_helper.cpp -o CMakeFiles/WaterShader.dir/src/gl_helper.cpp.s

CMakeFiles/WaterShader.dir/src/geometry.cpp.o: CMakeFiles/WaterShader.dir/flags.make
CMakeFiles/WaterShader.dir/src/geometry.cpp.o: ../src/geometry.cpp
CMakeFiles/WaterShader.dir/src/geometry.cpp.o: CMakeFiles/WaterShader.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/WaterShader.dir/src/geometry.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WaterShader.dir/src/geometry.cpp.o -MF CMakeFiles/WaterShader.dir/src/geometry.cpp.o.d -o CMakeFiles/WaterShader.dir/src/geometry.cpp.o -c /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/geometry.cpp

CMakeFiles/WaterShader.dir/src/geometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WaterShader.dir/src/geometry.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/geometry.cpp > CMakeFiles/WaterShader.dir/src/geometry.cpp.i

CMakeFiles/WaterShader.dir/src/geometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WaterShader.dir/src/geometry.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/geometry.cpp -o CMakeFiles/WaterShader.dir/src/geometry.cpp.s

CMakeFiles/WaterShader.dir/src/camera.cpp.o: CMakeFiles/WaterShader.dir/flags.make
CMakeFiles/WaterShader.dir/src/camera.cpp.o: ../src/camera.cpp
CMakeFiles/WaterShader.dir/src/camera.cpp.o: CMakeFiles/WaterShader.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/WaterShader.dir/src/camera.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WaterShader.dir/src/camera.cpp.o -MF CMakeFiles/WaterShader.dir/src/camera.cpp.o.d -o CMakeFiles/WaterShader.dir/src/camera.cpp.o -c /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/camera.cpp

CMakeFiles/WaterShader.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WaterShader.dir/src/camera.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/camera.cpp > CMakeFiles/WaterShader.dir/src/camera.cpp.i

CMakeFiles/WaterShader.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WaterShader.dir/src/camera.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/camera.cpp -o CMakeFiles/WaterShader.dir/src/camera.cpp.s

CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.o: CMakeFiles/WaterShader.dir/flags.make
CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.o: ../src/trackball_ctrl.cpp
CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.o: CMakeFiles/WaterShader.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.o -MF CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.o.d -o CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.o -c /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/trackball_ctrl.cpp

CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/trackball_ctrl.cpp > CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.i

CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/trackball_ctrl.cpp -o CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.s

CMakeFiles/WaterShader.dir/src/utilities.cpp.o: CMakeFiles/WaterShader.dir/flags.make
CMakeFiles/WaterShader.dir/src/utilities.cpp.o: ../src/utilities.cpp
CMakeFiles/WaterShader.dir/src/utilities.cpp.o: CMakeFiles/WaterShader.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/WaterShader.dir/src/utilities.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/WaterShader.dir/src/utilities.cpp.o -MF CMakeFiles/WaterShader.dir/src/utilities.cpp.o.d -o CMakeFiles/WaterShader.dir/src/utilities.cpp.o -c /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/utilities.cpp

CMakeFiles/WaterShader.dir/src/utilities.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WaterShader.dir/src/utilities.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/utilities.cpp > CMakeFiles/WaterShader.dir/src/utilities.cpp.i

CMakeFiles/WaterShader.dir/src/utilities.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WaterShader.dir/src/utilities.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/src/utilities.cpp -o CMakeFiles/WaterShader.dir/src/utilities.cpp.s

# Object files for target WaterShader
WaterShader_OBJECTS = \
"CMakeFiles/WaterShader.dir/src/main.cpp.o" \
"CMakeFiles/WaterShader.dir/src/gl_helper.cpp.o" \
"CMakeFiles/WaterShader.dir/src/geometry.cpp.o" \
"CMakeFiles/WaterShader.dir/src/camera.cpp.o" \
"CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.o" \
"CMakeFiles/WaterShader.dir/src/utilities.cpp.o"

# External object files for target WaterShader
WaterShader_EXTERNAL_OBJECTS =

WaterShader: CMakeFiles/WaterShader.dir/src/main.cpp.o
WaterShader: CMakeFiles/WaterShader.dir/src/gl_helper.cpp.o
WaterShader: CMakeFiles/WaterShader.dir/src/geometry.cpp.o
WaterShader: CMakeFiles/WaterShader.dir/src/camera.cpp.o
WaterShader: CMakeFiles/WaterShader.dir/src/trackball_ctrl.cpp.o
WaterShader: CMakeFiles/WaterShader.dir/src/utilities.cpp.o
WaterShader: CMakeFiles/WaterShader.dir/build.make
WaterShader: CMakeFiles/WaterShader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable WaterShader"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/WaterShader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/WaterShader.dir/build: WaterShader
.PHONY : CMakeFiles/WaterShader.dir/build

CMakeFiles/WaterShader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/WaterShader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/WaterShader.dir/clean

CMakeFiles/WaterShader.dir/depend:
	cd /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build /home/ireton/ComputerGraphics/OpenGL/ShaderPrograms/water/build/CMakeFiles/WaterShader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/WaterShader.dir/depend

