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

# Utility rule file for pygen_swig_50e2f.

# Include the progress variables for this target.
include swig/CMakeFiles/pygen_swig_50e2f.dir/progress.make

swig/CMakeFiles/pygen_swig_50e2f: swig/ais_swig.pyc
swig/CMakeFiles/pygen_swig_50e2f: swig/ais_swig.pyo

swig/ais_swig.pyc: swig/ais_swig.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ais_swig.pyc"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/python2 /home/fokko/Desktop/gr-ais-fokko/build/python_compile_helper.py /home/fokko/Desktop/gr-ais-fokko/build/swig/ais_swig.py /home/fokko/Desktop/gr-ais-fokko/build/swig/ais_swig.pyc

swig/ais_swig.pyo: swig/ais_swig.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ais_swig.pyo"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/python2 -O /home/fokko/Desktop/gr-ais-fokko/build/python_compile_helper.py /home/fokko/Desktop/gr-ais-fokko/build/swig/ais_swig.py /home/fokko/Desktop/gr-ais-fokko/build/swig/ais_swig.pyo

swig/ais_swigPYTHON_wrap.cxx: /usr/local/include/gnuradio/swig/gnuradio.i
swig/ais_swigPYTHON_wrap.cxx: ../swig/ais_swig.i
swig/ais_swigPYTHON_wrap.cxx: /usr/local/include/gnuradio/swig/gr_extras.i
swig/ais_swigPYTHON_wrap.cxx: /usr/local/include/gnuradio/swig/gr_shared_ptr.i
swig/ais_swigPYTHON_wrap.cxx: /usr/local/include/gnuradio/swig/gnuradio_swig_bug_workaround.h
swig/ais_swigPYTHON_wrap.cxx: /usr/local/include/gnuradio/swig/gr_types.i
swig/ais_swigPYTHON_wrap.cxx: swig/ais_swig.tag
swig/ais_swigPYTHON_wrap.cxx: ../swig/ais_swig.i
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Swig source"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/cmake -E make_directory /home/fokko/Desktop/gr-ais-fokko/build/swig
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/swig2.0 -python -fvirtual -modern -keyword -w511 -module ais_swig -I/usr/local/include/gnuradio/swig -I/usr/include/python2.7 -I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7 -I/home/fokko/Desktop/gr-ais-fokko/swig -I/home/fokko/Desktop/gr-ais-fokko/build/swig -outdir /home/fokko/Desktop/gr-ais-fokko/build/swig -c++ -I/home/fokko/Desktop/gr-ais-fokko/lib -I/home/fokko/Desktop/gr-ais-fokko/include -I/home/fokko/Desktop/gr-ais-fokko/build/lib -I/home/fokko/Desktop/gr-ais-fokko/build/include -I/usr/include -I/usr/include -I/usr/local/include -I/usr/local/include/gnuradio/swig -I/usr/include/python2.7 -I/usr/include/python2.7 -I/usr/include/x86_64-linux-gnu/python2.7 -I/home/fokko/Desktop/gr-ais-fokko/swig -I/home/fokko/Desktop/gr-ais-fokko/build/swig -o /home/fokko/Desktop/gr-ais-fokko/build/swig/ais_swigPYTHON_wrap.cxx /home/fokko/Desktop/gr-ais-fokko/swig/ais_swig.i

swig/ais_swig.py: swig/ais_swigPYTHON_wrap.cxx

swig/ais_swig.tag: swig/ais_swig_doc.i
swig/ais_swig.tag: swig/_ais_swig_swig_tag
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ais_swig.tag"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && ./_ais_swig_swig_tag
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/cmake -E touch /home/fokko/Desktop/gr-ais-fokko/build/swig/ais_swig.tag

swig/ais_swig_doc.i: swig/ais_swig_doc_swig_docs/xml/index.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ais_swig_doc.i"
	cd /home/fokko/Desktop/gr-ais-fokko/docs/doxygen && /usr/bin/python2 -B /home/fokko/Desktop/gr-ais-fokko/docs/doxygen/swig_doc.py /home/fokko/Desktop/gr-ais-fokko/build/swig/ais_swig_doc_swig_docs/xml /home/fokko/Desktop/gr-ais-fokko/build/swig/ais_swig_doc.i

swig/ais_swig_doc_swig_docs/xml/index.xml: swig/_ais_swig_doc_tag
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fokko/Desktop/gr-ais-fokko/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating doxygen xml for ais_swig_doc docs"
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && ./_ais_swig_doc_tag
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && /usr/bin/doxygen /home/fokko/Desktop/gr-ais-fokko/build/swig/ais_swig_doc_swig_docs/Doxyfile

pygen_swig_50e2f: swig/CMakeFiles/pygen_swig_50e2f
pygen_swig_50e2f: swig/ais_swig.pyc
pygen_swig_50e2f: swig/ais_swig.pyo
pygen_swig_50e2f: swig/ais_swigPYTHON_wrap.cxx
pygen_swig_50e2f: swig/ais_swig.py
pygen_swig_50e2f: swig/ais_swig.tag
pygen_swig_50e2f: swig/ais_swig_doc.i
pygen_swig_50e2f: swig/ais_swig_doc_swig_docs/xml/index.xml
pygen_swig_50e2f: swig/CMakeFiles/pygen_swig_50e2f.dir/build.make
.PHONY : pygen_swig_50e2f

# Rule to build all files generated by this target.
swig/CMakeFiles/pygen_swig_50e2f.dir/build: pygen_swig_50e2f
.PHONY : swig/CMakeFiles/pygen_swig_50e2f.dir/build

swig/CMakeFiles/pygen_swig_50e2f.dir/clean:
	cd /home/fokko/Desktop/gr-ais-fokko/build/swig && $(CMAKE_COMMAND) -P CMakeFiles/pygen_swig_50e2f.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/pygen_swig_50e2f.dir/clean

swig/CMakeFiles/pygen_swig_50e2f.dir/depend:
	cd /home/fokko/Desktop/gr-ais-fokko/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fokko/Desktop/gr-ais-fokko /home/fokko/Desktop/gr-ais-fokko/swig /home/fokko/Desktop/gr-ais-fokko/build /home/fokko/Desktop/gr-ais-fokko/build/swig /home/fokko/Desktop/gr-ais-fokko/build/swig/CMakeFiles/pygen_swig_50e2f.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/pygen_swig_50e2f.dir/depend

