set_source_files_properties(
  3D.cu
  PROPERTIES LANGUAGE HIP)

add_executable(3D
  3D.cu
)

install(TARGETS 3D
        RUNTIME DESTINATION bin/hip
	)
