include ../../common/hip.make.config

SRC = 3D.cu

EXE = 3D

OUTPUT = *.out

${EXE}: $(SRC)
	${HIPCC} ${HIPCC_FLAGS} $(KERNEL_DIM) $(SRC) -o $(EXE) -I$(HIP_INCLUDE_DIR) -L$(HIP_LIB_DIR) 

enum: $(SRC)
	${HIPCC} ${HIPCC_FLAGS} $(KERNEL_DIM) -deviceemu $(SRC) -o $(EXE) -I$(HIP_INCLUDE_DIR) -L$(HIP_LIB_DIR) 

debug: $(SRC)
	${HIPCC} ${HIPCC_FLAGS} $(KERNEL_DIM) -g $(SRC) -o $(EXE) -I$(HIP_INCLUDE_DIR) -L$(HIP_LIB_DIR) 

debugenum: $(SRC)
	${HIPCC} ${HIPCC_FLAGS} $(KERNEL_DIM) -g -deviceemu $(SRC) -o $(EXE) -I$(HIP_INCLUDE_DIR) -L$(HIP_LIB_DIR) 

clean: $(SRC)
	rm -f $(EXE) $(EXE).linkinfo $(OUTPUT)
