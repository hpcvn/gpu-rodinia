set_source_files_properties(
  streamcluster_cuda.cu
  streamcluster_header.cu
  streamcluster_cuda_cpu.cpp
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  streamcluster_original.cpp
  PROPERTIES LANGUAGE CXX)

add_executable(sc_gpu
  streamcluster_cuda_cpu.cpp
  streamcluster_cuda.cu
)

install(TARGETS sc_gpu
        RUNTIME DESTINATION bin/hip
	)
