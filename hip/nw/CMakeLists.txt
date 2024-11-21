set_source_files_properties(
  needle.cu
  PROPERTIES LANGUAGE HIP)

add_executable(needle needle.cu)

target_include_directories(needle PRIVATE ${HIP_SRC_DIR}/util)

install(TARGETS needle
        RUNTIME DESTINATION bin/hip
	)
