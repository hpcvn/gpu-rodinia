set_source_files_properties(
  main.cu
  dwt.cu
  components.cu
  dwt_cuda/fdwt53.cu
  dwt_cuda/fdwt97.cu
  dwt_cuda/common.cu
  dwt_cuda/rdwt97.cu
  dwt_cuda/rdwt53.cu
  PROPERTIES LANGUAGE HIP)

add_executable(dwt2d
  main.cu
  dwt.cu
  components.cu
  dwt_cuda/fdwt53.cu
  dwt_cuda/fdwt97.cu
  dwt_cuda/common.cu
  dwt_cuda/rdwt97.cu
  dwt_cuda/rdwt53.cu
)

target_compile_definitions(dwt2d PRIVATE OUTPUT)

install(TARGETS dwt2d
        RUNTIME DESTINATION bin/hip
	)
