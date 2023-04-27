include ../../common/hip.make.config

# C compiler
CC = gcc
CC_FLAGS = -fopenmp -O2

# 'make dbg=1' enables HIPCC debugging
ifeq ($(dbg),1)
	HIPCC_FLAGS += -g -O0
endif

# 'make emu=1' compiles the HIP kernels for emulation
ifeq ($(emu),1)
	HIPCC_FLAGS += -deviceemu
endif


kmeans: cluster.o getopt.o kmeans.o kmeans_clustering.o kmeans_cuda.o rmse.o
	$(HIPCC) $(CC_FLAGS) cluster.o getopt.o kmeans.o kmeans_clustering.o kmeans_cuda.o rmse.o -o kmeans -L$(HIP_LIB_DIR) -lm

%.o: %.[c]
	$(CC) $(CC_FLAGS) $< -c

kmeans_cuda.o: kmeans_cuda.cu
	${HIPCC} $(HIPCC_FLAGS) -c kmeans_cuda.cu

clean:
	rm -f *.o *~ kmeans kmeans_cuda.linkinfo
