
ADD_CUSTOM_TARGET(
  meschach
  COMMENT "config ing meschach in ${_pkg_rpath}"
  COMMENT "options: --with-all"
  ALL
  WORKING_DIRECTORY  ${HIP_SRC_DIR}/leukocyte/meschach_lib
  COMMAND "cd ${HIP_SRC_DIR}/leukocyte/meschach_lib ; CC=gcc ./configure --with-all ; make"
  )

add_subdirectory(CUDA)
