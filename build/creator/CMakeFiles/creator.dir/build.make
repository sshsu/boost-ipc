# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/git/boost_ipc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/git/boost_ipc/build

# Include any dependencies generated for this target.
include creator/CMakeFiles/creator.dir/depend.make

# Include the progress variables for this target.
include creator/CMakeFiles/creator.dir/progress.make

# Include the compile flags for this target's objects.
include creator/CMakeFiles/creator.dir/flags.make

creator/CMakeFiles/creator.dir/creator.cpp.o: creator/CMakeFiles/creator.dir/flags.make
creator/CMakeFiles/creator.dir/creator.cpp.o: ../creator/creator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/boost_ipc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object creator/CMakeFiles/creator.dir/creator.cpp.o"
	cd /root/git/boost_ipc/build/creator && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/creator.dir/creator.cpp.o -c /root/git/boost_ipc/creator/creator.cpp

creator/CMakeFiles/creator.dir/creator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/creator.dir/creator.cpp.i"
	cd /root/git/boost_ipc/build/creator && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/boost_ipc/creator/creator.cpp > CMakeFiles/creator.dir/creator.cpp.i

creator/CMakeFiles/creator.dir/creator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/creator.dir/creator.cpp.s"
	cd /root/git/boost_ipc/build/creator && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/boost_ipc/creator/creator.cpp -o CMakeFiles/creator.dir/creator.cpp.s

# Object files for target creator
creator_OBJECTS = \
"CMakeFiles/creator.dir/creator.cpp.o"

# External object files for target creator
creator_EXTERNAL_OBJECTS =

creator/creator: creator/CMakeFiles/creator.dir/creator.cpp.o
creator/creator: creator/CMakeFiles/creator.dir/build.make
creator/creator: creator/CMakeFiles/creator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/git/boost_ipc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable creator"
	cd /root/git/boost_ipc/build/creator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/creator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
creator/CMakeFiles/creator.dir/build: creator/creator

.PHONY : creator/CMakeFiles/creator.dir/build

creator/CMakeFiles/creator.dir/clean:
	cd /root/git/boost_ipc/build/creator && $(CMAKE_COMMAND) -P CMakeFiles/creator.dir/cmake_clean.cmake
.PHONY : creator/CMakeFiles/creator.dir/clean

creator/CMakeFiles/creator.dir/depend:
	cd /root/git/boost_ipc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/git/boost_ipc /root/git/boost_ipc/creator /root/git/boost_ipc/build /root/git/boost_ipc/build/creator /root/git/boost_ipc/build/creator/CMakeFiles/creator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : creator/CMakeFiles/creator.dir/depend

