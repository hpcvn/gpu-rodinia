include ../../common/make.config

CC := $(CUDA_DIR)/bin/nvcc

INCLUDE := $(CUDA_DIR)/include

SRC = gaussian.cu
EXE = gaussian
OBJ = gaussian.o

gaussian: $(OBJ)
	$(CC) ${NVCC_FLAGS} $(OBJ) -o $(EXE) -L$(CUDA_LIB_DIR)

$(OBJ): $(SRC)
	$(CC) ${NVCC_FLAGS} $(KERNEL_DIM) $(SRC) -o $(OBJ) -I$(INCLUDE) -c

clang: $(SRC)
	clang++ $(SRC) -o $(EXE) -I../util --cuda-gpu-arch=sm_20 \
		-L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -DTIMING

clean:
	rm -f $(EXE) $(OBJ)
