set_source_files_properties(
  nn_cuda.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  hurricane_gen.c
  PROPERTIES LANGUAGE C)

add_executable(hurricane_gen hurricane_gen.c)
add_executable(nn nn_cuda.cu)

target_include_directories(nn PRIVATE ${HIP_SRC_DIR}/util)

install(TARGETS nn hurricane_gen
        RUNTIME DESTINATION bin/hip
	)
