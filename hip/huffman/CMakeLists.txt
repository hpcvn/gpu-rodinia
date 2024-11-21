set_source_files_properties(
  main_test_cu.cu
  pack_kernels.cu
  scan.cu
  vlc_kernel_sm64huff.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  cpuencode.cpp
  stats_logger.cpp
  PROPERTIES LANGUAGE CXX)

add_executable(pavle
  cpuencode.cpp
  stats_logger.cpp
  main_test_cu.cu
  pack_kernels.cu
  scan.cu
  vlc_kernel_sm64huff.cu
)

target_compile_definitions(pavle PRIVATE CUDART_VERSION=10010)

install(TARGETS pavle
        RUNTIME DESTINATION bin/hip
	)
