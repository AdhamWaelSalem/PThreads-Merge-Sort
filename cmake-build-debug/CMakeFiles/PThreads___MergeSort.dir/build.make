# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/PThreads___MergeSort.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PThreads___MergeSort.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PThreads___MergeSort.dir/flags.make

CMakeFiles/PThreads___MergeSort.dir/main.c.obj: CMakeFiles/PThreads___MergeSort.dir/flags.make
CMakeFiles/PThreads___MergeSort.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/PThreads___MergeSort.dir/main.c.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\PThreads___MergeSort.dir\main.c.obj -c "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort\main.c"

CMakeFiles/PThreads___MergeSort.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PThreads___MergeSort.dir/main.c.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort\main.c" > CMakeFiles\PThreads___MergeSort.dir\main.c.i

CMakeFiles/PThreads___MergeSort.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PThreads___MergeSort.dir/main.c.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort\main.c" -o CMakeFiles\PThreads___MergeSort.dir\main.c.s

# Object files for target PThreads___MergeSort
PThreads___MergeSort_OBJECTS = \
"CMakeFiles/PThreads___MergeSort.dir/main.c.obj"

# External object files for target PThreads___MergeSort
PThreads___MergeSort_EXTERNAL_OBJECTS =

PThreads___MergeSort.exe: CMakeFiles/PThreads___MergeSort.dir/main.c.obj
PThreads___MergeSort.exe: CMakeFiles/PThreads___MergeSort.dir/build.make
PThreads___MergeSort.exe: CMakeFiles/PThreads___MergeSort.dir/linklibs.rsp
PThreads___MergeSort.exe: CMakeFiles/PThreads___MergeSort.dir/objects1.rsp
PThreads___MergeSort.exe: CMakeFiles/PThreads___MergeSort.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable PThreads___MergeSort.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\PThreads___MergeSort.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PThreads___MergeSort.dir/build: PThreads___MergeSort.exe

.PHONY : CMakeFiles/PThreads___MergeSort.dir/build

CMakeFiles/PThreads___MergeSort.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\PThreads___MergeSort.dir\cmake_clean.cmake
.PHONY : CMakeFiles/PThreads___MergeSort.dir/clean

CMakeFiles/PThreads___MergeSort.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort" "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort" "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort\cmake-build-debug" "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort\cmake-build-debug" "C:\Users\adham\OneDrive\Desktop\Education\Term 7\Operating Systems\Projects\PThreads - MergeSort\cmake-build-debug\CMakeFiles\PThreads___MergeSort.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/PThreads___MergeSort.dir/depend

