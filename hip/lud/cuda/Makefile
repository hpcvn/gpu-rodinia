include ../../../common/hip.make.config

DEFS += \
		-DGPU_TIMER \
		$(SPACE)

HIPCC_FLAGS += -I../common \
			 -O3 \
			 $(SPACE)

# Add source files here
EXECUTABLE  := lud_hip
# Cuda source files (compiled with cudacc)
CUFILES     := lud_kernel.cu
# C/C++ source files (compiled with gcc / c++)
CCFILES     := lud.c lud_cuda.c ../common/common.c

OBJS = ../common/common.o lud.o lud_kernel.o

.PHONY: all clean 
all : $(EXECUTABLE)

.c.o : 
	$(HIPCC) $(KERNEL_DIM) $(HIPCC_FLAGS) $(DEFS) -o $@ -c $<

%.o:	%.cu 
	$(HIPCC) $(KERNEL_DIM) $(HIPCC_FLAGS) $(DEFS) -o $@ -c $<

$(EXECUTABLE) : $(OBJS)
	$(HIPCC) $(HIPCC_FLAGS) -o $@  $?

clean:
	rm -f $(EXECUTABLE) $(OBJS) *.linkinfo
