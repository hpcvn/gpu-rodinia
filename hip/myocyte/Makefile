include ../../common/hip.make.config

# link objects(binaries) together
myocyte:		main.o
	${HIPCC} ${HIPCC_FLAGS}	main.o \
				-I${HIP_DIR}/include \
				-L${HIP_DIR}/lib \
				-lm \
                                -o myocyte

# compile main function file into object (binary)
main.o:	define.c \
				main.cu \
				work.cu \
				solver.cu \
				embedded_fehlberg_7_8.cu \
				master.cu \
				kernel.cu \
				kernel_ecc.cu \
				kernel_cam.cu \
				kernel_fin.cu \
				work_2.cu \
				solver_2.cu \
				embedded_fehlberg_7_8_2.cu \
				kernel_2.cu \
				kernel_ecc_2.cu \
				kernel_cam_2.cu \
				kernel_fin_2.cu \
				file.c \
				timer.c
	${HIPCC} ${HIPCC_FLAGS}	main.cu -c

# delete all object files
clean:
	rm -f myocyte *.o *.out output.txt
