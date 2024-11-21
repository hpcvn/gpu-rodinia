include ../../common/hip.make.config
CC = g++

GCC_OPTS=-O3 -Wall -Wextra -m64

OBJ = main_test_cu.o stats_logger.o vlc_kernel_sm64huff.o scan.o pack_kernels.o cpuencode.o
SRC = main_test_cu.cu
EXE = pavle

ifdef TESTING 
override TESTING = -DTESTING
endif

ifdef CACHECWLUT
override TESTING = -DCACHECWLUT
endif

pavle: $(OBJ) 
	${HIPCC} ${HIPCC_FLAGS} $(TESTING) $(CACHECWLUT) $(OBJ) -o $(EXE) 

vlc_kernel_sm64huff.o: vlc_kernel_sm64huff.cu 
	${HIPCC} ${HIPCC_FLAGS} $(TESTING) -c vlc_kernel_sm64huff.cu

scan.o: scan.cu 
	${HIPCC} ${HIPCC_FLAGS} -c scan.cu

#cpuencode.o: cpuencode.cu
#	${HIPCC} ${HIPCC_FLAGS} -c cpuencode.cu

pack_kernels.o: pack_kernels.cu 
	${HIPCC} ${HIPCC_FLAGS} -c pack_kernels.cu

main_test_cu.o: main_test_cu.cu cutil.h
	${HIPCC} ${HIPCC_FLAGS} $(TESTING) -c main_test_cu.cu -I $(HIP_INCLUDE_DIR)

.o:.cpp
	$(CC) ++ $(GCC_OPTS) -c $@ -o $<

clean:
	rm -f *.o $(EXE) 
