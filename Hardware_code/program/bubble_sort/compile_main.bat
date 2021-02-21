"C:\Program Files (x86)\GNU Tools Arm Embedded\7 2018-q2-update\bin\arm-none-eabi-as.exe" -mbig-endian -o out.o main.s
"C:\Program Files (x86)\GNU Tools Arm Embedded\7 2018-q2-update\bin\arm-none-eabi-objcopy.exe" -O verilog out.o memfile.dat
del /f out.o

