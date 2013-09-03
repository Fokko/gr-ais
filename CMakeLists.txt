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
# Project setup
########################################################################
cmake_minimum_required(VERSION 2.6)
project(gr-gr_ais CXX)
enable_testing()

#select the release build type by default to get optimization flags
if(NOT CMAKE_BUILD_TYPE)
   set(CMAKE_BUILD_TYPE "Release")
   message(STATUS "Build type not specified: defaulting to release.")
endif(NOT CMAKE_BUILD_TYPE)
set(CMAKE_BUILD_TYPE ${CMAKE_BUILD_TYPE} CACHE STRING "")

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake/Modules)

  IF(APPLE)
    IF (CMAKE_SIZEOF_VOID_P MATCHES "8")
      IF (CMAKE_OSX_64)
        SET(ARCH "x86_64")
      ENDIF (CMAKE_OSX_64)
    ENDIF (CMAKE_SIZEOF_VOID_P MATCHES "8")
  ENDIF(APPLE)

########################################################################
# Compiler specific setup
########################################################################
if(CMAKE_COMPILER_IS_GNUCXX AND NOT WIN32)
    #http://gcc.gnu.org/wiki/Visibility
    add_definitions(-fvisibility=hidden)
endif()

########################################################################
# Find boost
########################################################################
FIND_PACKAGE(Boost)

add_definitions(-lboost_system)
    
########################################################################
# Install directories
########################################################################

include(GrPlatform) #define LIB_SUFFIX
set(GR_RUNTIME_DIR      bin)
set(GR_LIBRARY_DIR      lib${LIB_SUFFIX})
set(GR_INCLUDE_DIR      include)
set(GR_DATA_DIR         share)
set(GR_PKG_DATA_DIR     ${GR_DATA_DIR}/${CMAKE_PROJECT_NAME})
set(GR_DOC_DIR          ${GR_DATA_DIR}/doc)
set(GR_PKG_DOC_DIR      ${GR_DOC_DIR}/${CMAKE_PROJECT_NAME})
set(GR_CONF_DIR         etc)
set(GR_PKG_CONF_DIR     ${GR_CONF_DIR}/${CMAKE_PROJECT_NAME}/conf.d)
set(GR_LIBEXEC_DIR      libexec)
set(GR_PKG_LIBEXEC_DIR  ${GR_LIBEXEC_DIR}/${CMAKE_PROJECT_NAME})
set(GRC_BLOCKS_DIR      ${GR_PKG_DATA_DIR}/grc/blocks)

########################################################################
# Find gnuradio build dependencies
########################################################################
set(GR_REQUIRED_MODULES RUNTIME)
find_package(Gnuradio)

########################################################################
# Setup the include and linker paths
########################################################################
include_directories(
    ${CMAKE_SOURCE_DIR}/include
    ${CMAKE_SOURCE_DIR}/lib
    ${Boost_INCLUDE_DIR}
    "/usr/include/gnuradio"
    "/usr/local/include"
    "/usr/local/include/gnuradio/swig/"
)

link_directories(
    ${Boost_LIBRARY_DIRS}
    ${GNURADIO_LIBRARIES}
    "/usr/local/lib/python2.7/dist-packages/gnuradio"
)

# Set component parameters
set(GR_GR_AIS_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/include CACHE INTERNAL "" FORCE)
set(GR_GR_AIS_SWIG_INCLUDE_DIRS ${CMAKE_CURRENT_SOURCE_DIR}/swig CACHE INTERNAL "" FORCE)

########################################################################
# Add subdirectories
########################################################################
add_subdirectory(include)
add_subdirectory(lib)
add_subdirectory(swig)
add_subdirectory(python)
add_subdirectory(grc)
add_subdirectory(apps)
add_subdirectory(docs)
