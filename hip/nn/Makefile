include ../../common/hip.make.config

LOCAL_CC = gcc -g -O3 -Wall

all : nn hurricane_gen

clean :
	rm -rf *.o nn hurricane_gen

nn : nn_cuda.cu
	$(HIPCC) ${HIPCC_FLAGS} -o nn nn_cuda.cu

hurricane_gen : hurricane_gen.c
	$(LOCAL_CC) -o $@ $< -lm

#data :
#	mkdir data
#	./gen_dataset.sh
