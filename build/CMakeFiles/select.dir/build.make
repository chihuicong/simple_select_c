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
CMAKE_SOURCE_DIR = /home/chihuicong/文档/pthreadLearning/select

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chihuicong/文档/pthreadLearning/select/build

# Include any dependencies generated for this target.
include CMakeFiles/select.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/select.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/select.dir/flags.make

CMakeFiles/select.dir/select.cpp.o: CMakeFiles/select.dir/flags.make
CMakeFiles/select.dir/select.cpp.o: ../select.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chihuicong/文档/pthreadLearning/select/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/select.dir/select.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/select.dir/select.cpp.o -c /home/chihuicong/文档/pthreadLearning/select/select.cpp

CMakeFiles/select.dir/select.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/select.dir/select.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chihuicong/文档/pthreadLearning/select/select.cpp > CMakeFiles/select.dir/select.cpp.i

CMakeFiles/select.dir/select.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/select.dir/select.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chihuicong/文档/pthreadLearning/select/select.cpp -o CMakeFiles/select.dir/select.cpp.s

CMakeFiles/select.dir/select.cpp.o.requires:

.PHONY : CMakeFiles/select.dir/select.cpp.o.requires

CMakeFiles/select.dir/select.cpp.o.provides: CMakeFiles/select.dir/select.cpp.o.requires
	$(MAKE) -f CMakeFiles/select.dir/build.make CMakeFiles/select.dir/select.cpp.o.provides.build
.PHONY : CMakeFiles/select.dir/select.cpp.o.provides

CMakeFiles/select.dir/select.cpp.o.provides.build: CMakeFiles/select.dir/select.cpp.o


# Object files for target select
select_OBJECTS = \
"CMakeFiles/select.dir/select.cpp.o"

# External object files for target select
select_EXTERNAL_OBJECTS =

../bin/select: CMakeFiles/select.dir/select.cpp.o
../bin/select: CMakeFiles/select.dir/build.make
../bin/select: CMakeFiles/select.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chihuicong/文档/pthreadLearning/select/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/select"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/select.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/select.dir/build: ../bin/select

.PHONY : CMakeFiles/select.dir/build

CMakeFiles/select.dir/requires: CMakeFiles/select.dir/select.cpp.o.requires

.PHONY : CMakeFiles/select.dir/requires

CMakeFiles/select.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/select.dir/cmake_clean.cmake
.PHONY : CMakeFiles/select.dir/clean

CMakeFiles/select.dir/depend:
	cd /home/chihuicong/文档/pthreadLearning/select/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chihuicong/文档/pthreadLearning/select /home/chihuicong/文档/pthreadLearning/select /home/chihuicong/文档/pthreadLearning/select/build /home/chihuicong/文档/pthreadLearning/select/build /home/chihuicong/文档/pthreadLearning/select/build/CMakeFiles/select.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/select.dir/depend

