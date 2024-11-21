set_source_files_properties(
  mummergpu.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  mummergpu_gold.cpp
  suffix-tree.cpp
  PoolMalloc.cpp
  mummergpu_main.cpp
  PROPERTIES LANGUAGE CXX)

add_executable(mummergpu
  mummergpu.cu
  mummergpu_gold.cpp
  suffix-tree.cpp
  PoolMalloc.cpp
  mummergpu_main.cpp
)

target_compile_options(mummergpu PRIVATE -fopenmp)
target_link_libraries(mummergpu PRIVATE omp m)

install(TARGETS mummergpu
        RUNTIME DESTINATION bin/hip
	)
