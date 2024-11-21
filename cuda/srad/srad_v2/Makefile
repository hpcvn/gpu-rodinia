include ../../../common/make.config

CC := $(CUDA_DIR)/bin/nvcc

INCLUDE := $(CUDA_DIR)/include

SRC = srad.cu

EXE = srad

srad: srad.o
	$(CC) ${NVCC_FLAGS} $(KERNEL_DIM) $< -o $@ -L$(CUDA_LIB_DIR)

srad.o: $(SRC)
	$(CC) ${NVCC_FLAGS} $(KERNEL_DIM) $(SRC) -o $@ -I$(INCLUDE) -c

enum: $(SRC)
	$(CC) $(KERNEL_DIM) -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debug: $(SRC)
	$(CC) $(KERNEL_DIM) -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debugenum: $(SRC)
	$(CC) $(KERNEL_DIM) -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clean: $(SRC)
	rm -f *.o $(EXE) $(EXE).linkinfo result.txt
