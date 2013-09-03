# Copyright 2011 Free Software Foundation, Inc.
#
# This file is part of GNU Radio
#
# GNU Radio is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.
#
# GNU Radio is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with GNU Radio; see the file COPYING.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street,
# Boston, MA 02110-1301, USA.


########################################################################
# Setup library
########################################################################
include(GrPlatform) #define LIB_SUFFIX

message( STATUS 'test' )
message( STATUS ${RUNTIME_LIBRARIES} )

add_library(gnuradio-gr_ais SHARED extended_lms_dfe_ff_impl.cc freqest_impl.cc invert_impl.cc parse_impl.cc unstuff_impl.cc)
target_link_libraries(gnuradio-gr_ais ${Boost_LIBRARY_DIRS} ${RUNTIME_LIBRARIES})
set_target_properties(gnuradio-gr_ais PROPERTIES DEFINE_SYMBOL "gnuradio_gr_ais_EXPORTS")

########################################################################
# Install built library files
########################################################################
install(TARGETS gnuradio-gr_ais
    LIBRARY DESTINATION lib${LIB_SUFFIX} # .so/.dylib file
    ARCHIVE DESTINATION lib${LIB_SUFFIX} # .lib file
    RUNTIME DESTINATION bin              # .dll file
)

########################################################################
# Build and register unit test
########################################################################

#include(GrTest)
#set(GR_TEST_TARGET_DEPS gnuradio-gr_ais)
#turn each test cpp file into an executable with an int main() function
#add_definitions(-DBOOST_TEST_DYN_LINK -DBOOST_TEST_MAIN)

#add_executable(qa_gr_ais_square_ff qa_gr_ais_square_ff.cc)
#target_link_libraries(${Boost_LIBRARIES})
#GR_ADD_TEST(qa_gr_ais_square_ff qa_gr_ais_square_ff)

#add_executable(qa_gr_ais_square2_ff qa_gr_ais_square2_ff.cc)
#target_link_libraries(qa_gr_ais_square2_ff gnuradio-gr_ais ${Boost_LIBRARIES})
#GR_ADD_TEST(qa_gr_ais_square2_ff qa_gr_ais_square2_ff)

install(
    DIRECTORY ${CMAKE_SOURCE_DIR}/lib
    DESTINATION include/gr_ais
    FILES_MATCHING PATTERN "*.h"
)
