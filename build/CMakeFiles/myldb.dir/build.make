# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_SOURCE_DIR = /home/drz/Program/myldb

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/drz/Program/myldb/build

# Include any dependencies generated for this target.
include CMakeFiles/myldb.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/myldb.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/myldb.dir/flags.make

# Object files for target myldb
myldb_OBJECTS =

# External object files for target myldb
myldb_EXTERNAL_OBJECTS =

libmyldb.a: CMakeFiles/myldb.dir/build.make
libmyldb.a: CMakeFiles/myldb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/drz/Program/myldb/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libmyldb.a"
	$(CMAKE_COMMAND) -P CMakeFiles/myldb.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myldb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/myldb.dir/build: libmyldb.a

.PHONY : CMakeFiles/myldb.dir/build

CMakeFiles/myldb.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/myldb.dir/cmake_clean.cmake
.PHONY : CMakeFiles/myldb.dir/clean

CMakeFiles/myldb.dir/depend:
	cd /home/drz/Program/myldb/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drz/Program/myldb /home/drz/Program/myldb /home/drz/Program/myldb/build /home/drz/Program/myldb/build /home/drz/Program/myldb/build/CMakeFiles/myldb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/myldb.dir/depend

