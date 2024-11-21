include ../../common/hip.make.config

INCLUDE := $(HIP_DIR)/include

SRC = bfs.cu

EXE = bfs

bfs: $(SRC)
	$(HIPCC) ${HIPCC_FLAGS} $(SRC) -o $(EXE) -I$(INCLUDE) -I../util -L$(HIP_LIB_DIR) -DTIMING

enum: $(SRC)
	$(HIPCC) -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(HIP_LIB_DIR) 

debug: $(SRC)
	$(HIPCC) ${HIPCC_FLAGS} -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$(HIP_LIB_DIR) 

debugenum: $(SRC)
	$(HIPCC) -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(HIP_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo result.txt
