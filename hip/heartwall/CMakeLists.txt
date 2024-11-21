set_source_files_properties(
  main.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  AVI/avimod.c
  AVI/avilib.c
  PROPERTIES LANGUAGE C)

add_executable(heartwall
  main.cu
  AVI/avimod.c
  AVI/avilib.c
)

target_include_directories(heartwall PRIVATE AVI)

install(TARGETS heartwall
        RUNTIME DESTINATION bin/hip
	)
