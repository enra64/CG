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
include exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/depend.make

# Include the progress variables for this target.
include exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/progress.make

# Include the compile flags for this target's objects.
include exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/flags.make

exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o: exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/flags.make
exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o: ../exercises/example_memory_fun/MemoryFun.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/example_memory_fun" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o -c "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/example_memory_fun/MemoryFun.cpp"

exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.i"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/example_memory_fun" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/example_memory_fun/MemoryFun.cpp" > CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.i

exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.s"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/example_memory_fun" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/example_memory_fun/MemoryFun.cpp" -o CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.s

exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o.requires:

.PHONY : exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o.requires

exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o.provides: exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o.requires
	$(MAKE) -f exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/build.make exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o.provides.build
.PHONY : exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o.provides

exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o.provides.build: exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o


# Object files for target example_memory_fun
example_memory_fun_OBJECTS = \
"CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o"

# External object files for target example_memory_fun
example_memory_fun_EXTERNAL_OBJECTS =

example_memory_fun: exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o
example_memory_fun: exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/build.make
example_memory_fun: exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/arne/Documents/Studium/Semester 4/CG/Task1/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../example_memory_fun"
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/example_memory_fun" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_memory_fun.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/build: example_memory_fun

.PHONY : exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/build

exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/requires: exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/MemoryFun.cpp.o.requires

.PHONY : exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/requires

exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/clean:
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/example_memory_fun" && $(CMAKE_COMMAND) -P CMakeFiles/example_memory_fun.dir/cmake_clean.cmake
.PHONY : exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/clean

exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/depend:
	cd "/home/arne/Documents/Studium/Semester 4/CG/Task1/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/arne/Documents/Studium/Semester 4/CG/Task1" "/home/arne/Documents/Studium/Semester 4/CG/Task1/exercises/example_memory_fun" "/home/arne/Documents/Studium/Semester 4/CG/Task1/build" "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/example_memory_fun" "/home/arne/Documents/Studium/Semester 4/CG/Task1/build/exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : exercises/example_memory_fun/CMakeFiles/example_memory_fun.dir/depend

