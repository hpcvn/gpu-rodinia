set_source_files_properties(
  hotspot.cu
  PROPERTIES LANGUAGE HIP)

add_executable(hotspot
  hotspot.cu
)

install(TARGETS hotspot
        RUNTIME DESTINATION bin/hip
	)
