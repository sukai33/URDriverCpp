# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /home/wt/soft/clion-2020.1.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/wt/soft/clion-2020.1.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wt/workspace/robotdriver/URDriverCpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug

# Include any dependencies generated for this target.
include src/test/CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include src/test/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include src/test/CMakeFiles/test.dir/flags.make

src/test/CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.o: src/test/CMakeFiles/test.dir/flags.make
src/test/CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.o: src/test/test_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/test/CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.o"
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.o -c /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test/test_autogen/mocs_compilation.cpp

src/test/CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.i"
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test/test_autogen/mocs_compilation.cpp > CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.i

src/test/CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.s"
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test/test_autogen/mocs_compilation.cpp -o CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.s

src/test/CMakeFiles/test.dir/main.cpp.o: src/test/CMakeFiles/test.dir/flags.make
src/test/CMakeFiles/test.dir/main.cpp.o: ../src/test/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/test/CMakeFiles/test.dir/main.cpp.o"
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/main.cpp.o -c /home/wt/workspace/robotdriver/URDriverCpp/src/test/main.cpp

src/test/CMakeFiles/test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/main.cpp.i"
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wt/workspace/robotdriver/URDriverCpp/src/test/main.cpp > CMakeFiles/test.dir/main.cpp.i

src/test/CMakeFiles/test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/main.cpp.s"
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wt/workspace/robotdriver/URDriverCpp/src/test/main.cpp -o CMakeFiles/test.dir/main.cpp.s

src/test/CMakeFiles/test.dir/MainWindow.cpp.o: src/test/CMakeFiles/test.dir/flags.make
src/test/CMakeFiles/test.dir/MainWindow.cpp.o: ../src/test/MainWindow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/test/CMakeFiles/test.dir/MainWindow.cpp.o"
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/MainWindow.cpp.o -c /home/wt/workspace/robotdriver/URDriverCpp/src/test/MainWindow.cpp

src/test/CMakeFiles/test.dir/MainWindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/MainWindow.cpp.i"
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wt/workspace/robotdriver/URDriverCpp/src/test/MainWindow.cpp > CMakeFiles/test.dir/MainWindow.cpp.i

src/test/CMakeFiles/test.dir/MainWindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/MainWindow.cpp.s"
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wt/workspace/robotdriver/URDriverCpp/src/test/MainWindow.cpp -o CMakeFiles/test.dir/MainWindow.cpp.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/test.dir/main.cpp.o" \
"CMakeFiles/test.dir/MainWindow.cpp.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

../build/bin/test: src/test/CMakeFiles/test.dir/test_autogen/mocs_compilation.cpp.o
../build/bin/test: src/test/CMakeFiles/test.dir/main.cpp.o
../build/bin/test: src/test/CMakeFiles/test.dir/MainWindow.cpp.o
../build/bin/test: src/test/CMakeFiles/test.dir/build.make
../build/bin/test: ../build/libs/libdriver.so
../build/bin/test: ../3rdparty/qt/lib/libQt5OpenGL.so.5.7.1
../build/bin/test: ../3rdparty/qt/lib/libQt5Widgets.so.5.7.1
../build/bin/test: ../3rdparty/qt/lib/libQt5Gui.so.5.7.1
../build/bin/test: ../3rdparty/qt/lib/libQt5Network.so.5.7.1
../build/bin/test: ../3rdparty/qt/lib/libQt5Core.so.5.7.1
../build/bin/test: src/test/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../../build/bin/test"
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/test/CMakeFiles/test.dir/build: ../build/bin/test

.PHONY : src/test/CMakeFiles/test.dir/build

src/test/CMakeFiles/test.dir/clean:
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : src/test/CMakeFiles/test.dir/clean

src/test/CMakeFiles/test.dir/depend:
	cd /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wt/workspace/robotdriver/URDriverCpp /home/wt/workspace/robotdriver/URDriverCpp/src/test /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test /home/wt/workspace/robotdriver/URDriverCpp/cmake-build-debug/src/test/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/test/CMakeFiles/test.dir/depend

