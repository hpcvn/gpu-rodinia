set_source_files_properties(
  pathfinder.cu
  PROPERTIES LANGUAGE HIP)

add_executable(pathfinder pathfinder.cu)

target_include_directories(pathfinder PRIVATE ${HIP_SRC_DIR}/util)

install(TARGETS pathfinder
        RUNTIME DESTINATION bin/hip
	)
