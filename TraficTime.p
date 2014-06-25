pcode dump


	New pBlock

internal pblock, dbName =M
;; Starting pCode block
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:2283:genFunction *{*
;; ***	genFunction  2285 curr label offset=15previous max_key=0 
_main	;Function start
; 2 exit points
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;; ***	aopForSym 350
;;	361 sym->rname = _TRISB, size = 1
;; 	line = 6342 result AOP_DIR=_TRISB, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  6434
; >>> gen.c:6443:genAssign
;;	1013
;;	1029  _TRISB   offset=0
	.line	67; "TraficTime.c"	TRISB = 0b0000000;
	CLRF	_TRISB
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;; ***	aopForSym 350
;;	361 sym->rname = _TRISA, size = 1
;; 	line = 6342 result AOP_DIR=_TRISA, size=1, left -=-, size=0, right AOP_LIT=0x03, size=1
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	.line	68; "TraficTime.c"	TRISA = 0b00011;
	MOVLW	0x03
; >>> gen.c:6441:genAssign
;;	1013
;;	1029  _TRISA   offset=0
	MOVWF	_TRISA
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;; ***	aopForSym 350
;;	361 sym->rname = _PORTB, size = 1
;; 	line = 6342 result AOP_DIR=_PORTB, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  6434
; >>> gen.c:6443:genAssign
;;	1013
;;	1029  _PORTB   offset=0
	.line	69; "TraficTime.c"	PORTB = 0b0000000;
	CLRF	_PORTB
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;; ***	aopForSym 350
;;	361 sym->rname = _PORTA, size = 1
;; 	line = 6342 result AOP_DIR=_PORTA, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  6434
; >>> gen.c:6443:genAssign
;;	1013
;;	1029  _PORTA   offset=0
	.line	70; "TraficTime.c"	PORTA = 0b00000;
	CLRF	_PORTA
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:5608:genPointerGet *{*
;; ***	genPointerGet  5609
;; gen.c:5397:genNearPointerGet *{*
;; ***	genNearPointerGet  5398
;;	641
;;	aopForRemat 425
;;	446: rname _PORTA_bits, val 0, const = 0
;; ***	genNearPointerGet  5414
;;	721 register type nRegs=1
;; gen.c:3504:ifxForOp *{*
;; ***	ifxForOp  3506
;; NULL :(	3526
;; gen.c:5240:genUnpackBits *{*
;; ***	genUnpackBits  5241
; >>> gen.c:5264:genUnpackBits
;;	1109 rIdx = r0x105A 
	.line	72; "TraficTime.c"	switch(RA0){  // al iniciar el microcontolador, evalua la entrada RA0 y de acuerdo a la opcion, selecciona los tiempos a usar en el semaforo
	CLRF	r0x1012
; >>> gen.c:5269:genUnpackBits
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
	BTFSC	_PORTA_bits,0
; >>> gen.c:5289:genUnpackBits
;;	1109 rIdx = r0x105A 
	INCF	r0x1012,F
;; ***	pic14_getDataSize  1426
;; ***	addSign  797
;; genarith.c:798:addSign *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;;	721 register type nRegs=1
;;	721 register type nRegs=1
;; 	line = 6342 result AOP_REG=r0x105B, size=1, left -=-, size=0, right AOP_REG=r0x105A, size=1
;; ***	genAssign  6434
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x105A 
	MOVF	r0x1012,W
	MOVWF	r0x1013
	BTFSC	STATUS,2
	GOTO	_00121_DS_
	MOVF	r0x1012,W
	XORLW	0x01
; >>> gen.c:3454:genCmpEq
	BTFSS	STATUS,2
; >>> gen.c:3456:genCmpEq
;; ***	popGetLabel  key=5, label offset 19
	GOTO	_00124_DS_
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;;	721 register type nRegs=2
;; 	line = 6342 result AOP_REG=r0x105A, size=2, left -=-, size=0, right AOP_LIT=0x70, size=2
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	.line	74; "TraficTime.c"	time=6000;
	MOVLW	0x70
; >>> gen.c:6441:genAssign
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1012
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	MOVLW	0x17
; >>> gen.c:6441:genAssign
;;	1109 rIdx = r0x105B 
	MOVWF	r0x1013
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;;	721 register type nRegs=2
;; 	line = 6342 result AOP_REG=r0x105C, size=2, left -=-, size=0, right AOP_LIT=0xe8, size=2
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	.line	75; "TraficTime.c"	time_p=1000;
	MOVLW	0xe8
; >>> gen.c:6441:genAssign
;;	1109 rIdx = r0x105C 
	MOVWF	r0x1014
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	MOVLW	0x03
; >>> gen.c:6441:genAssign
;;	1109 rIdx = r0x105D 
	MOVWF	r0x1015
;; gen.c:2261:resultRemat *{*
;; gen.c:2614:genGoto *{*
; >>> gen.c:2616:genGoto
;; ***	popGetLabel  key=5, label offset 19
	.line	76; "TraficTime.c"	break;
	GOTO	_00124_DS_
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;;	721 register type nRegs=2
;; 	line = 6342 result AOP_REG=r0x105A, size=2, left -=-, size=0, right AOP_LIT=0xe8, size=2
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
_00121_DS_
	.line	78; "TraficTime.c"	time=1000;
	MOVLW	0xe8
; >>> gen.c:6441:genAssign
;;	1109 rIdx = r0x105A 
	MOVWF	r0x1012
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	MOVLW	0x03
; >>> gen.c:6441:genAssign
;;	1109 rIdx = r0x105B 
	MOVWF	r0x1013
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;;	721 register type nRegs=2
;; 	line = 6342 result AOP_REG=r0x105C, size=2, left -=-, size=0, right AOP_LIT=0x90, size=2
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	.line	79; "TraficTime.c"	time_p=400;
	MOVLW	0x90
; >>> gen.c:6441:genAssign
;;	1109 rIdx = r0x105C 
	MOVWF	r0x1014
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	MOVLW	0x01
; >>> gen.c:6441:genAssign
;;	1109 rIdx = r0x105D 
	MOVWF	r0x1015
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:2030:genCall *{*
;; ***	genCall  2032
;; gen.c:1765:saveRegisters *{*
;; ***	saveRegisters  1767
;;	721 register type nRegs=2
;;	721 register type nRegs=2
;;	721 register type nRegs=2
;; 	2079 left AOP_REG
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x105C 
_00124_DS_
	.line	85; "TraficTime.c"	semaforo_uno(time,time_p);
	MOVF	r0x1014,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x19
	MOVWF	STK02
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=1
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x105D 
	MOVF	r0x1015,W
;;	721 register type nRegs=2
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x1a
	MOVWF	STK01
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x105A 
	MOVF	r0x1012,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x1b
	MOVWF	STK00
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=1
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x105B 
	MOVF	r0x1013,W
; >>> gen.c:2118:genCall
	CALL	_semaforo_uno
;; gen.c:1809:unsaveRegisters *{*
;; ***	unsaveRegisters  1811
;; gen.c:2261:resultRemat *{*
;; gen.c:2614:genGoto *{*
; >>> gen.c:2616:genGoto
;; ***	popGetLabel  key=5, label offset 19
	GOTO	_00124_DS_
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:2435:genEndFunction *{*
;; ***	genEndFunction  2437
	RETURN	
; exit point of _main

	New pBlock

code, dbName =C
;; Starting pCode block
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:2283:genFunction *{*
;; ***	genFunction  2285 curr label offset=4previous max_key=7 
_semaforo_uno	;Function start
; 2 exit points
;; gen.c:2261:resultRemat *{*
;; gen.c:6739:genReceive *{*
;; ***	genReceive  6740
;;	721 register type nRegs=2
;; gen.c:1866:assignResultValue *{*
;; ***	assignResultValue  1868
;; 	line = 1870 result -=-, size=0, left AOP_REG=r0x1050, size=2, right -=-, size=0
; >>> gen.c:1367:movwf
;;	1109 rIdx = r0x1051 
	.line	18; "TraficTime.c"	void semaforo_uno(int time, int time_p){ // time para el tiempo de los colores verde y rojo, y time_p para el tiempo del color amarillo del semaforo
	MOVWF	r0x1008
; >>> gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x1b
	MOVF	STK00,W
; >>> gen.c:1367:movwf
;;	1109 rIdx = r0x1050 
	MOVWF	r0x1009
;; gen.c:2261:resultRemat *{*
;; gen.c:6739:genReceive *{*
;; ***	genReceive  6740
;;	721 register type nRegs=2
;; gen.c:1866:assignResultValue *{*
;; ***	assignResultValue  1868
;; 	line = 1870 result -=-, size=0, left AOP_REG=r0x1052, size=2, right -=-, size=0
; >>> gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x1a
	MOVF	STK01,W
; >>> gen.c:1367:movwf
;;	1109 rIdx = r0x1053 
	MOVWF	r0x100A
; >>> gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x19
	MOVF	STK02,W
; >>> gen.c:1367:movwf
;;	1109 rIdx = r0x1052 
	MOVWF	r0x100B
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	21; "TraficTime.c"	RB7=1; //--------DOS--------VERDE --------SEMAFORO DOS
	BSF	_PORTB_bits,7
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTA_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
;; 	line = 5965 result AOP_PCODE=_PORTA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
; >>> gen.c:5720:genPackBits
	.line	22; "TraficTime.c"	RA3=1; //-----PEATONAL ---DOS ------ ROJO -------SEMAFORO PEATONAL ROJO 
	BSF	_PORTA_bits,3
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	23; "TraficTime.c"	RB0=1; //ROJO
	BSF	_PORTB_bits,0
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	24; "TraficTime.c"	RB3=1; //SEMAFORO PEATONAL VERDE
	BSF	_PORTB_bits,3
;; gen.c:2261:resultRemat *{*
;; gen.c:6521:genCast *{*
;; ***	genCast  6522
;;	721 register type nRegs=2
;;	721 register type nRegs=4
;; 	line = 6530 result AOP_REG=r0x1054, size=4, left -=-, size=0, right AOP_REG=r0x1050, size=2
; >>> gen.c:6676:genCast
;;	1109 rIdx = r0x1050 
	.line	26; "TraficTime.c"	delay_ms(time);  
	MOVF	r0x1009,W
; >>> gen.c:6677:genCast
;;	1109 rIdx = r0x1054 
	MOVWF	r0x100C
; >>> gen.c:6676:genCast
;;	1109 rIdx = r0x1051 
	MOVF	r0x1008,W
; >>> gen.c:6677:genCast
;;	1109 rIdx = r0x1055 
	MOVWF	r0x100D
;; ***	pic14_getDataSize  1426
;; ***	addSign  797
;; genarith.c:798:addSign *{*
; >>> genarith.c:809:addSign
	MOVLW	0x00
; >>> genarith.c:810:addSign
	BTFSC	r0x100D,7
; >>> genarith.c:811:addSign
	MOVLW	0xff
; >>> genarith.c:813:addSign
;;	1109 rIdx = r0x1057 
	MOVWF	r0x100E
; >>> genarith.c:813:addSign
;;	1109 rIdx = r0x1056 
	MOVWF	r0x100F
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:2030:genCall *{*
;; ***	genCall  2032
;; gen.c:1765:saveRegisters *{*
;; ***	saveRegisters  1767
;;	721 register type nRegs=4
;;	721 register type nRegs=4
;; 	2079 left AOP_REG
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1054 
	MOVF	r0x100C,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x19
	MOVWF	STK02
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=1
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1055 
	MOVF	r0x100D,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x1a
	MOVWF	STK01
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=2
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1056 
	MOVF	r0x100F,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x1b
	MOVWF	STK00
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=3
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1057 
	MOVF	r0x100E,W
; >>> gen.c:2118:genCall
	CALL	_delay_ms
;; gen.c:1809:unsaveRegisters *{*
;; ***	unsaveRegisters  1811
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	29; "TraficTime.c"	RB1=1; //AMARILLO
	BSF	_PORTB_bits,1
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	30; "TraficTime.c"	RB7=0; //------DOS------VERDE--------- SEMAFORO DOS
	BCF	_PORTB_bits,7
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	31; "TraficTime.c"	RB6=1; //-----DOS ------AMARILLO ------ SEMAFORO DOS
	BSF	_PORTB_bits,6
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	34; "TraficTime.c"	RB4=1; //SEMAFORO PEATONAL ROJO
	BSF	_PORTB_bits,4
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	35; "TraficTime.c"	RB3=0; //SEMAFORO PEATONAL VERDE 
	BCF	_PORTB_bits,3
;; gen.c:2261:resultRemat *{*
;; gen.c:6521:genCast *{*
;; ***	genCast  6522
;;	721 register type nRegs=2
;;	721 register type nRegs=4
;; 	line = 6530 result AOP_REG=r0x1050, size=4, left -=-, size=0, right AOP_REG=r0x1052, size=2
; >>> gen.c:6676:genCast
;;	1109 rIdx = r0x1052 
	.line	36; "TraficTime.c"	delay_ms(time_p); 
	MOVF	r0x100B,W
; >>> gen.c:6677:genCast
;;	1109 rIdx = r0x1050 
	MOVWF	r0x1009
; >>> gen.c:6676:genCast
;;	1109 rIdx = r0x1053 
	MOVF	r0x100A,W
; >>> gen.c:6677:genCast
;;	1109 rIdx = r0x1051 
	MOVWF	r0x1008
;; ***	pic14_getDataSize  1426
;; ***	addSign  797
;; genarith.c:798:addSign *{*
; >>> genarith.c:809:addSign
	MOVLW	0x00
; >>> genarith.c:810:addSign
	BTFSC	r0x1008,7
; >>> genarith.c:811:addSign
	MOVLW	0xff
; >>> genarith.c:813:addSign
;;	1109 rIdx = r0x1059 
	MOVWF	r0x1010
; >>> genarith.c:813:addSign
;;	1109 rIdx = r0x1058 
	MOVWF	r0x1011
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:2030:genCall *{*
;; ***	genCall  2032
;; gen.c:1765:saveRegisters *{*
;; ***	saveRegisters  1767
;;	721 register type nRegs=4
;;	721 register type nRegs=4
;; 	2079 left AOP_REG
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1050 
	MOVF	r0x1009,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x19
	MOVWF	STK02
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=1
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1051 
	MOVF	r0x1008,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x1a
	MOVWF	STK01
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=2
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1058 
	MOVF	r0x1011,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x1b
	MOVWF	STK00
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=3
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1059 
	MOVF	r0x1010,W
; >>> gen.c:2118:genCall
	CALL	_delay_ms
;; gen.c:1809:unsaveRegisters *{*
;; ***	unsaveRegisters  1811
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	37; "TraficTime.c"	RB6=0; //-----DOS ------AMARILLO--------- SEMAFORO DOS
	BCF	_PORTB_bits,6
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTA_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
;; 	line = 5965 result AOP_PCODE=_PORTA_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
; >>> gen.c:5720:genPackBits
	.line	38; "TraficTime.c"	RA3=0; //---PEATONAL --DOS ------ROJO----------SEMAFORO PEATONAL ROJO
	BCF	_PORTA_bits,3
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	40; "TraficTime.c"	RB5=1; //---- DOS-------ROJO-------- SEMAFORO  DOS
	BSF	_PORTB_bits,5
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTA_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
;; 	line = 5965 result AOP_PCODE=_PORTA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
; >>> gen.c:5720:genPackBits
	.line	41; "TraficTime.c"	RA2=1; //--PEATONAL ---DOS -----VERDE------SEMAFORO PEATONAL VERDE
	BSF	_PORTA_bits,2
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	43; "TraficTime.c"	RB0=0; //ROJO
	BCF	_PORTB_bits,0
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	44; "TraficTime.c"	RB1=0; //AMARILLO
	BCF	_PORTB_bits,1
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	46; "TraficTime.c"	RB2=1; //VERDE
	BSF	_PORTB_bits,2
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:2030:genCall *{*
;; ***	genCall  2032
;; gen.c:1765:saveRegisters *{*
;; ***	saveRegisters  1767
;;	721 register type nRegs=4
;;	721 register type nRegs=4
;; 	2079 left AOP_REG
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1054 
	.line	47; "TraficTime.c"	delay_ms(time);
	MOVF	r0x100C,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x19
	MOVWF	STK02
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=1
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1055 
	MOVF	r0x100D,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x1a
	MOVWF	STK01
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=2
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1056 
	MOVF	r0x100F,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x1b
	MOVWF	STK00
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=3
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1057 
	MOVF	r0x100E,W
; >>> gen.c:2118:genCall
	CALL	_delay_ms
;; gen.c:1809:unsaveRegisters *{*
;; ***	unsaveRegisters  1811
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	48; "TraficTime.c"	RB2=0; //VERDE
	BCF	_PORTB_bits,2
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	49; "TraficTime.c"	RB1=1; //AMARILLO
	BSF	_PORTB_bits,1
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	50; "TraficTime.c"	RB6=1; //-----DOS ------AMARILLO------------ SEMAFORO DOS
	BSF	_PORTB_bits,6
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTA_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
;; 	line = 5965 result AOP_PCODE=_PORTA_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
; >>> gen.c:5720:genPackBits
	.line	52; "TraficTime.c"	RA2=0; //---PEATONAL --DOS -----VERDE------SEMAFORO PEATONAL VERDE
	BCF	_PORTA_bits,2
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTA_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
;; 	line = 5965 result AOP_PCODE=_PORTA_bits, size=2, left -=-, size=0, right AOP_LIT=0x01, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTA_bits
; >>> gen.c:5720:genPackBits
	.line	53; "TraficTime.c"	RA3=1; //---PEATONAL --DOS ------ROJO -------SEMAFORO PEATONAL ROJO
	BSF	_PORTA_bits,3
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:2030:genCall *{*
;; ***	genCall  2032
;; gen.c:1765:saveRegisters *{*
;; ***	saveRegisters  1767
;;	721 register type nRegs=4
;;	721 register type nRegs=4
;; 	2079 left AOP_REG
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1050 
	.line	55; "TraficTime.c"	delay_ms(time_p);
	MOVF	r0x1009,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x19
	MOVWF	STK02
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=1
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1051 
	MOVF	r0x1008,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x1a
	MOVWF	STK01
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=2
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1058 
	MOVF	r0x1011,W
;; 	2079 left AOP_REG
; >>> gen.c:2087:genCall
;; ***	popRegFromIdx,1043  , rIdx=0x1b
	MOVWF	STK00
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=3
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1059 
	MOVF	r0x1010,W
; >>> gen.c:2118:genCall
	CALL	_delay_ms
;; gen.c:1809:unsaveRegisters *{*
;; ***	unsaveRegisters  1811
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	56; "TraficTime.c"	RB1=0; //AMARILLO
	BCF	_PORTB_bits,1
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	57; "TraficTime.c"	RB6=0; //-----DOS ------AMARILLO ---------SEMAFORO DOS
	BCF	_PORTB_bits,6
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	59; "TraficTime.c"	RB4=0; //SEMAFORO PEATONAL ROJO
	BCF	_PORTB_bits,4
;; gen.c:2261:resultRemat *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6117:genPointerSet *{*
;; ***	genPointerSet  6118
;; gen.c:5945:genNearPointerSet *{*
;; ***	genNearPointerSet  5946
;;	641
;;	aopForRemat 425
;;	446: rname _PORTB_bits, val 0, const = 0
;; ***	genNearPointerSet  5963
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
;; 	line = 5965 result AOP_PCODE=_PORTB_bits, size=2, left -=-, size=0, right AOP_LIT=0x00, size=1
;; gen.c:5694:genPackBits *{*
;; ***	genPackBits  5695
;;	858: aopGet AOP_PCODE type PO_IMMEDIATE
;;	_PORTB_bits
; >>> gen.c:5720:genPackBits
	.line	61; "TraficTime.c"	RB5=0; //----DOS--------ROJO ------- SEMAFORO  DOS
	BCF	_PORTB_bits,5
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:2435:genEndFunction *{*
;; ***	genEndFunction  2437
	RETURN	
; exit point of _semaforo_uno
;; gen.c:6803:genpic14Code *{*

	New pBlock

code, dbName =C
;; Starting pCode block
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:2283:genFunction *{*
;; ***	genFunction  2285 curr label offset=0previous max_key=0 
_delay_ms	;Function start
; 2 exit points
;; gen.c:2261:resultRemat *{*
;; gen.c:6739:genReceive *{*
;; ***	genReceive  6740
;;	721 register type nRegs=4
;; gen.c:1866:assignResultValue *{*
;; ***	assignResultValue  1868
;; 	line = 1870 result -=-, size=0, left AOP_REG=r0x1048, size=4, right -=-, size=0
; >>> gen.c:1367:movwf
;;	1109 rIdx = r0x104B 
	.line	11; "TraficTime.c"	void delay_ms(long ms)
	MOVWF	r0x1000
; >>> gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x1b
	MOVF	STK00,W
; >>> gen.c:1367:movwf
;;	1109 rIdx = r0x104A 
	MOVWF	r0x1001
; >>> gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x1a
	MOVF	STK01,W
; >>> gen.c:1367:movwf
;;	1109 rIdx = r0x1049 
	MOVWF	r0x1002
; >>> gen.c:1393:get_returnvalue
;; ***	popRegFromIdx,1043  , rIdx=0x19
	MOVF	STK02,W
; >>> gen.c:1367:movwf
;;	1109 rIdx = r0x1048 
	MOVWF	r0x1003
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;;	721 register type nRegs=4
;;	721 register type nRegs=4
;; 	line = 6342 result AOP_REG=r0x1048, size=4, left -=-, size=0, right AOP_REG=r0x1048, size=4
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;;	721 register type nRegs=4
;;	721 register type nRegs=4
;; 	line = 6342 result AOP_REG=r0x104C, size=4, left -=-, size=0, right AOP_REG=r0x1048, size=4
;; ***	genAssign  6434
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=0
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1048 
_00105_DS_
	.line	14; "TraficTime.c"	while (ms--)
	MOVF	r0x1003,W
; >>> gen.c:6453:genAssign
;;	1109 rIdx = r0x104C 
	MOVWF	r0x1004
;; ***	genAssign  6434
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=1
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x1049 
	MOVF	r0x1002,W
; >>> gen.c:6453:genAssign
;;	1109 rIdx = r0x104D 
	MOVWF	r0x1005
;; ***	genAssign  6434
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=2
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x104A 
	MOVF	r0x1001,W
; >>> gen.c:6453:genAssign
;;	1109 rIdx = r0x104E 
	MOVWF	r0x1006
;; ***	genAssign  6434
;; gen.c:1324:mov2w_op *{*
;; ***	mov2w  1356  offset=3
; >>> gen.c:1361:mov2w
;;	1109 rIdx = r0x104B 
	MOVF	r0x1000,W
; >>> gen.c:6453:genAssign
;;	1109 rIdx = r0x104F 
	MOVWF	r0x1007
;; gen.c:2261:resultRemat *{*
;; gen.c:3504:ifxForOp *{*
;; ***	ifxForOp  3506
;; NULL :(	3526
;; ic-next	 is an IFX
;; gen.c:6695:genDjnz *{*
;; ***	genDjnz  6696
;; genarith.c:832:genMinus *{*
;; ***	genMinus  833
;;	721 register type nRegs=4
;;	606
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; ***	pic14_getDataSize  1426
;; ***	pic14_getDataSize  1426
;; genarith.c:270:genAddLit *{*
;; ***	genAddLit  271
;; ***	pic14_getDataSize  1426
;; ***	pic14_getDataSize  1426
;;  add lit to long	genAddLit  391
; >>> genarith.c:446:genAddLit
	MOVLW	0xff
; >>> genarith.c:447:genAddLit
;;	1109 rIdx = r0x1048 
	ADDWF	r0x1003,F
; >>> genarith.c:417:genAddLit
	MOVLW	0xff
; >>> genarith.c:421:genAddLit
	BTFSS	STATUS,0
; >>> genarith.c:422:genAddLit
;;	1109 rIdx = r0x1049 
	ADDWF	r0x1002,F
; >>> genarith.c:417:genAddLit
	MOVLW	0xff
; >>> genarith.c:421:genAddLit
	BTFSS	STATUS,0
; >>> genarith.c:422:genAddLit
;;	1109 rIdx = r0x104A 
	ADDWF	r0x1001,F
; >>> genarith.c:417:genAddLit
	MOVLW	0xff
; >>> genarith.c:421:genAddLit
	BTFSS	STATUS,0
; >>> genarith.c:422:genAddLit
;;	1109 rIdx = r0x104B 
	ADDWF	r0x1000,F
;; ***	pic14_getDataSize  1426
;; ***	pic14_getDataSize  1426
;; ***	pic14_getDataSize  1426
;; ***	addSign  797
;; genarith.c:798:addSign *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6187:genIfx *{*
;; ***	genIfx  6188
;;	721 register type nRegs=4
;; ***	pic14_toBoolean  1500
; >>> gen.c:1509:pic14_toBoolean
;;	1109 rIdx = r0x104C 
	MOVF	r0x1004,W
; >>> gen.c:1514:pic14_toBoolean
;;	1109 rIdx = r0x104D 
	IORWF	r0x1005,W
; >>> gen.c:1514:pic14_toBoolean
;;	1109 rIdx = r0x104E 
	IORWF	r0x1006,W
; >>> gen.c:1514:pic14_toBoolean
;;	1109 rIdx = r0x104F 
	IORWF	r0x1007,W
; >>> gen.c:6236:genIfx
	BTFSC	STATUS,2
; >>> gen.c:6237:genIfx
;; ***	popGetLabel  key=7, label offset 4
	GOTO	_00111_DS_
;; gen.c:2261:resultRemat *{*
;; gen.c:6332:genAssign *{*
;; ***	genAssign  6333
;;	721 register type nRegs=4
;; 	line = 6342 result AOP_REG=r0x104C, size=4, left -=-, size=0, right AOP_LIT=0x2c, size=4
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	.line	15; "TraficTime.c"	for (i=0; i < 300; i++)
	MOVLW	0x2c
; >>> gen.c:6441:genAssign
;;	1109 rIdx = r0x104C 
	MOVWF	r0x1004
;; ***	genAssign  6434
; >>> gen.c:6439:genAssign
	MOVLW	0x01
; >>> gen.c:6441:genAssign
;;	1109 rIdx = r0x104D 
	MOVWF	r0x1005
;; ***	genAssign  6434
; >>> gen.c:6443:genAssign
;;	1109 rIdx = r0x104E 
	CLRF	r0x1006
;; ***	genAssign  6434
; >>> gen.c:6443:genAssign
;;	1109 rIdx = r0x104F 
	CLRF	r0x1007
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:3504:ifxForOp *{*
;; ***	ifxForOp  3506
;; gen.c:6695:genDjnz *{*
;; ***	genDjnz  6696
;; genarith.c:832:genMinus *{*
;; ***	genMinus  833
;;	721 register type nRegs=4
;;	606
;; 	result AOP_REG, left AOP_REG, right AOP_LIT
;; ***	pic14_getDataSize  1426
;; ***	pic14_getDataSize  1426
;; genarith.c:270:genAddLit *{*
;; ***	genAddLit  271
;; ***	pic14_getDataSize  1426
;; ***	pic14_getDataSize  1426
;;  add lit to long	genAddLit  391
; >>> genarith.c:446:genAddLit
_00110_DS_
	MOVLW	0xff
; >>> genarith.c:447:genAddLit
;;	1109 rIdx = r0x104C 
	ADDWF	r0x1004,F
; >>> genarith.c:417:genAddLit
	MOVLW	0xff
; >>> genarith.c:421:genAddLit
	BTFSS	STATUS,0
; >>> genarith.c:422:genAddLit
;;	1109 rIdx = r0x104D 
	ADDWF	r0x1005,F
; >>> genarith.c:417:genAddLit
	MOVLW	0xff
; >>> genarith.c:421:genAddLit
	BTFSS	STATUS,0
; >>> genarith.c:422:genAddLit
;;	1109 rIdx = r0x104E 
	ADDWF	r0x1006,F
; >>> genarith.c:417:genAddLit
	MOVLW	0xff
; >>> genarith.c:421:genAddLit
	BTFSS	STATUS,0
; >>> genarith.c:422:genAddLit
;;	1109 rIdx = r0x104F 
	ADDWF	r0x1007,F
;; ***	pic14_getDataSize  1426
;; ***	pic14_getDataSize  1426
;; ***	pic14_getDataSize  1426
;; ***	addSign  797
;; genarith.c:798:addSign *{*
;; gen.c:2261:resultRemat *{*
;; gen.c:6187:genIfx *{*
;; ***	genIfx  6188
;;	721 register type nRegs=4
;; ***	pic14_toBoolean  1500
; >>> gen.c:1509:pic14_toBoolean
;;	1109 rIdx = r0x104C 
	MOVF	r0x1004,W
; >>> gen.c:1514:pic14_toBoolean
;;	1109 rIdx = r0x104D 
	IORWF	r0x1005,W
; >>> gen.c:1514:pic14_toBoolean
;;	1109 rIdx = r0x104E 
	IORWF	r0x1006,W
; >>> gen.c:1514:pic14_toBoolean
;;	1109 rIdx = r0x104F 
	IORWF	r0x1007,W
; >>> gen.c:6233:genIfx
	BTFSS	STATUS,2
; >>> gen.c:6234:genIfx
;; ***	popGetLabel  key=6, label offset 4
	GOTO	_00110_DS_
;; gen.c:2261:resultRemat *{*
;; gen.c:2614:genGoto *{*
; >>> gen.c:2616:genGoto
;; ***	popGetLabel  key=1, label offset 4
	GOTO	_00105_DS_
;; gen.c:2261:resultRemat *{*
;; gen.c:2597:genLabel *{*
;; ***	genLabel  2600
;; gen.c:2261:resultRemat *{*
;; gen.c:2435:genEndFunction *{*
;; ***	genEndFunction  2437
_00111_DS_
	RETURN	
; exit point of _delay_ms
;; gen.c:6803:genpic14Code *{*
