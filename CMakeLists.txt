cmake_minimum_required(VERSION 3.21)
project(Rodinia
		VERSION 3.1
		DESCRIPTION "Rodinia 3.1"
                )
#		LANGUAGES C HIP CUDA)

include(CMakePrintHelpers)
set(cmake_verbose 1)          # set to 1 if you need to debug the cmake build

########################
#
# Set up some global build variables
#
#set(CMAKE_BUILD_TYPE Release)
#set(CMAKE_BUILD_TYPE Debug)

set(Rodinia_SRC_DIR       ${PROJECT_SOURCE_DIR})
set(Rodinia_INSTALL_DIR   ${PROJECT_BINARY_DIR})
#set(CMAKE_INSTALL_PREFIX ${Rodinia_INSTALL_DIR})
set(PROJECT_INSTALL_DIR   ${CMAKE_INSTALL_PREFIX})

if(${cmake_verbose})
	cmake_print_variables(PROJECT_SOURCE_DIR)
	cmake_print_variables(PROJECT_BINARY_DIR)
	cmake_print_variables(PROJECT_INSTALL_DIR)
	cmake_print_variables(CMAKE_BUILD_TYPE)
endif()

########################
# enable node programming model
option(ENABLE_CUDA    	"CUDA"    	OFF)
option(ENABLE_HIP    	"HIP"    	ON)
option(ENABLE_OPENCL  	"OpenCL"  	OFF)
option(ENABLE_OPENMP  	"OpenMP"  	OFF )

if(${cmake_verbose})
	cmake_print_variables(ENABLE_CUDA   )
	cmake_print_variables(ENABLE_HIP    )
	cmake_print_variables(ENABLE_OPENCL )
	cmake_print_variables(ENABLE_OPENMP )
endif()

if(${ENABLE_CUDA})
  find_package(CUDAToolkit REQUIRED)
#  message(STATUS "CUDA Compiler is" ${CMAKE_CUDA_COMPILER})
  if(DEFINED CUDA_ARCH)
    set(CMAKE_CUDA_ARCHITECTURES ${CUDA_ARCH})
  else()
    set(CMAKE_CUDA_ARCHITECTURES 70)
  endif()
  message(STATUS "Building Rodinia for NVIDIA GPU ARCH " "${CMAKE_CUDA_ARCHITECTURES}")
  add_subdirectory(cuda)
endif()

if(${ENABLE_HIP})
  find_package(HIP REQUIRED)
  if(DEFINED HIP_ARCH)
    set(CMAKE_HIP_ARCHITECTURES ${HIP_ARCH})
  else()
    set(CMAKE_HIP_ARCHITECTURES gfx906:sramecc-:xnack-)
  endif()
  message(STATUS "Building Rodinia for AMDGPU ARCH " "${CMAKE_HIP_ARCHITECTURES}")
  add_subdirectory(hip)
endif()

if(${ENABLE_OPENCL})
	find_package(OpenCL REQUIRED)
endif()
if(${ENABLE_OPENMP})
	find_package(OpenMP REQUIRED)
endif()

########################
#
# Create our internal header file based on our config.
#
#configure_file (
#    "${PROJECT_SOURCE_DIR}/include/shoc/shoci.h.in"
#    "${Rodinia_INC_DIR}/shoci.h"
#)

#configure_file (
#    "${PROJECT_SOURCE_DIR}/config/config.h.cmake"
#    "${CMAKE_CURRENT_BINARY_DIR}/config/config.h"
#)
