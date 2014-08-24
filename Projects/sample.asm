# Sample Application

Main:   # Main Function
        and  $s1, $s1, $zero # clear contents
        addi $s1, $zero, Count # handle appropriately
        lw   $s0, 0($s1) # data at Counter address
Loop:   bz   $s0, Done # test
        or   $a0, $s1, $zero # move
        addi $a0, $a0, 2 # next instruction
        addi $ra, $zero, Loop
        addi $ra, $ra, 12 # return address
        jr   $a0 # jump to Dummy
        addi $s0, $s0, -1 # decrement count
        sw   $s0, 0($s1) # store value
        j    Loop
Done: 
        # end here
        j    Done
        addi $s0, $zero, 43
        addi $s1, $zero, 34
Count:  .data 17 # data value
Dummy:  # does nothing
        jr   $ra # return
        j    Foobar # undefined
        .data -7

