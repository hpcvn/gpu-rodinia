set_source_files_properties(
  backprop_cuda.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  backprop.c
  facetrain.c
  imagenet.c
  PROPERTIES LANGUAGE C)

add_executable(backprop
  backprop_cuda.cu
  backprop.c
  facetrain.c
  imagenet.c
)

install(TARGETS backprop
        RUNTIME DESTINATION bin/hip
	)
