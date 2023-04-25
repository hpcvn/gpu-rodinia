include ../../common/make.config

CC := $(CUDA_DIR)/bin/nvcc

INCLUDE := $(CUDA_DIR)/include

SRC = 3D.cu

EXE = 3D
OBJ = 3D.o

OUTPUT = *.out

FLAGS = ${NVCC_FLAGS} # -g -G  #-arch sm_20 --ptxas-options=-v

3D: $(OBJ)
	$(CC) $(FLAGS) -o $(EXE) $(OBJ) -L$(CUDA_LIB_DIR)

$(OBJ): $(SRC)
	$(CC) $(KERNEL_DIM) $(FLAGS) $(SRC) -o $(OBJ) -I$(INCLUDE) -c

enum: $(SRC)
	$(CC) $(KERNEL_DIM) $(FLAGS) -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debug: $(SRC)
	$(CC) $(KERNEL_DIM) $(FLAGS) -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

debugenum: $(SRC)
	$(CC) $(KERNEL_DIM) $(FLAGS) -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(CUDA_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) $(OBJ) $(EXE).linkinfo $(OUTPUT)
