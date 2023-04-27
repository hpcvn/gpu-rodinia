include ../../../common/hip.make.config

INCLUDE := $(HIP_DIR)/include

# link objects(binaries) together
srad_v1:		main.o
	${HIPCC} ${HIPCC_FLAGS}	main.o \
				-I$(INCLUDE) \
				-L$(HIP_LIB_DIR)  \
				-lm -o $@

# compile main function file into object (binary)
main.o: 	main.cu \
				define.c \
				graphics.c \
				extract_kernel.cu \
				prepare_kernel.cu \
				reduce_kernel.cu \
				srad_kernel.cu \
				srad2_kernel.cu \
				compress_kernel.cu
	${HIPCC} ${HIPCC_FLAGS}	main.cu -c

# delete all object files
clean:
	rm -f *.o srad_v1
