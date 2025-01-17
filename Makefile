include common/make.config

RODINIA_BASE_DIR := $(shell pwd)

CUDA_BIN_DIR := $(RODINIA_BASE_DIR)/bin/linux/cuda
OMP_BIN_DIR := $(RODINIA_BASE_DIR)/bin/linux/omp
OPENCL_BIN_DIR := $(RODINIA_BASE_DIR)/bin/linux/opencl

CUDA_DIRS := backprop bfs cfd gaussian heartwall hotspot kmeans lavaMD leukocyte lud nn	nw srad streamcluster particlefilter pathfinder mummergpu
OMP_DIRS  := backprop bfs cfd		   heartwall hotspot kmeans lavaMD leukocyte lud nn nw srad streamcluster particlefilter pathfinder mummergpu
OCL_DIRS  := backprop bfs cfd gaussian heartwall hotspot kmeans lavaMD leukocyte lud nn	nw srad streamcluster particlefilter pathfinder

all: CUDA OMP OPENCL

CUDA: 
	cd cuda/backprop;		make;	cp backprop $(CUDA_BIN_DIR)
	cd cuda/bfs;			make;	cp bfs $(CUDA_BIN_DIR)
	cd cuda/cfd;			make;	cp euler3d euler3d_double pre_euler3d pre_euler3d_double $(CUDA_BIN_DIR)
	cd cuda/gaussian;		make;	cp gaussian $(CUDA_BIN_DIR)
	cd cuda/heartwall;		make;	cp heartwall $(CUDA_BIN_DIR)
	cd cuda/hotspot;		make;	cp hotspot $(CUDA_BIN_DIR)
	cd cuda/kmeans;			make;	cp kmeans $(CUDA_BIN_DIR)
	cd cuda/lavaMD;			make;	cp lavaMD $(CUDA_BIN_DIR)
	cd cuda/leukocyte;		make;	cp CUDA/leukocyte $(CUDA_BIN_DIR)
	cd cuda/lud;			make;	cp cuda/lud_cuda $(CUDA_BIN_DIR)
	cd cuda/nn;				make;	cp nn $(CUDA_BIN_DIR)
	cd cuda/nw;			make;	cp needle $(CUDA_BIN_DIR)
	cd cuda/srad/srad_v1;		make;	cp srad $(CUDA_BIN_DIR)/srad_v1
	cd cuda/srad/srad_v2;		make;   cp srad $(CUDA_BIN_DIR)/srad_v2
	cd cuda/streamcluster;		make;	cp sc_gpu $(CUDA_BIN_DIR)
	cd cuda/particlefilter;		make;	cp particlefilter_naive particlefilter_float $(CUDA_BIN_DIR)       
	cd cuda/pathfinder;		make;	cp pathfinder $(CUDA_BIN_DIR)
	cd cuda/mummergpu;		make;	cp bin/mummergpu $(CUDA_BIN_DIR)
	cd cuda/hybridsort;              make;   cp hybridsort $(CUDA_BIN_DIR)
	cd cuda/dwt2d;                   make;   cp dwt2d  $(CUDA_BIN_DIR)
	
	
OMP:
	cd openmp/backprop;				make;	cp backprop $(OMP_BIN_DIR)
	cd openmp/bfs;					make;	cp bfs $(OMP_BIN_DIR)
	cd openmp/cfd;					make;	cp euler3d_cpu euler3d_cpu_double pre_euler3d_cpu pre_euler3d_cpu_double $(OMP_BIN_DIR)
	cd openmp/heartwall;				make;	cp heartwall $(OMP_BIN_DIR)
	cd openmp/hotspot;				make;	cp hotspot $(OMP_BIN_DIR)
	cd openmp/kmeans/kmeans_openmp;			make;	cp kmeans $(OMP_BIN_DIR)
	cd openmp/lavaMD;				make;	cp lavaMD $(OMP_BIN_DIR)
	cd openmp/leukocyte;				make;	cp OpenMP/leukocyte $(OMP_BIN_DIR)
	cd openmp/lud;					make;	cp omp/lud_omp $(OMP_BIN_DIR)
	cd openmp/nn;					make;	cp nn $(OMP_BIN_DIR)
	cd openmp/nw;					make;	cp needle $(OMP_BIN_DIR)
	cd openmp/srad/srad_v1;				make;	cp srad $(OMP_BIN_DIR)/srad_v1
	cd openmp/srad/srad_v2;				make;   cp srad $(OMP_BIN_DIR)/srad_v2
	cd openmp/streamcluster;			make;	cp sc_omp $(OMP_BIN_DIR)
	cd openmp/particlefilter;			make;	cp particle_filter $(OMP_BIN_DIR)
	cd openmp/pathfinder;				make;	cp pathfinder $(OMP_BIN_DIR)
	cd openmp/mummergpu;				make;	cp bin/mummergpu $(OMP_BIN_DIR)

opencl: OPENCL
OPENCL:
	cd opencl/backprop;			make;	cp backprop.out     $(OPENCL_BIN_DIR)/backprop
	cd opencl/bfs;				make;	cp bfs.out		$(OPENCL_BIN_DIR)/bfs
	cd opencl/b+tree;			make;	cp b+tree.out	$(OPENCL_BIN_DIR)/b+tree
	cd opencl/cfd;				make;	cp euler3d.out	$(OPENCL_BIN_DIR)
	cd opencl/hotspot;			make;	cp hotspot.out	$(OPENCL_BIN_DIR)/hotspot
	cd opencl/kmeans;			make;	cp kmeans.out	$(OPENCL_BIN_DIR)/kmeans
	cd opencl/lavaMD;			make;	cp lavaMD.out	$(OPENCL_BIN_DIR)/lavaMD
	#cd opencl/leukocyte;			make;	cp OpenCL/leukocyte	$(OPENCL_BIN_DIR)
	cd opencl/lud/ocl;			make;	cp lud.out		$(OPENCL_BIN_DIR)/lud
	cd opencl/myocyte;			make;	cp myocyte.out	$(OPENCL_BIN_DIR)/myocyte
	cd opencl/nw;				make;	cp nw		$(OPENCL_BIN_DIR)
	cd opencl/srad;				make;	cp srad.out		$(OPENCL_BIN_DIR)/srad	
	cd opencl/streamcluster;		make;	cp streamcluster.out	$(OPENCL_BIN_DIR)/streamcluster
	cd opencl/pathfinder;			make;	cp pathfinder.out	$(OPENCL_BIN_DIR)
	cd opencl/particlefilter;		make;	cp OCL_particlefilter_naive.out OCL_particlefilter_single.out OCL_particlefilter_double.out $(OPENCL_BIN_DIR)
							mv $(OPENCL_BIN_DIR)/OCL_particlefilter_naive.out $(OPENCL_BIN_DIR)/OCL_particlefilter_naive
							mv $(OPENCL_BIN_DIR)/OCL_particlefilter_single.out $(OPENCL_BIN_DIR)/OCL_particlefilter_single
							mv $(OPENCL_BIN_DIR)/OCL_particlefilter_double.out $(OPENCL_BIN_DIR)/OCL_particlefilter_double
	cd opencl/gaussian;			make;	cp gaussian.out	$(OPENCL_BIN_DIR)/gaussian
	cd opencl/nn;				make;	cp nn.out	$(OPENCL_BIN_DIR)/nn
	cd opencl/heartwall;		        make;	cp heartwall.out	$(OPENCL_BIN_DIR)/heartwall
	cd opencl/hybridsort;              	make;   cp hybridsort.out $(OPENCL_BIN_DIR)
	cd opencl/dwt2d;                   	make;   cp dwt2d.out  $(OPENCL_BIN_DIR)/dwt2d
	
clean: CUDA_clean OMP_clean OCL_clean

CUDA_clean:
	cd $(CUDA_BIN_DIR); rm -f *
	for dir in $(CUDA_DIRS) ; do cd cuda/$$dir ; make clean ; cd ../.. ; done
	
OMP_clean:
	cd $(OMP_BIN_DIR); rm -f *
	for dir in $(OMP_DIRS) ; do cd openmp/$$dir ; make clean ; cd ../.. ; done

OCL_clean:
	cd $(OPENCL_BIN_DIR); rm -f *
	for dir in $(OCL_DIRS) ; do cd opencl/$$dir ; make clean ; cd ../.. ; done
