include ../../common/make.config

CC := $(CUDA_DIR)/bin/nvcc

INCLUDE := $(CUDA_DIR)/include

SRC = needle.cu
OBJ = needle.o

EXE = needle

needle: $(OBJ)
	$(CC) ${NVCC_FLAGS} $(OBJ) -o $(EXE) -L$(CUDA_LIB_DIR)

$(OBJ): $(SRC)
	$(CC) ${NVCC_FLAGS} ${KERNEL_DIM} $(SRC) -o $(OBJ) -I$(INCLUDE) -c

clang: $(SRC)
	clang++ $(SRC) -o $(EXE) -I../util --cuda-gpu-arch=sm_20 \
		-L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -DTIMING

enum: $(SRC)
	$(CC) ${KERNEL_DIM} -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debug: $(SRC)
	$(CC) ${KERNEL_DIM} -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debugenum: $(SRC)
	$(CC) ${KERNEL_DIM} -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) $(OBJ) $(EXE).linkinfo result.txt
