include ../../common/hip.make.config

INCLUDE := $(HIP_DIR)/include

all: particlefilter_naive particlefilter_float

particlefilter_naive: particlefilter_naive.o
	${HIPCC} ${HIPCC_FLAGS} -L$(HIP_LIB_DIR) -lm  $< -o $@

particlefilter_naive.o: ex_particle_CUDA_naive_seq.cu
	${HIPCC} ${HIPCC_FLAGS} -I$(INCLUDE)  $< -o $@ -c

particlefilter_float: particlefilter_float.o
	${HIPCC} ${HIPCC_FLAGS} -L$(HIP_LIB_DIR) -lm  $< -o $@

particlefilter_float.o: ex_particle_CUDA_float_seq.cu
	${HIPCC} ${HIPCC_FLAGS} -I$(INCLUDE)  $< -o $@ -c

clean:
	rm -f particlefilter_naive particlefilter_float *.o
