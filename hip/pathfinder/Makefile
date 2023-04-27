include ../../common/hip.make.config

INCLUDE := ../util

SRC = pathfinder.cu

EXE = pathfinder

${EXE}:
	${HIPCC} ${HIPCC_FLAGS} $(SRC) -o $(EXE) -I$(INCLUDE) -L$(HIP_LIB_DIR) 

enum:
	${HIPCC} ${HIPCC_FLAGS} -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$$(HIP_LIB_DIR) 

debug:
	${HIPCC} ${HIPCC_FLAGS} -g $(SRC) -o $(EXE) -I$(INCLUDE) -L$$(HIP_LIB_DIR) 

debugenum:
	${HIPCC} ${HIPCC_FLAGS} -g -deviceemu $(SRC) -o $(EXE) -I$(INCLUDE) -L$(HIP_LIB_DIR) 

clean:
	rm -f pathfinder
