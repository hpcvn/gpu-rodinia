set_source_files_properties(
  bfs.cu
  PROPERTIES LANGUAGE HIP)

add_executable(bfs
  bfs.cu
)

target_compile_definitions(bfs PRIVATE TIMING)
target_include_directories(bfs PRIVATE ${HIP_SRC_DIR}/util)

install(TARGETS bfs
        RUNTIME DESTINATION bin/hip
	)
