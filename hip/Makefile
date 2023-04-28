include ../common/hip.make.config

RODINIA_HIP_DIR := $(shell pwd)

HIP_BIN_DIR := $(RODINIA_HIP_DIR)/bin/linux/hip

#HIP_DIRS := backprop bfs b+tree cfd dwt2d gaussian heartwall hotspot hotspot3D huffman hybridsort kmeans lavaMD leukocyte lud mummergpu myocyte nn nw particlefilter pathfinder srad streamcluster
HIP_DIRS  := backprop bfs b+tree cfd dwt2d gaussian heartwall hotspot hotspot3D huffman kmeans lavaMD lud mummergpu myocyte nn nw particlefilter pathfinder srad streamcluster

all: HIP

HIP:
	test -d ${HIP_BIN_DIR} || mkdir -p ${HIP_BIN_DIR}
	cd backprop;		make;	cp backprop $(HIP_BIN_DIR)
	cd bfs;			make;	cp bfs $(HIP_BIN_DIR)
	cd b+tree;		make;	cp b+tree $(HIP_BIN_DIR)
	cd cfd;			make;	cp euler3d euler3d_double pre_euler3d pre_euler3d_double $(HIP_BIN_DIR)
	cd dwt2d;		make;	cp dwt2d $(HIP_BIN_DIR)
	cd gaussian;		make;	cp gaussian $(HIP_BIN_DIR)
	cd heartwall;		make;	cp heartwall $(HIP_BIN_DIR)
	cd hotspot;		make;	cp hotspot $(HIP_BIN_DIR)
	cd hotspot3D;		make;	cp 3D $(HIP_BIN_DIR)
	cd huffman;		make;	cp pavle $(HIP_BIN_DIR)
	cd kmeans;		make;	cp kmeans $(HIP_BIN_DIR)
	cd lavaMD;		make;	cp lavaMD $(HIP_BIN_DIR)
	cd lud;			make;	cp cuda/lud_hip $(HIP_BIN_DIR)
	cd mummergpu;		make;	cp bin/mummergpu $(HIP_BIN_DIR)
	cd myocyte;		make;	cp myocyte $(HIP_BIN_DIR)
	cd nn;			make;	cp nn $(HIP_BIN_DIR)
	cd nw;			make;	cp needle $(HIP_BIN_DIR)
	cd particlefilter;	make;	cp particlefilter_naive particlefilter_float $(HIP_BIN_DIR)
	cd pathfinder;		make;	cp pathfinder $(HIP_BIN_DIR)
	cd srad/srad_v1;	make;	cp srad_v1 $(HIP_BIN_DIR)/srad_v1
	cd srad/srad_v2;	make;   cp srad_v2 $(HIP_BIN_DIR)/srad_v2
	cd streamcluster;	make;	cp sc_gpu $(HIP_BIN_DIR)

clean:
	rm $(HIP_BIN_DIR)/* -f
	for dir in $(HIP_DIRS) ; do cd $${dir} ; make clean ; cd ../ ; done

run:
	cd backprop;		sh ./run
	cd bfs;			sh ./run
	cd b+tree;		sh ./run
	cd cfd;			sh ./run
	cd dwt2d;		sh ./run
	cd gaussian;		sh ./run
	cd heartwall;		sh ./run
	cd hotspot;		sh ./run
	cd hotspot3D;		sh ./run
	cd huffman;		sh ./run
	cd kmeans;		sh ./run
	cd lavaMD;		sh ./run
	cd lud;			sh ./run
	cd mummergpu;		sh ./run
	cd myocyte;		sh ./run
	cd nn;			sh ./run
	cd nw;			sh ./run
	cd particlefilter;	sh ./run
	cd pathfinder;		sh ./run
	cd srad/srad_v1;	sh ./run
	cd srad/srad_v2;	sh ./run
	cd streamcluster;	sh ./run
