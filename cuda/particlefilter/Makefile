#makefile

include ../../common/make.config

CC := $(CUDA_DIR)/bin/nvcc

NVCC_FLAGS += -O3 -use_fast_math

INCLUDE := $(CUDA_DIR)/include

all: naive float

naive: ex_particle_CUDA_naive_seq.cu
	$(CC) ${NVCC_FLAGS} -I$(INCLUDE) -L$(CUDA_LIB_DIR) -lcuda -g -lm  ex_particle_CUDA_naive_seq.cu -o particlefilter_naive
	
float: ex_particle_CUDA_float_seq.cu
	$(CC) ${NVCC_FLAGS} -I$(INCLUDE) -L$(CUDA_LIB_DIR) -lcuda -g -lm  ex_particle_CUDA_float_seq.cu -o particlefilter_float

clean:
	rm particlefilter_naive particlefilter_float
