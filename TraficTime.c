/* ----------------------------------------------------------------------- */
/* Plantilla generada por Piklab */
#include <pic16f84a.h>

/* ----------------------------------------------------------------------- */
/* Bits de configuración: adapte los parámetros a su necesidad */
typedef unsigned int word;
word __at 0x2007 CONFIG =  _XT_OSC & _WDT_OFF & _PWRTE_ON   & _CP_OFF;
//#define TIME 600
//#define TIME_P 200
void delay_ms(long ms)
{
long i;
while (ms--)
for (i=0; i < 300; i++)
;
}
void semaforo_uno(int time, int time_p){ // time para el tiempo de los colores verde y rojo, y time_p para el tiempo del color amarillo del semaforo
  
  
  RB7=1; //--------DOS--------VERDE --------SEMAFORO DOS
  RA3=1; //-----PEATONAL ---DOS ------ ROJO -------SEMAFORO PEATONAL ROJO 
  RB0=1; //ROJO
  RB3=1; //SEMAFORO PEATONAL VERDE
  
  delay_ms(time);  
 
  //delay_ms(TIME);  
  RB1=1; //AMARILLO
  RB7=0; //------DOS------VERDE--------- SEMAFORO DOS
  RB6=1; //-----DOS ------AMARILLO ------ SEMAFORO DOS
  
  
  RB4=1; //SEMAFORO PEATONAL ROJO
  RB3=0; //SEMAFORO PEATONAL VERDE 
  delay_ms(time_p); 
  RB6=0; //-----DOS ------AMARILLO--------- SEMAFORO DOS
  RA3=0; //---PEATONAL --DOS ------ROJO----------SEMAFORO PEATONAL ROJO
  
  RB5=1; //---- DOS-------ROJO-------- SEMAFORO  DOS
  RA2=1; //--PEATONAL ---DOS -----VERDE------SEMAFORO PEATONAL VERDE
  
  RB0=0; //ROJO
  RB1=0; //AMARILLO
  
  RB2=1; //VERDE
  delay_ms(time);
  RB2=0; //VERDE
  RB1=1; //AMARILLO
  RB6=1; //-----DOS ------AMARILLO------------ SEMAFORO DOS
  
  RA2=0; //---PEATONAL --DOS -----VERDE------SEMAFORO PEATONAL VERDE
  RA3=1; //---PEATONAL --DOS ------ROJO -------SEMAFORO PEATONAL ROJO
 
  delay_ms(time_p);
  RB1=0; //AMARILLO
  RB6=0; //-----DOS ------AMARILLO ---------SEMAFORO DOS
 
  RB4=0; //SEMAFORO PEATONAL ROJO
  
  RB5=0; //----DOS--------ROJO ------- SEMAFORO  DOS
}

void main() {
int time,time_p;

TRISB = 0b0000000;
TRISA = 0b00011;
PORTB = 0b0000000;
PORTA = 0b00000;
 //while(a--){
      switch(RA0){  // al iniciar el microcontolador, evalua la entrada RA0 y de acuerdo a la opcion, selecciona los tiempos a usar en el semaforo
	case 1:
	  time=6000;
	  time_p=1000;
	  break;
	case 0:
	  time=1000;
	  time_p=400;
	  break;
      }      
   // }
while(1)
  {     
  semaforo_uno(time,time_p);
  }
  
}
