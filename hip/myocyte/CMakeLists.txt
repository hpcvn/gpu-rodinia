set_source_files_properties(
  main.cu
  PROPERTIES LANGUAGE HIP)

add_executable(myocyte
  main.cu
)

install(TARGETS myocyte
        RUNTIME DESTINATION bin/hip
	)
