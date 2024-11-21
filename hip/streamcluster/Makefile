include ../../common/hip.make.config

HIPCC_FLAGS += -I$(HIP_DIR)/include

TARGET_G = sc_gpu


# make dbg=1 tells nvcc to add debugging symbols to the binary
ifeq ($(dbg),1)
	HIPCC_FLAGS += -g -O0
else
	HIPCC_FLAGS += -O3
endif

# make emu=1 compiles the HIP kernels for emulation
ifeq ($(emu),1)
	HIPCC_FLAGS += -deviceemu
endif


$(TARGET_G): streamcluster_cuda_cpu.cpp streamcluster_cuda.cu streamcluster_header.cu
	$(HIPCC) $(HIPCC_FLAGS) streamcluster_cuda_cpu.cpp streamcluster_cuda.cu streamcluster_header.cu -o $(TARGET_G)


clean:
	rm -f *.o *~ output.txt $(TARGET_G) *.linkinfo
