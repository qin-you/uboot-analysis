SECTIONS
{
        . = 0xd0020010;
        .text : {
                mystart.o
                * (.text)
        }

        .data : {
                * (.data)
        }

        .bss_start = .;         /* available variable in code */
        .bss :{
                * (.bss)
        }
        .bss_end = .;
}
