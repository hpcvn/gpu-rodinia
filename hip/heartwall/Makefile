include ../../common/hip.make.config

ifdef OUTPUT
override OUTPUT = -DOUTPUT
endif

# link objects(binaries) together
heartwall: main.o ./AVI/avilib.o ./AVI/avimod.o
	${HIPCC} ${HIPCC_FLAGS} main.o ./AVI/avilib.o ./AVI/avimod.o -I${HIP_INCLUDE_DIR} -lm -o heartwall

# compile main function file into object (binary)
main.o: main.cu kernel.cu define.c
	${HIPCC} ${HIPCC_FLAGS} $(OUTPUT) $(KERNEL_DIM) main.cu -I./AVI -c

./AVI/avilib.o ./AVI/avimod.o:
	cd AVI; make;

# delete all object files
clean:
	rm -f *.o AVI/*.o heartwall *.linkinfo
