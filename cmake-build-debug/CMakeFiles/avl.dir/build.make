# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /mnt/c/Users/Svetlana/ClionProjects/avl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Svetlana/ClionProjects/avl/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/avl.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/avl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/avl.dir/flags.make

CMakeFiles/avl.dir/main.cpp.o: CMakeFiles/avl.dir/flags.make
CMakeFiles/avl.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/Svetlana/ClionProjects/avl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/avl.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/avl.dir/main.cpp.o -c /mnt/c/Users/Svetlana/ClionProjects/avl/main.cpp

CMakeFiles/avl.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/avl.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Svetlana/ClionProjects/avl/main.cpp > CMakeFiles/avl.dir/main.cpp.i

CMakeFiles/avl.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/avl.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Svetlana/ClionProjects/avl/main.cpp -o CMakeFiles/avl.dir/main.cpp.s

CMakeFiles/avl.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/avl.dir/main.cpp.o.requires

CMakeFiles/avl.dir/main.cpp.o.provides: CMakeFiles/avl.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/avl.dir/build.make CMakeFiles/avl.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/avl.dir/main.cpp.o.provides

CMakeFiles/avl.dir/main.cpp.o.provides.build: CMakeFiles/avl.dir/main.cpp.o


# Object files for target avl
avl_OBJECTS = \
"CMakeFiles/avl.dir/main.cpp.o"

# External object files for target avl
avl_EXTERNAL_OBJECTS =

avl: CMakeFiles/avl.dir/main.cpp.o
avl: CMakeFiles/avl.dir/build.make
avl: CMakeFiles/avl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/Svetlana/ClionProjects/avl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable avl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/avl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/avl.dir/build: avl

.PHONY : CMakeFiles/avl.dir/build

CMakeFiles/avl.dir/requires: CMakeFiles/avl.dir/main.cpp.o.requires

.PHONY : CMakeFiles/avl.dir/requires

CMakeFiles/avl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/avl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/avl.dir/clean

CMakeFiles/avl.dir/depend:
	cd /mnt/c/Users/Svetlana/ClionProjects/avl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Svetlana/ClionProjects/avl /mnt/c/Users/Svetlana/ClionProjects/avl /mnt/c/Users/Svetlana/ClionProjects/avl/cmake-build-debug /mnt/c/Users/Svetlana/ClionProjects/avl/cmake-build-debug /mnt/c/Users/Svetlana/ClionProjects/avl/cmake-build-debug/CMakeFiles/avl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/avl.dir/depend

