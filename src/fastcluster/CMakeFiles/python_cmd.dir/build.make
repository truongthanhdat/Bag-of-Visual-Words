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
CMAKE_SOURCE_DIR = /home/dattt/Downloads/fastcluster

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dattt/Downloads/fastcluster

# Utility rule file for python_cmd.

# Include the progress variables for this target.
include CMakeFiles/python_cmd.dir/progress.make

CMakeFiles/python_cmd: dummy_python_cmd


dummy_python_cmd: libfastcluster.so
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/dattt/Downloads/fastcluster/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating dummy_python_cmd"
	python setup.py install

python_cmd: CMakeFiles/python_cmd
python_cmd: dummy_python_cmd
python_cmd: CMakeFiles/python_cmd.dir/build.make

.PHONY : python_cmd

# Rule to build all files generated by this target.
CMakeFiles/python_cmd.dir/build: python_cmd

.PHONY : CMakeFiles/python_cmd.dir/build

CMakeFiles/python_cmd.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/python_cmd.dir/cmake_clean.cmake
.PHONY : CMakeFiles/python_cmd.dir/clean

CMakeFiles/python_cmd.dir/depend:
	cd /home/dattt/Downloads/fastcluster && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dattt/Downloads/fastcluster /home/dattt/Downloads/fastcluster /home/dattt/Downloads/fastcluster /home/dattt/Downloads/fastcluster /home/dattt/Downloads/fastcluster/CMakeFiles/python_cmd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/python_cmd.dir/depend

