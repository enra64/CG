# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = "/home/arne/Documents/Studium/Semester 4/CG/Task1"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/arne/Documents/Studium/Semester 4/CG/Task1/build"

# Include any dependencies generated for this target.
include exercises/raytracer/CMakeFiles/raytracer.dir/depend.make

# Include the progress variables for this target.
include exercises/raytracer/CMakeFiles/raytracer.dir/progress.make

# Include the compile flags for this target's objects.
include exercises/raytracer/CMakeFiles/raytracer.dir/flags.make

exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o: ../exercises/raytracer/ConstantMaterial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/ConstantMaterial.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/ConstantMaterial.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/ConstantMaterial.cpp" > CMakeFiles/raytracer.dir/ConstantMaterial.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/ConstantMaterial.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/ConstantMaterial.cpp" -o CMakeFiles/raytracer.dir/ConstantMaterial.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o: ../exercises/raytracer/Light.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/Light.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Light.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/Light.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Light.cpp" > CMakeFiles/raytracer.dir/Light.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/Light.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Light.cpp" -o CMakeFiles/raytracer.dir/Light.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o: ../exercises/raytracer/Sphere.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/Sphere.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Sphere.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/Sphere.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Sphere.cpp" > CMakeFiles/raytracer.dir/Sphere.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/Sphere.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Sphere.cpp" -o CMakeFiles/raytracer.dir/Sphere.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o: ../exercises/raytracer/Renderable.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/Renderable.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Renderable.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/Renderable.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Renderable.cpp" > CMakeFiles/raytracer.dir/Renderable.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/Renderable.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Renderable.cpp" -o CMakeFiles/raytracer.dir/Renderable.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o: ../exercises/raytracer/PerspectiveCamera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/PerspectiveCamera.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/PerspectiveCamera.cpp" > CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/PerspectiveCamera.cpp" -o CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o: ../exercises/raytracer/Camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/Camera.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Camera.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/Camera.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Camera.cpp" > CMakeFiles/raytracer.dir/Camera.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/Camera.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Camera.cpp" -o CMakeFiles/raytracer.dir/Camera.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o: ../exercises/raytracer/Triangle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/Triangle.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Triangle.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/Triangle.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Triangle.cpp" > CMakeFiles/raytracer.dir/Triangle.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/Triangle.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Triangle.cpp" -o CMakeFiles/raytracer.dir/Triangle.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o: ../exercises/raytracer/Scene.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/Scene.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Scene.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/Scene.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Scene.cpp" > CMakeFiles/raytracer.dir/Scene.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/Scene.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Scene.cpp" -o CMakeFiles/raytracer.dir/Scene.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o: ../exercises/raytracer/Raytracer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/Raytracer.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Raytracer.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/Raytracer.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Raytracer.cpp" > CMakeFiles/raytracer.dir/Raytracer.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/Raytracer.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Raytracer.cpp" -o CMakeFiles/raytracer.dir/Raytracer.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o: ../exercises/raytracer/Plane.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/Plane.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Plane.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/Plane.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Plane.cpp" > CMakeFiles/raytracer.dir/Plane.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/Plane.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Plane.cpp" -o CMakeFiles/raytracer.dir/Plane.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o: ../exercises/raytracer/BoundingBox.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/BoundingBox.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/BoundingBox.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/BoundingBox.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/BoundingBox.cpp" > CMakeFiles/raytracer.dir/BoundingBox.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/BoundingBox.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/BoundingBox.cpp" -o CMakeFiles/raytracer.dir/BoundingBox.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o


exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o: exercises/raytracer/CMakeFiles/raytracer.dir/flags.make
exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o: ../exercises/raytracer/Image.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raytracer.dir/Image.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Image.cpp"

exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raytracer.dir/Image.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Image.cpp" > CMakeFiles/raytracer.dir/Image.cpp.i

exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raytracer.dir/Image.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer/Image.cpp" -o CMakeFiles/raytracer.dir/Image.cpp.s

exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o.requires:

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o.requires

exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o.provides: exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o.requires
	$(MAKE) -f exercises/raytracer/CMakeFiles/raytracer.dir/build.make exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o.provides.build
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o.provides

exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o.provides.build: exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o


# Object files for target raytracer
raytracer_OBJECTS = \
"CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o" \
"CMakeFiles/raytracer.dir/Light.cpp.o" \
"CMakeFiles/raytracer.dir/Sphere.cpp.o" \
"CMakeFiles/raytracer.dir/Renderable.cpp.o" \
"CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o" \
"CMakeFiles/raytracer.dir/Camera.cpp.o" \
"CMakeFiles/raytracer.dir/Triangle.cpp.o" \
"CMakeFiles/raytracer.dir/Scene.cpp.o" \
"CMakeFiles/raytracer.dir/Raytracer.cpp.o" \
"CMakeFiles/raytracer.dir/Plane.cpp.o" \
"CMakeFiles/raytracer.dir/BoundingBox.cpp.o" \
"CMakeFiles/raytracer.dir/Image.cpp.o"

# External object files for target raytracer
raytracer_EXTERNAL_OBJECTS =

libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/build.make
libraytracer.so: exercises/raytracer/CMakeFiles/raytracer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX shared library ../../libraytracer.so"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raytracer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
exercises/raytracer/CMakeFiles/raytracer.dir/build: libraytracer.so

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/build

exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/ConstantMaterial.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/Light.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/Sphere.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/Renderable.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/PerspectiveCamera.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/Camera.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/Triangle.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/Scene.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/Raytracer.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/Plane.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/BoundingBox.cpp.o.requires
exercises/raytracer/CMakeFiles/raytracer.dir/requires: exercises/raytracer/CMakeFiles/raytracer.dir/Image.cpp.o.requires

.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/requires

exercises/raytracer/CMakeFiles/raytracer.dir/clean:
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" && $(CMAKE_COMMAND) -P CMakeFiles/raytracer.dir/cmake_clean.cmake
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/clean

exercises/raytracer/CMakeFiles/raytracer.dir/depend:
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/arne/Documents/Studium/Semester 4/CG/Task1" "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/raytracer" "/home/arne/Documents/Studium/Semester 4/CG/Task1/build" "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer" "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/raytracer/CMakeFiles/raytracer.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : exercises/raytracer/CMakeFiles/raytracer.dir/depend

