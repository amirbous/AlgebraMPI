.SUFFIXES:
FC=gfortran
COMPILE.f08 = $(FC) $(FCFLAGS) $(TARGET_ARCH) -c

SOURCES=CSR_Cholesky.f90
main:
	$(FC) -c utils/updateconfig.f90 
	$(FC) -c driver.f90 
	$(FC) driver.o updateconfig.o -o driver.exe

#clean:
#	-rm -f *.o *.mod *.smod main

