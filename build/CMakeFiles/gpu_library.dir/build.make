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
CMAKE_SOURCE_DIR = /workspace/cmake/pybind11-cuda

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /workspace/cmake/pybind11-cuda/build

# Include any dependencies generated for this target.
include CMakeFiles/gpu_library.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gpu_library.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gpu_library.dir/flags.make

CMakeFiles/gpu_library.dir/examples/gpu_library_generated_cuda_sort.cu.o: CMakeFiles/gpu_library.dir/examples/gpu_library_generated_cuda_sort.cu.o.depend
CMakeFiles/gpu_library.dir/examples/gpu_library_generated_cuda_sort.cu.o: CMakeFiles/gpu_library.dir/examples/gpu_library_generated_cuda_sort.cu.o.cmake
CMakeFiles/gpu_library.dir/examples/gpu_library_generated_cuda_sort.cu.o: ../examples/cuda_sort.cu
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/workspace/cmake/pybind11-cuda/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building NVCC (Device) object CMakeFiles/gpu_library.dir/examples/gpu_library_generated_cuda_sort.cu.o"
	cd /workspace/cmake/pybind11-cuda/build/CMakeFiles/gpu_library.dir/examples && /usr/local/bin/cmake -E make_directory /workspace/cmake/pybind11-cuda/build/CMakeFiles/gpu_library.dir/examples/.
	cd /workspace/cmake/pybind11-cuda/build/CMakeFiles/gpu_library.dir/examples && /usr/local/bin/cmake -D verbose:BOOL=$(VERBOSE) -D build_configuration:STRING= -D generated_file:STRING=/workspace/cmake/pybind11-cuda/build/CMakeFiles/gpu_library.dir/examples/./gpu_library_generated_cuda_sort.cu.o -D generated_cubin_file:STRING=/workspace/cmake/pybind11-cuda/build/CMakeFiles/gpu_library.dir/examples/./gpu_library_generated_cuda_sort.cu.o.cubin.txt -P /workspace/cmake/pybind11-cuda/build/CMakeFiles/gpu_library.dir/examples/gpu_library_generated_cuda_sort.cu.o.cmake

# Object files for target gpu_library
gpu_library_OBJECTS =

# External object files for target gpu_library
gpu_library_EXTERNAL_OBJECTS = \
"/workspace/cmake/pybind11-cuda/build/CMakeFiles/gpu_library.dir/examples/gpu_library_generated_cuda_sort.cu.o"

gpu_library.so: CMakeFiles/gpu_library.dir/examples/gpu_library_generated_cuda_sort.cu.o
gpu_library.so: CMakeFiles/gpu_library.dir/build.make
gpu_library.so: /usr/local/cuda/lib64/libcudart_static.a
gpu_library.so: /usr/lib/x86_64-linux-gnu/librt.so
gpu_library.so: /usr/lib/x86_64-linux-gnu/libpython3.6m.so
gpu_library.so: CMakeFiles/gpu_library.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/workspace/cmake/pybind11-cuda/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library gpu_library.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gpu_library.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gpu_library.dir/build: gpu_library.so

.PHONY : CMakeFiles/gpu_library.dir/build

CMakeFiles/gpu_library.dir/requires:

.PHONY : CMakeFiles/gpu_library.dir/requires

CMakeFiles/gpu_library.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gpu_library.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gpu_library.dir/clean

CMakeFiles/gpu_library.dir/depend: CMakeFiles/gpu_library.dir/examples/gpu_library_generated_cuda_sort.cu.o
	cd /workspace/cmake/pybind11-cuda/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /workspace/cmake/pybind11-cuda /workspace/cmake/pybind11-cuda /workspace/cmake/pybind11-cuda/build /workspace/cmake/pybind11-cuda/build /workspace/cmake/pybind11-cuda/build/CMakeFiles/gpu_library.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gpu_library.dir/depend
