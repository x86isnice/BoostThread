# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.1

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
CMAKE_SOURCE_DIR = /home/x86isnice/BoostThread/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/x86isnice/BoostThread/build

# Include any dependencies generated for this target.
include CMakeFiles/BoostThread.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/BoostThread.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/BoostThread.dir/flags.make

CMakeFiles/BoostThread.dir/BoostThread.cpp.o: CMakeFiles/BoostThread.dir/flags.make
CMakeFiles/BoostThread.dir/BoostThread.cpp.o: /home/x86isnice/BoostThread/src/BoostThread.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/x86isnice/BoostThread/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/BoostThread.dir/BoostThread.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/BoostThread.dir/BoostThread.cpp.o -c /home/x86isnice/BoostThread/src/BoostThread.cpp

CMakeFiles/BoostThread.dir/BoostThread.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/BoostThread.dir/BoostThread.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/x86isnice/BoostThread/src/BoostThread.cpp > CMakeFiles/BoostThread.dir/BoostThread.cpp.i

CMakeFiles/BoostThread.dir/BoostThread.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/BoostThread.dir/BoostThread.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/x86isnice/BoostThread/src/BoostThread.cpp -o CMakeFiles/BoostThread.dir/BoostThread.cpp.s

CMakeFiles/BoostThread.dir/BoostThread.cpp.o.requires:
.PHONY : CMakeFiles/BoostThread.dir/BoostThread.cpp.o.requires

CMakeFiles/BoostThread.dir/BoostThread.cpp.o.provides: CMakeFiles/BoostThread.dir/BoostThread.cpp.o.requires
	$(MAKE) -f CMakeFiles/BoostThread.dir/build.make CMakeFiles/BoostThread.dir/BoostThread.cpp.o.provides.build
.PHONY : CMakeFiles/BoostThread.dir/BoostThread.cpp.o.provides

CMakeFiles/BoostThread.dir/BoostThread.cpp.o.provides.build: CMakeFiles/BoostThread.dir/BoostThread.cpp.o

# Object files for target BoostThread
BoostThread_OBJECTS = \
"CMakeFiles/BoostThread.dir/BoostThread.cpp.o"

# External object files for target BoostThread
BoostThread_EXTERNAL_OBJECTS =

BoostThread: CMakeFiles/BoostThread.dir/BoostThread.cpp.o
BoostThread: CMakeFiles/BoostThread.dir/build.make
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_system.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_thread.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
BoostThread: /usr/local/lib/libpcl_common.so
BoostThread: /usr/local/lib/libpcl_octree.so
BoostThread: /usr/lib/libOpenNI.so
BoostThread: /usr/lib/libOpenNI2.so
BoostThread: /usr/local/lib/libpcl_io.so
BoostThread: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
BoostThread: /usr/local/lib/libpcl_kdtree.so
BoostThread: /usr/local/lib/libpcl_search.so
BoostThread: /usr/local/lib/libpcl_visualization.so
BoostThread: /usr/local/lib/libpcl_sample_consensus.so
BoostThread: /usr/local/lib/libpcl_filters.so
BoostThread: /usr/local/lib/libpcl_features.so
BoostThread: /usr/local/lib/libpcl_segmentation.so
BoostThread: /usr/local/lib/libpcl_people.so
BoostThread: /usr/lib/x86_64-linux-gnu/libqhull.so
BoostThread: /usr/local/lib/libpcl_surface.so
BoostThread: /usr/local/lib/libpcl_registration.so
BoostThread: /usr/local/lib/libpcl_keypoints.so
BoostThread: /usr/local/lib/libpcl_tracking.so
BoostThread: /usr/local/lib/libpcl_recognition.so
BoostThread: /usr/local/lib/libpcl_outofcore.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_system.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_thread.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
BoostThread: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
BoostThread: /usr/lib/x86_64-linux-gnu/libqhull.so
BoostThread: /usr/lib/libOpenNI.so
BoostThread: /usr/lib/libOpenNI2.so
BoostThread: /usr/lib/x86_64-linux-gnu/libflann_cpp_s.a
BoostThread: /usr/lib/libvtkGenericFiltering.so.5.8.0
BoostThread: /usr/lib/libvtkGeovis.so.5.8.0
BoostThread: /usr/lib/libvtkCharts.so.5.8.0
BoostThread: /usr/local/lib/libpcl_common.so
BoostThread: /usr/local/lib/libpcl_octree.so
BoostThread: /usr/local/lib/libpcl_io.so
BoostThread: /usr/local/lib/libpcl_kdtree.so
BoostThread: /usr/local/lib/libpcl_search.so
BoostThread: /usr/local/lib/libpcl_visualization.so
BoostThread: /usr/local/lib/libpcl_sample_consensus.so
BoostThread: /usr/local/lib/libpcl_filters.so
BoostThread: /usr/local/lib/libpcl_features.so
BoostThread: /usr/local/lib/libpcl_segmentation.so
BoostThread: /usr/local/lib/libpcl_people.so
BoostThread: /usr/local/lib/libpcl_surface.so
BoostThread: /usr/local/lib/libpcl_registration.so
BoostThread: /usr/local/lib/libpcl_keypoints.so
BoostThread: /usr/local/lib/libpcl_tracking.so
BoostThread: /usr/local/lib/libpcl_recognition.so
BoostThread: /usr/local/lib/libpcl_outofcore.so
BoostThread: /usr/lib/libvtkViews.so.5.8.0
BoostThread: /usr/lib/libvtkInfovis.so.5.8.0
BoostThread: /usr/lib/libvtkWidgets.so.5.8.0
BoostThread: /usr/lib/libvtkVolumeRendering.so.5.8.0
BoostThread: /usr/lib/libvtkHybrid.so.5.8.0
BoostThread: /usr/lib/libvtkParallel.so.5.8.0
BoostThread: /usr/lib/libvtkRendering.so.5.8.0
BoostThread: /usr/lib/libvtkImaging.so.5.8.0
BoostThread: /usr/lib/libvtkGraphics.so.5.8.0
BoostThread: /usr/lib/libvtkIO.so.5.8.0
BoostThread: /usr/lib/libvtkFiltering.so.5.8.0
BoostThread: /usr/lib/libvtkCommon.so.5.8.0
BoostThread: /usr/lib/libvtksys.so.5.8.0
BoostThread: CMakeFiles/BoostThread.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable BoostThread"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BoostThread.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/BoostThread.dir/build: BoostThread
.PHONY : CMakeFiles/BoostThread.dir/build

CMakeFiles/BoostThread.dir/requires: CMakeFiles/BoostThread.dir/BoostThread.cpp.o.requires
.PHONY : CMakeFiles/BoostThread.dir/requires

CMakeFiles/BoostThread.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/BoostThread.dir/cmake_clean.cmake
.PHONY : CMakeFiles/BoostThread.dir/clean

CMakeFiles/BoostThread.dir/depend:
	cd /home/x86isnice/BoostThread/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/x86isnice/BoostThread/src /home/x86isnice/BoostThread/src /home/x86isnice/BoostThread/build /home/x86isnice/BoostThread/build /home/x86isnice/BoostThread/build/CMakeFiles/BoostThread.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/BoostThread.dir/depend

