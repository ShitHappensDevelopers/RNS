 .global main
main:
init:
        add     r1, r0, #0          //; int write = 0;
        add     r2, r0, #0          //; int sort = 0;
        add     r3, r0, #16         //; int lenght = 4;
        add     r11, r0, #0         //; base addres 256 for visUAL only. set r11 to zero if not using visUAL
        
write:
        add     r5, r0, #8
		add     r6, r0, #5
		add     r7, r0, #9
		add     r8, r0, #2
		bl      writeToMemoryFunc
        
outerFor:
        subs    r4, r1, r3          //;if write < lenght then $t0 = 1 else $t0 = 0
        bpl     endsort             //;if $t0 == 0 go to end
        add     r2, r0, #0          //; sort = 0;
        
innerFor:
        add     r5, r0, #4          //; $t5 = 4
        subs    r6, r3, r5          //; $t1 = lenght - 4
        subs    r7, r2, r6          //; if sort < $t1 then $t0 = 1 else $t0 = 0
        bpl     writeIncr           //; if $t0 == 0 go to "write++"
        
        ldr     r8, [r2, #0]        //;$t3 = mem[sort]
        ldr     r9, [r2, #4]        //;$t4 = mem[sort + 4]
        
        subs    r10, r9, r8         //; if mem[sort + 4] < mem[sort] then $t1 = 1 else $t1 = 0
        bpl     sortIncr            //; if $t1 == 0 go to "sort++"
        
        str     r8, [r2, #4]        //; mem[sort + 4] = $t3
        str     r9, [r2, #0]        //; mem[sort] = $t4
        
sortIncr:
        add     r2, r2, #4          //; sort++
        b       innerFor
        
writeIncr:
        add     r1, r1,  #4         //; write++
        b       outerFor
		
writeToMemoryFunc:
        str     r5, [r11, #0]
		str     r6, [r11, #4]
		str     r7, [r11, #8]
		str     r8, [r11, #12]
		mov     pc, lr
        
endsort:
        ldr     r12, [r11, #0]
        ldr     r12, [r11, #4]
        ldr     r12, [r11, #8]
        ldr     r12, [r11, #12]
                        
        