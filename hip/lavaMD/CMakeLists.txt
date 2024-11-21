set_source_files_properties(
  kernel/kernel_gpu_cuda_wrapper.cu
  util/device/device.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  main.c
  util/num/num.c
  util/timer/timer.c
  PROPERTIES LANGUAGE C)

add_executable(lavaMD
  kernel/kernel_gpu_cuda_wrapper.cu
  util/device/device.cu
  main.c
  util/num/num.c
  util/timer/timer.c
)

install(TARGETS lavaMD
        RUNTIME DESTINATION bin/hip
	)
