set_source_files_properties(
  ex_particle_CUDA_naive_seq.cu
  ex_particle_CUDA_float_seq.cu
  PROPERTIES LANGUAGE HIP)

add_executable(particlefilter_naive ex_particle_CUDA_naive_seq.cu)
add_executable(particlefilter_float ex_particle_CUDA_float_seq.cu)

install(TARGETS particlefilter_naive particlefilter_float
        RUNTIME DESTINATION bin/hip
	)
