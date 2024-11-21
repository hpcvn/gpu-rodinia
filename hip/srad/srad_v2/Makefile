include ../../../common/hip.make.config

INCLUDE := $(HIP_DIR)/include

SRC = srad.cu

EXE = srad_v2

${EXE}: $(SRC)
	${HIPCC} ${HIPCC_FLAGS} $(KERNEL_DIM) $(SRC) -o $(EXE) -I$(INCLUDE) -L$(HIP_LIB_DIR) 

enum: $(SRC)
	${HIPCC} ${HIPCC_FLAGS} $(KERNEL_DIM) -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(HIP_LIB_DIR) 

debug: $(SRC)
	${HIPCC} ${HIPCC_FLAGS} $(KERNEL_DIM) -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$(HIP_LIB_DIR) 

debugenum: $(SRC)
	${HIPCC} ${HIPCC_FLAGS} $(KERNEL_DIM) -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(HIP_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo result.txt
