li $v0, 5
syscall 
or $t2, $0, $v0 # Register $t2 gets input 1
li $v0, 5
syscall 
or $t3, $0, $v0 # Register $t3 gets input 2 
mult $t2, $t3 # Register $t4 gets $t2 + $t3
mflo $t4
mfhi $t5
li $v0, 1
or $a0, $0, $t4  
syscall # output $t4
li $v0, 1
or $a0, $0, $t5  
syscall # output $t5
or $v0, $0, 10 # Sets $v0 to "10" so when syscall is executed, program will exit.
syscall # Exit.
