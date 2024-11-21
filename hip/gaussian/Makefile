include ../../common/hip.make.config

INCLUDE := $(HIP_DIR)/include

SRC = gaussian.cu
EXE = gaussian

${EXE}: $(SRC)
	$(HIPCC) $(KERNEL_DIM) $(SRC) -o $(EXE) -I$(INCLUDE) -L$(HIP_LIB_DIR) -I../util

clean:
	rm -f gaussian
