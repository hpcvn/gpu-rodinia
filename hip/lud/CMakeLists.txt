set_source_files_properties(
  cuda/lud.cu
  cuda/lud_kernel.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  common/common.c
  PROPERTIES LANGUAGE C)

add_executable(lud
  cuda/lud.cu
  cuda/lud_kernel.cu
  common/common.c
)

target_include_directories(lud PRIVATE common)
target_include_directories(lud PRIVATE ${HIP_SRC_DIR}/util)

install(TARGETS lud
        RUNTIME DESTINATION bin/hip
	)
