include ../../common/make.config

CC := $(CUDA_DIR)/bin/nvcc

INCLUDE := $(CUDA_DIR)/include

SRC = bfs.cu
OBJ = bfs.o

EXE = bfs

bfs: $(OBJ)
	$(CC) ${NVCC_FLAGS} $(OBJ) -o $(EXE) -L$(CUDA_LIB_DIR)

$(OBJ): $(SRC)
	$(CC) ${NVCC_FLAGS} $(SRC) -o $(OBJ) -I$(INCLUDE) -I../util -DTIMING -c

clang: $(SRC)
	clang++ $(SRC) -o $(EXE) -I../util --cuda-gpu-arch=sm_20 \
		-L/usr/local/cuda/lib64 -lcudart_static -ldl -lrt -pthread -DTIMING

enum: $(SRC)
	$(CC) -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debug: $(SRC)
	$(CC) -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debugenum: $(SRC)
	$(CC) -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) $(OBJ) $(EXE).linkinfo result.txt
