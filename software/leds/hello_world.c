#include "sys/alt_stdio.h"
#include "sys/unistd.h"
#include "system.h"
#include "altera_avalon_pio_regs.h"
int main(){
    printf("Hello from Nios II!\n");
    int sw = 0;
    int count = 0;
    while (1){
	    sw = IORD_ALTERA_AVALON_PIO_DATA(SW_BASE);
	    IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE, sw);
	    IOWR_ALTERA_AVALON_PIO_DATA(LEDG_BASE, count);
	    usleep(100000);
	    count++;
     };
    return 0;
}
