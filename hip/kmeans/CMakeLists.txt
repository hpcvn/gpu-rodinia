set_source_files_properties(
  kmeans_cuda.cu
  PROPERTIES LANGUAGE HIP)

set_source_files_properties(
  cluster.c
  getopt.c
  kmeans.c
  kmeans_clustering.c
  rmse.c
  PROPERTIES LANGUAGE C)

add_executable(kmeans
  kmeans_cuda.cu
  cluster.c
  getopt.c
  kmeans.c
  kmeans_clustering.c
  rmse.c
)

target_compile_options(kmeans PRIVATE -fopenmp)
target_link_libraries(kmeans PRIVATE omp m)

install(TARGETS kmeans
        RUNTIME DESTINATION bin/hip
	)
