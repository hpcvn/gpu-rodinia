set_source_files_properties(
  srad.cu
  PROPERTIES LANGUAGE HIP)

add_executable(srad_v2 srad.cu)

install(TARGETS srad_v2
        RUNTIME DESTINATION bin/hip
	)
