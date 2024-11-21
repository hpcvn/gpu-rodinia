set_source_files_properties(
  find_ellipse_kernel.cu
  track_ellipse_kernel.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  detect_main.c
  avilib.c
  find_ellipse.c
  track_ellipse.c
  misc_math.c
  PROPERTIES LANGUAGE C)

add_executable(leukocyte
  detect_main.c
  avilib.c
  find_ellipse.c
  track_ellipse.c
  misc_math.c
  find_ellipse_kernel.cu
  track_ellipse_kernel.cu
)


target_include_directories(leukocyte PRIVATE ${HIP_SRC_DIR}/leukocyte/meschach_lib)

install(TARGETS leukocyte
        RUNTIME DESTINATION bin/hip
	)
