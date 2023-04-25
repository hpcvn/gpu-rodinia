#makefile

include ../../common/make.config

CC := $(CUDA_DIR)/bin/nvcc

NVCC_FLAGS += -O3 -use_fast_math

INCLUDE := $(CUDA_DIR)/include

all: particlefilter_naive particlefilter_float

particlefilter_naive: particlefilter_naive.o
	$(CC) ${NVCC_FLAGS} -L$(CUDA_LIB_DIR) -lcuda -lm  $< -o $@

particlefilter_naive.o: ex_particle_CUDA_naive_seq.cu
	$(CC) ${NVCC_FLAGS} -I$(INCLUDE)  $< -o $@ -c

particlefilter_float: particlefilter_float.o
	$(CC) ${NVCC_FLAGS} -L$(CUDA_LIB_DIR) -lcuda -lm  $< -o $@

particlefilter_float.o: ex_particle_CUDA_float_seq.cu
	$(CC) ${NVCC_FLAGS} -I$(INCLUDE)  $< -o $@ -c

clean:
	rm -f particlefilter_naive particlefilter_float *.o
