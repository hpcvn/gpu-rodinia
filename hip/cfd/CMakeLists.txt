set_source_files_properties(
  euler3d.cu
  euler3d_double.cu
  pre_euler3d.cu
  pre_euler3d_double.cu
  PROPERTIES LANGUAGE HIP)

add_executable(euler3d euler3d.cu)
add_executable(euler3d_double euler3d_double.cu)
add_executable(pre_euler3d pre_euler3d.cu)
add_executable(pre_euler3d_double pre_euler3d_double.cu)

#target_include_directories(euler3d PRIVATE ${HIP_SRC_DIR}/util)
target_include_directories(euler3d PRIVATE inc)
target_compile_definitions(euler3d PRIVATE __DRIVER_TYPES_H__)
target_include_directories(euler3d_double PRIVATE inc)
target_compile_definitions(euler3d_double PRIVATE __DRIVER_TYPES_H__)
target_include_directories(pre_euler3d PRIVATE inc)
target_compile_definitions(pre_euler3d PRIVATE __DRIVER_TYPES_H__)
target_include_directories(pre_euler3d_double PRIVATE inc)
target_compile_definitions(pre_euler3d_double PRIVATE __DRIVER_TYPES_H__)

install(TARGETS euler3d euler3d_double pre_euler3d pre_euler3d_double
        RUNTIME DESTINATION bin/hip
	)
