set_source_files_properties(
  gaussian.cu
  PROPERTIES LANGUAGE HIP)

add_executable(gaussian
  gaussian.cu
)

target_compile_options(gaussian PRIVATE -ffast-math)
target_compile_definitions(gaussian PRIVATE TIMING)
target_include_directories(gaussian PRIVATE ${HIP_SRC_DIR}/util)

install(TARGETS gaussian
        RUNTIME DESTINATION bin/hip
	)
