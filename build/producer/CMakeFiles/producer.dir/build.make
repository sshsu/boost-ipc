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
include producer/CMakeFiles/producer.dir/depend.make

# Include the progress variables for this target.
include producer/CMakeFiles/producer.dir/progress.make

# Include the compile flags for this target's objects.
include producer/CMakeFiles/producer.dir/flags.make

producer/CMakeFiles/producer.dir/producer.cpp.o: producer/CMakeFiles/producer.dir/flags.make
producer/CMakeFiles/producer.dir/producer.cpp.o: ../producer/producer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/git/boost_ipc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object producer/CMakeFiles/producer.dir/producer.cpp.o"
	cd /root/git/boost_ipc/build/producer && /usr/bin/g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/producer.dir/producer.cpp.o -c /root/git/boost_ipc/producer/producer.cpp

producer/CMakeFiles/producer.dir/producer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/producer.dir/producer.cpp.i"
	cd /root/git/boost_ipc/build/producer && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/git/boost_ipc/producer/producer.cpp > CMakeFiles/producer.dir/producer.cpp.i

producer/CMakeFiles/producer.dir/producer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/producer.dir/producer.cpp.s"
	cd /root/git/boost_ipc/build/producer && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/git/boost_ipc/producer/producer.cpp -o CMakeFiles/producer.dir/producer.cpp.s

# Object files for target producer
producer_OBJECTS = \
"CMakeFiles/producer.dir/producer.cpp.o"

# External object files for target producer
producer_EXTERNAL_OBJECTS =

producer/producer: producer/CMakeFiles/producer.dir/producer.cpp.o
producer/producer: producer/CMakeFiles/producer.dir/build.make
producer/producer: producer/CMakeFiles/producer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/git/boost_ipc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable producer"
	cd /root/git/boost_ipc/build/producer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/producer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
producer/CMakeFiles/producer.dir/build: producer/producer

.PHONY : producer/CMakeFiles/producer.dir/build

producer/CMakeFiles/producer.dir/clean:
	cd /root/git/boost_ipc/build/producer && $(CMAKE_COMMAND) -P CMakeFiles/producer.dir/cmake_clean.cmake
.PHONY : producer/CMakeFiles/producer.dir/clean

producer/CMakeFiles/producer.dir/depend:
	cd /root/git/boost_ipc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/git/boost_ipc /root/git/boost_ipc/producer /root/git/boost_ipc/build /root/git/boost_ipc/build/producer /root/git/boost_ipc/build/producer/CMakeFiles/producer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : producer/CMakeFiles/producer.dir/depend
