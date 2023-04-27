set_source_files_properties(
  lud.cu
  lud_kernel.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  ../common/common.c
  PROPERTIES LANGUAGE C)

add_executable(lud_hip
  lud.cu
  lud_kernel.cu
  ../common/common.c
)

target_include_directories(lud_hip PRIVATE ../common)
target_include_directories(lud_hip PRIVATE ${HIP_SRC_DIR}/util)

install(TARGETS lud_hip
        RUNTIME DESTINATION bin/hip
	)
