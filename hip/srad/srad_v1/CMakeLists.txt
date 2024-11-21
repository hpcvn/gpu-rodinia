set_source_files_properties(
  main.cu
  PROPERTIES LANGUAGE HIP)

add_executable(srad_v1 main.cu)

install(TARGETS srad_v1
        RUNTIME DESTINATION bin/hip
	)
