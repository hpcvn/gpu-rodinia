include ../common/make.config

RODINIA_CUDA_DIR := $(shell pwd)

CUDA_BIN_DIR := $(RODINIA_CUDA_DIR)/bin/linux/cuda

#CUDA_DIRS := backprop bfs cfd gaussian heartwall hotspot kmeans lavaMD leukocyte lud nn	nw srad streamcluster particlefilter pathfinder mummergpu
#CUDA_DIRS := backprop bfs b+tree cfd dwt2d gaussian heartwall hotspot hotspot3D huffman hybridsort kmeans lavaMD leukocyte lud mummergpu myocyte nn nw particlefilter pathfinder srad streamcluster
CUDA_DIRS  := backprop bfs b+tree cfd dwt2d gaussian heartwall hotspot hotspot3D huffman kmeans lavaMD leukocyte lud mummergpu myocyte nn nw particlefilter pathfinder srad streamcluster

all: CUDA

CUDA:
	test -d ${CUDA_BIN_DIR} || mkdir -p ${CUDA_BIN_DIR}
	cd backprop;		make;	cp backprop $(CUDA_BIN_DIR)
	cd bfs;			make;	cp bfs $(CUDA_BIN_DIR)
	cd b+tree;		make;	cp b+tree $(CUDA_BIN_DIR)
	cd cfd;			make;	cp euler3d euler3d_double pre_euler3d pre_euler3d_double $(CUDA_BIN_DIR)
	cd dwt2d;		make;	cp dwt2d $(CUDA_BIN_DIR)
	cd gaussian;		make;	cp gaussian $(CUDA_BIN_DIR)
	cd heartwall;		make;	cp heartwall $(CUDA_BIN_DIR)
	cd hotspot;		make;	cp hotspot $(CUDA_BIN_DIR)
	cd hotspot3D;		make;	cp 3D $(CUDA_BIN_DIR)
	cd huffman;		make;	cp pavle $(CUDA_BIN_DIR)
	cd kmeans;		make;	cp kmeans $(CUDA_BIN_DIR)
	cd lavaMD;		make;	cp lavaMD $(CUDA_BIN_DIR)
	cd leukocyte;		make;	cp CUDA/leukocyte $(CUDA_BIN_DIR)
	cd lud;			make;	cp cuda/lud_cuda $(CUDA_BIN_DIR)
	cd mummergpu;		make;	cp bin/mummergpu $(CUDA_BIN_DIR)
	cd myocyte;		make;	cp myocyte.out $(CUDA_BIN_DIR)
	cd nn;			make;	cp nn $(CUDA_BIN_DIR)
	cd nw;			make;	cp needle $(CUDA_BIN_DIR)
	cd particlefilter;	make;	cp particlefilter_naive particlefilter_float $(CUDA_BIN_DIR)
	cd pathfinder;		make;	cp pathfinder $(CUDA_BIN_DIR)
	cd srad/srad_v1;	make;	cp srad $(CUDA_BIN_DIR)/srad_v1
	cd srad/srad_v2;	make;   cp srad $(CUDA_BIN_DIR)/srad_v2
	cd streamcluster;	make;	cp sc_gpu $(CUDA_BIN_DIR)

clean:
	rm $(CUDA_BIN_DIR)/* -f
	for dir in $(CUDA_DIRS) ; do cd $${dir} ; make clean ; cd ../ ; done
