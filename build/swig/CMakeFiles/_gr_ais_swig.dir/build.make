# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/fokko/Desktop/gr-ais-fokko

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fokko/Desktop/gr-ais-fokko/build

# Include any dependencies generated for this target.
include swig/CMakeFiles/_gr_ais_swig.dir/depend.make

# Include the progress variables for this target.
include swig/CMakeFiles/_gr_ais_swig.dir/progress.make

# Include the compile flags for this target's objects.
include swig/CMakeFiles/_gr_ais_swig.dir/flags.make

swig/gr_ais_swigPYTHON_wrap.cxx: ../swig/../include/ais/parse.h
swig/gr_ais_swigPYTHON_wrap.cxx: ../swig/../include/ais/extended_lms_dfe_ff.h
swig/gr_ais_swigPYTHON_wrap.cxx: ../swig/gr_ais_swig.i
swig/gr_ais_swigPYTHON_wrap.cxx: ../swig/../include/ais/freqest.h
swig/gr_ais_swigPYTHON_wrap.cxx: ../swig/../include/ais/unstuff.h
swig/gr_ais_swigPYTHON_wrap.cxx: ../swig/../include/ais/invert.h
swig/gr_ais_swigPYTHON_wrap.cxx: swig/gr_ais_swig.tag
swig/gr_ais_swigPYTHON_wrap.cxx: ../swig/gr_ais_swig.i
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Swig source"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/cmake -E make_directory /home/fokko/Desktop/gr-ais-fokko/build/swig
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/swig2.0 -python -fvirtual -modern -keyword -w511 -module gr_ais_swig -I/usr/local/include/gnuradio/swig -I/home/fokko/Desktop/gr-ais-fokko/build/swig/include/ais -I/home/fokko/Desktop/gr-ais-fokko/build/swig/lib -I/usr/include/python2.7 -I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7 -I/home/fokko/Desktop/gr-ais-fokko/swig -I/home/fokko/Desktop/gr-ais-fokko/build/swig -outdir /home/fokko/Desktop/gr-ais-fokko/build/swig -c++ -I/home/fokko/Desktop/gr-ais-fokko/include -I/home/fokko/Desktop/gr-ais-fokko/lib -I/usr/include -I/usr/include/gnuradio -I/usr/local/include -I/usr/local/include/gnuradio/swig -I/usr/local/include/gnuradio/swig -I/home/fokko/Desktop/gr-ais-fokko/build/swig/include/ais -I/home/fokko/Desktop/gr-ais-fokko/build/swig/lib -I/usr/include/python2.7 -I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7 -I/home/fokko/Desktop/gr-ais-fokko/swig -I/home/fokko/Desktop/gr-ais-fokko/build/swig -o /home/fokko/Desktop/gr-ais-fokko/build/swig/gr_ais_swigPYTHON_wrap.cxx /home/fokko/Desktop/gr-ais-fokko/swig/gr_ais_swig.i

swig/gr_ais_swig.py: swig/gr_ais_swigPYTHON_wrap.cxx

swig/gr_ais_swig.tag: swig/gr_ais_swig_doc.i
swig/gr_ais_swig.tag: swig/_gr_ais_swig_swig_tag
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating gr_ais_swig.tag"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && ./_gr_ais_swig_swig_tag
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/cmake -E touch /home/fokko/Desktop/gr-ais-fokko/build/swig/gr_ais_swig.tag

swig/gr_ais_swig_doc.i: swig/gr_ais_swig_doc_swig_docs/xml/index.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating gr_ais_swig_doc.i"
	cd /home/fokko/Desktop/gr-ais-fokko/docs/doxygen && /usr/bin/python -B /home/fokko/Desktop/gr-ais-fokko/docs/doxygen/swig_doc.py /home/fokko/Desktop/gr-ais-fokko/build/swig/gr_ais_swig_doc_swig_docs/xml /home/fokko/Desktop/gr-ais-fokko/build/swig/gr_ais_swig_doc.i

swig/gr_ais_swig_doc_swig_docs/xml/index.xml: swig/_gr_ais_swig_doc_tag
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating doxygen xml for gr_ais_swig_doc docs"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && ./_gr_ais_swig_doc_tag
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/doxygen /home/fokko/Desktop/gr-ais-fokko/build/swig/gr_ais_swig_doc_swig_docs/Doxyfile

swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o: swig/CMakeFiles/_gr_ais_swig.dir/flags.make
swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o: swig/gr_ais_swigPYTHON_wrap.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o -c /home/fokko/Desktop/gr-ais-fokko/build/swig/gr_ais_swigPYTHON_wrap.cxx

swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.i"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/fokko/Desktop/gr-ais-fokko/build/swig/gr_ais_swigPYTHON_wrap.cxx > CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.i

swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.s"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/fokko/Desktop/gr-ais-fokko/build/swig/gr_ais_swigPYTHON_wrap.cxx -o CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.s

swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o.requires:
.PHONY : swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o.requires

swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o.provides: swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o.requires
	$(MAKE) -f swig/CMakeFiles/_gr_ais_swig.dir/build.make swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o.provides.build
.PHONY : swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o.provides

swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o.provides.build: swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o

# Object files for target _gr_ais_swig
_gr_ais_swig_OBJECTS = \
"CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o"

# External object files for target _gr_ais_swig
_gr_ais_swig_EXTERNAL_OBJECTS =

swig/_gr_ais_swig.so: swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o
swig/_gr_ais_swig.so: swig/CMakeFiles/_gr_ais_swig.dir/build.make
swig/_gr_ais_swig.so: /usr/lib/x86_64-linux-gnu/libpython2.7.so
swig/_gr_ais_swig.so: lib/libgnuradio-gr_ais.so
swig/_gr_ais_swig.so: /usr/local/lib/libgnuradio-runtime.so
swig/_gr_ais_swig.so: swig/CMakeFiles/_gr_ais_swig.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module _gr_ais_swig.so"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_gr_ais_swig.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
swig/CMakeFiles/_gr_ais_swig.dir/build: swig/_gr_ais_swig.so
.PHONY : swig/CMakeFiles/_gr_ais_swig.dir/build

swig/CMakeFiles/_gr_ais_swig.dir/requires: swig/CMakeFiles/_gr_ais_swig.dir/gr_ais_swigPYTHON_wrap.cxx.o.requires
.PHONY : swig/CMakeFiles/_gr_ais_swig.dir/requires

swig/CMakeFiles/_gr_ais_swig.dir/clean:
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/_gr_ais_swig.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/_gr_ais_swig.dir/clean

swig/CMakeFiles/_gr_ais_swig.dir/depend: swig/gr_ais_swigPYTHON_wrap.cxx
swig/CMakeFiles/_gr_ais_swig.dir/depend: swig/gr_ais_swig.py
swig/CMakeFiles/_gr_ais_swig.dir/depend: swig/gr_ais_swig.tag
swig/CMakeFiles/_gr_ais_swig.dir/depend: swig/gr_ais_swig_doc.i
swig/CMakeFiles/_gr_ais_swig.dir/depend: swig/gr_ais_swig_doc_swig_docs/xml/index.xml
	cd /home/fokko/Desktop/gr-ais-fokko/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fokko/Desktop/gr-ais-fokko /home/fokko/Desktop/gr-ais-fokko/swig /home/fokko/Desktop/gr-ais-fokko/build /home/fokko/Desktop/gr-ais-fokko/build/swig /home/fokko/Desktop/gr-ais-fokko/build/swig/CMakeFiles/_gr_ais_swig.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/_gr_ais_swig.dir/depend

