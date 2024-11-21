include ../../common/make.config

CC := $(CUDA_DIR)/bin/nvcc ${NVCC_FLAGS}

INCLUDE := $(CUDA_DIR)/include

SRC = hotspot.cu

EXE = hotspot

hotspot: hotspot.o
	$(CC) ${NVCC_FLAGS} $< -o $(EXE)  -L$(CUDA_LIB_DIR)

hotspot.o: $(SRC)
	$(CC) $(KERNEL_DIM) $(SRC) -o $@ -I$(INCLUDE) -c

enum: $(SRC)
	$(CC) $(KERNEL_DIM) -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debug: $(SRC)
	$(CC) $(KERNEL_DIM) -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debugenum: $(SRC)
	$(CC) $(KERNEL_DIM) -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) *.o $(EXE).linkinfo result.txt
