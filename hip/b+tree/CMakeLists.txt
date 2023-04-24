set_source_files_properties(
  kernel/kernel_gpu_cuda_wrapper.cu
  kernel/kernel_gpu_cuda_wrapper_2.cu
  util/cuda/cuda.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  main.c
  util/timer/timer.c
  util/num/num.c
  PROPERTIES LANGUAGE C)

add_executable(b+tree
  main.c
  util/timer/timer.c
  util/num/num.c
  kernel/kernel_gpu_cuda_wrapper.cu
  kernel/kernel_gpu_cuda_wrapper_2.cu
  util/cuda/cuda.cu
)

target_compile_definitions(b+tree PRIVATE RD_WG_SIZE_0=256)

install(TARGETS b+tree
        RUNTIME DESTINATION bin/hip
	)
