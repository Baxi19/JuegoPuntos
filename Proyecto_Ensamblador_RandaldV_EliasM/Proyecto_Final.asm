INCLUDE MACROSPALIN.LIB
;------------------------------------------------------------------------------
;                     DEFINICION DEL SEGMENTO DE DATOS
;------------------------------------------------------------------------------
DATOS SEGMENT
    
    ;Instruciones del juego
    
    Instrucciones dw '  ',0ah,0dh
dw ' ',0ah,0dh
dw ' ',0ah,0dh
dw '           ====================================================',0ah,0dh
dw '          ||                                                  ||',0ah,0dh                                        
dw '          ||        Instituto Tecnologico de Costa Rica       ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||        Ingenieria En Computacion                 ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||        Proyecto Ensamblador 8086                 ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh          
dw '          ||        Elias Mena Segura                         ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh
dw '          ||        Randald Villegas Brenes                   ||',0ah,0dh
dw '          ||                                                  ||',0ah,0dh 
dw '          ||        Sede San Carlos                           ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||        2017                                      ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh 
dw '          ||                                                  ||',0ah,0dh
dw '          ||        Presione una tecla para empezar           ||',0ah,0dh
dw '           ====================================================',0ah,0dh
dw '$',0ah,0dh           
        
        
        opciones1 db "================================================================================","$"
        opciones2 db "                    ++++++++++INSTRUCCIONES DE JUEGO++++++++++                  ","$"
        
        ;Espacio y alimentacion de linea
        espacio db 10,13,'$' 
        ;Mensaje que solicita una entrada
        pregunta db 13,10,'Digite el caracter que desee para jugar: ','$'
        ;Jugador
        player db 1 dup(?),"$"
        ;Variable aux para servicios
        servicio db ,"$"  
        ;Variables de Posiciones en pantalla
        posX db  ,"$"
        posY db   ,"$"
        ;Variable para dividir entre pixeles de pantalla 
        divisor db 8 ,"$"
        
        ;Variables Para imprimir en pantalla menu
        D1 db "*DIBUJAR: (CLICK IZQ)      *SUSTITUIR: (CLICK DER)" ,"$" 
        S1 db "*(S)" "$"
        W1 db "LIBRE=(W)" ,"$"
        Y1 db "ABA=(Y)" ,"$"
        G1 db "ARR=(G)" ,"$"
        B1 db "IZQ=(B)" ,"$"
        R1 db "DER=(R)" ,"$"
        RESET db "*RESET: (C)" ,"$"
        Quit db "*QUIT: (Q)" ,"$"
        Color db "*MOVIMIENTOS: ","$"
        
        ;Auxiliares de posiciones
        primerMovimiento db 00h
        
        PX db ,"$"
        PY db ,"$"
        
        auxX db ,"$"
        auxY db ,"$"
        
        PosicionAnteriorX db ,"$"
        PosicionAnteriorY db ,"$"
        
        AuxPosicion db "Por favor opima el click derecho donde quiere iniciar con su jugador "
        
        ;signos para imprecion
        SinSigno db " ","$"
        Signo db "","$" 
        
        ;variables para color white     
        car    DB 0
        pox    DB 0
        poy    DB 0
        xa     DB 0
        ya     DB 0
        
        ;Variables de msjs del programa
        recargando db "Recargando el juego...!","$"        
        msjBye db "Gracias por utilizar el programa ","$"
        
DATOS ENDS

;------------------------------------------------------------------------------
;                     DEFINICION DEL SEGMENTO DE PILA
;------------------------------------------------------------------------------

PILA SEGMENT STACK "STACK"
      db 100h dup(?)
PILA ENDS


;------------------------------------------------------------------------------
;                     DEFINICION DEL SEGMENTO DE CODIGO
;------------------------------------------------------------------------------

CODE SEGMENT
        assume CS:code, DS:datos, SS:pila

;______________________________________________________________________________

START:
  
    mov  ax,datos
    mov  ds,ax
    jmp  continuar       ;Saltamos a la etiqueta CONTINUAR

;______________________________________________________________________________

CONTINUAR:

    imprime Instrucciones ;Imprime Instrucciones 
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    limpiar servicio      ;Limpia la pantalla
    colores 7h            ;Color Gris 
    GOTOXY 0h,0h          ;Toma la posicion  
    imprime pregunta      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0
    mov player[si], bl
    imprime espacio       ;Espacio Vacio
        
    jmp  INICIO           ;Saltamos de etiqueta
    
;______________________________________________________________________________

INICIO:

    colores 7h            ;Color Gris 
    limpiar servicio      ;Limpia la pantalla
    
    jmp MODOVIDEO         ;Saltamos de etiqueta
    
;______________________________________________________________________________

MODOVIDEO:

    mov ah, 13h           ;Establecer modo de Video
    mov al, 02h           ;Resolucion 80*25
    mov bh, 03h           ;Numero de pagina
    int 10h
    
    colores 7h            ;Color gris
    call Menu             ;Imprime el menu
    
    jmp IniciarCursor     ;Saltamos de etiqueta    
    
;______________________________________________________________________________

INICIARCURSOR: 

    
    gotoxy 28h,0ch        ;busca la pocicion
    imprime player        ;Imprime jugador
    
    call menu             ;Proceso de Impresion
     
    jmp game              ;Saltamos de etiqueta    
    

;______________________________________________________________________________

SONIDO proc  :            ;Crea un sonido si la tecla es diferente a las que dice el menu
       
       mov ah,6           ;servicio de teclado sin eco
       gotoxy 00h,00h     ;colocamos el cursor en la esquina superior izquierda
       mov dl,07h         ;Crea el sonido
       int 21h            ;INT teclado

       call obtenerposicion
       gotoxy 00h,00h     ;Vamos a la poscion
       
       endp               ;Cierre de proceso
    
    
;______________________________________________________________________________

GAME:
    
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03h           ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          ;Cpm click Izquierdo
    cmp bx,1
    je DIBUJAROBJETO      ;Si es igual Saltamos de etiqueta    
    
    cmp bx,2
    je BORRAROBJETO       ;Si es igual Saltamos de etiqueta    
    
    
    
;##################################################################################    
;              Comparacion de Movimientos en el juego      
;##################################################################################

    mov al,00             ;Limpiamos la variable
    mov ah,06             ;Recibimos datos sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h               ;INT teclado
    
    cmp al,57h            ;Compara con W
    je white              ;Si es igual salta

    cmp al,77h            ;Compara con w
    je white              ;Si es igual salta

    cmp al,47h            ;Compara con G
    je green              ;Si es igual salta

    cmp al,67h            ;Compara con g
    je green              ;Si es igual salta
                          
    cmp al,52h            ;Compara con R
    je red                ;Si es igual salta

    cmp al,72h            ;Compara con r
    je red                ;Si es igual salta
    
    cmp al,59h            ;Compara con Y
    je yellow             ;Si es igual salta

    cmp al,79h            ;Compara con y
    je yellow             ;Si es igual salta
    
    cmp al,42h            ;Compara con B
    je blue               ;Si es igual salta
    
    cmp al,62h            ;Compara con b
    je blue               ;Si es igual salta
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta

    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido
    
    jmp game              ;Saltamos al ciclo principal


;______________________________________________________________________________

DIBUJAROBJETO:            ;Se escoje el color y se Dibuja el signo  
    
    call obtenerposicion  ;Obtenemos las posiciones del mouse
    gotoxy posX,PosY
    mov ah,09h            ;Escribe el caracter en la posicion del cursor
    mov al, signo         ;Se carga el caracter
    mov bl,1111b          ;Color Blanco
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
    
    jmp game              ;Saltamos a la etiqueta 
    
;______________________________________________________________________________

BORRAROBJETO:             ;Sustituir Impreciones o colores
    call obtenerposicion  ;Obtenemos las posiciones del mouse
    gotoxy posX,PosY
    mov ah,09h            ;Escribe el caracter en la posicion del cursor
    mov al, Sinsigno      ;Se carga el caracter vacio
    mov bl,1111b          ;Color Negro
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
    
    jmp game              ;Saltamos a la etiqueta 

;______________________________________________________________________________

RED:                      ;Movimiento a la derecha   
    
    mov bx,0000           ;Limpiamos la variable
    
    mov ax,03             ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
    
    cmp bx,1              ;Comparamos si se activo el click izquierdo
    je DIBUJARRED         ;si es igual vamos a dibujar el simbolo
    
    cmp bx,2              ;Comparamos si se activo el click derecho
    je sustituirappred    ;si es igual vamos a borrar caracter
    call obtenerposicion  ;Obtenemos las posiciones del mouse
                          
                          
;##################################################################################
;              Comparacion de Movimientos en el juego      
;##################################################################################
    
    mov al,00
    mov ah,06
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h
    
    cmp al,57h            ;Compara con W
    je white              ;Si es igual salta

    cmp al,77h            ;Compara con w
    je white              ;Si es igual salta

    cmp al,47h            ;Compara con G
    je green              ;Si es igual salta

    cmp al,67h            ;Compara con g
    je green              ;Si es igual salta
    
    cmp al,52h            ;Compara con R
    je red                ;Si es igual salta

    cmp al,72h            ;Compara con r
    je red                ;Si es igual salta
    
    cmp al,59h            ;Compara con Y
    je yellow             ;Si es igual salta

    cmp al,79h            ;Compara con y
    je yellow             ;Si es igual salta
    
    cmp al,42h            ;Compara con B
    je blue               ;Si es igual salta
    
    cmp al,62h            ;Compara con b
    je blue               ;Si es igual salta
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta

    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido

    
    
    jmp red               ;Saltamos a la etiqueta

;______________________________________________________________________________       

DIBUJARRED:
    
    CALL obtenerposicion  ;Busca la posicion del mouse
    gotoxy posX,posY      ;Va a la posicion
    
    mov ah,09h            ;Escribe el caracter en la posicion del cursor
    mov al, signo         ;Se carga el caracter
    mov bl,0100b          ;Color Rojo
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
        
    jmp red               ;Saltamos a la etiqueta
    
;______________________________________________________________________________

SUSTITUIRAPPRED:          ;Sustituir Impreciones o colores
    CALL obtenerposicion  ;Obtenemos las posiciones del mouse
    gotoxy posX, posY
    mov ah,09h            ;Escribe el caracter en la posicion del cursor
    mov al, Signo         ;Se carga el caracter vacio
    mov bl,1111b          ;Color Blanco
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
    
    jmp red               ;Saltamos a la etiqueta 

;______________________________________________________________________________

BLUE:                     ;Movimiento a la izquierda
    
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03            ;Obtiene las posiciones del mouse
    int 33h
    
    cmp bx,1              ;Comparamos Click Izquierdo
    je DIBUJARBLUE        ;Si se activo saltamos a dibujar
    
    cmp bx,2              ;Comparamos Click Derecho
    je sustituirappblue   ;Si se activo saltamos a sustutuir
    
    call obtenerposicion  ;Proceso
    
    
;##################################################################################
;              Comparacion de Movimientos en el juego      
;##################################################################################
    
    mov al,00             ;Limpiamos registro
    mov ah,06             ;Servicio de entrada sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h               ;INT Teclado
    
    cmp al,57h            ;Compara con W
    je white              ;Si es igual salta

    cmp al,77h            ;Compara con w
    je white              ;Si es igual salta

    cmp al,47h            ;Compara con G
    je green              ;Si es igual salta

    cmp al,67h            ;Compara con g
    je green              ;Si es igual salta
    
    cmp al,52h            ;Compara con R
    je red                ;Si es igual salta

    cmp al,72h            ;Compara con r
    je red                ;Si es igual salta
    
    cmp al,59h            ;Compara con Y
    je yellow             ;Si es igual salta

    cmp al,79h            ;Compara con y
    je yellow             ;Si es igual salta
    
    cmp al,42h            ;Compara con B
    je blue               ;Si es igual salta
    
    cmp al,62h            ;Compara con b
    je blue               ;Si es igual salta
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta

    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido

    
    
    jmp Blue              ;Saltamos a la etiqueta

;______________________________________________________________________________       

DIBUJARBLUE:
    
    CALL obtenerposicion  ;Busca la posicion del mouse
    gotoxy posX,posY      ;Va a la posicion
    
    mov ah, 09h           ;Escribe el caracter en la posicion del cursor
    mov al, signo         ;Se carga el caracter
    mov bl, 0001b         ;Color azul
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
    
                          
    mov al,00             ;Limpiamos el registro
    mov ah,06             ;Entrada sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h
    
    jmp Blue              ;Saltamos a la etiqueta
    
    
;______________________________________________________________________________

SUSTITUIRAPPBLUE:         ;Sustituir Impreciones o colores
    CALL obtenerposicion  ;Obtenemos las posiciones del mouse
    gotoxy posX,PosY
    
    mov ah,09h            ;Escribe el caracter en la posicion del cursor
    mov al, Signo         ;Se carga el caracter vacio
    mov bl,1111b          ;Color Negro
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
    
    jmp blue              ;Saltamos a la etiqueta 

;______________________________________________________________________________

YELLOW:                   ;Movimiento abajo
     
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03            ;Obtiene las posiciones del mouse
    int 33h
    
    cmp bx,1              ;Comparamos Click Izquierdo
    je DIBUJARYELLOW      ;Si se actico vamos a dibujar
    
    cmp bx,2              ;Comparamos Click Derecho
    je sustituirappyellow ;Si se activo saltamos a sustituir
    
    call obtenerposicion  ;Proceso
    
    
;##################################################################################
;              Comparacion de Movimientos en el juego      
;##################################################################################
    
    mov al,00             ;Limpiamos Registro
    mov ah,06             ;Entrada sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h
    
    cmp al,57h            ;Compara con W
    je white              ;Si es igual salta

    cmp al,77h            ;Compara con w
    je white              ;Si es igual salta

    cmp al,47h            ;Compara con G
    je green              ;Si es igual salta

    cmp al,67h            ;Compara con g
    je green              ;Si es igual salta
    
    cmp al,52h            ;Compara con R
    je red                ;Si es igual salta

    cmp al,72h            ;Compara con r
    je red                ;Si es igual salta
    
    cmp al,59h            ;Compara con Y
    je yellow             ;Si es igual salta

    cmp al,79h            ;Compara con y
    je yellow             ;Si es igual salta
    
    cmp al,42h            ;Compara con B
    je blue               ;Si es igual salta
    
    cmp al,62h            ;Compara con b
    je blue               ;Si es igual salta
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta

    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido
    
    
    jmp yellow            ;Saltamos a la etiqueta


;______________________________________________________________________________       

DIBUJARYELLOW:
    
    CALL obtenerposicion  ;Busca la posicion del mouse
    gotoxy posX,posY      ;Va a la posicion
    
    mov ah,09h            ;Escribe el caracter en la posicion del cursor
    mov al, signo         ;Se carga el caracter
    mov bl, 1110b         ;Color Amarillo
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
    
                          
    mov al,00             ;Limpiamos el registro
    mov ah,06             ;Entrada sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h
    
    jmp yellow            ;Saltamos a la etiqueta
    
;______________________________________________________________________________

SUSTITUIRAPPYELLOW:       ;Sustituir Impreciones o colores
    CALL obtenerposicion  ;Obtenemos las posiciones del mouse
    gotoxy Posx, PosY
    
    mov ah,09h            ;Escribe el caracter en la posicion del cursor
    mov al, Signo         ;Se carga el caracter vacio
    mov bl,1111b          ;Color Negro
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
    
    jmp yellow            ;Saltamos a la etiqueta 

   
;______________________________________________________________________________

GREEN:                    ;Movimiento arriba
            
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03            ;Obtiene las posiciones del mouse
    int 33h
    
    cmp bx,1              ;Comparamos Click Izq
    je DIBUJARGREEN       ;Saltamos a dibujar
    
    cmp bx,2              ;Comparamos Click Der
    je sustituirappgreen  ;Saltamos a sustituir
    
    call obtenerposicion  ;Proceso
    
    
;##################################################################################
;              Comparacion de Movimientos en el juego      
;##################################################################################
    
    mov al,00             ;Se limpia el registro
    mov ah,06             ;Entrada sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h
    
    cmp al,57h            ;Compara con W
    je white              ;Si es igual salta

    cmp al,77h            ;Compara con w
    je white              ;Si es igual salta

    cmp al,47h            ;Compara con G
    je green              ;Si es igual salta

    cmp al,67h            ;Compara con g
    je green              ;Si es igual salta
    
    cmp al,52h            ;Compara con R
    je red                ;Si es igual salta

    cmp al,72h            ;Compara con r
    je red                ;Si es igual salta
    
    cmp al,59h            ;Compara con Y
    je yellow             ;Si es igual salta

    cmp al,79h            ;Compara con y
    je yellow             ;Si es igual salta
    
    cmp al,42h            ;Compara con B
    je blue               ;Si es igual salta
    
    cmp al,62h            ;Compara con b
    je blue               ;Si es igual salta
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta

    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido    
    
    jmp green             ;Saltamos a la etiqueta


;______________________________________________________________________________       

DIBUJARGREEN:
    
    CALL obtenerposicion  ;Busca la posicion del mouse
    gotoxy posX,posY      ;Va a la posicion
    
    mov ah, 09h           ;Escribe el caracter en la posicion del cursor
    mov al, signo         ;Se carga el caracter
    mov bl, 1010b         ;Color Verde
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
    
                          
    mov al,00             ;Limpiamos los registros
    mov ah,06             ;Entrada sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h
    
    jmp green             ;Saltamos a la etiqueta                                 

;______________________________________________________________________________

SUSTITUIRAPPGREEN:        ;Sustituir Impreciones o colores
    CALL obtenerposicion  ;Obtenemos las posiciones del mouse
    GotoXY posX, PosY
    
    mov ah, 09h           ;Escribe el caracter en la posicion del cursor
    mov al, signo         ;Se carga el caracter vacio
    mov bl, 1111b         ;Color Negro
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
    
    jmp green             ;Saltamos a la etiqueta 

;______________________________________________________________________________

Verifica:    
                          ;Comparamos si ya se inicio el modo de movimiento libre
    cmp primerMovimiento,01h    
    je ciclo              ;Si se inicio antes brincamos al ciclo 


;______________________________________________________________________________

contador:
                          ;Movemos el valor 1 a contador
    mov primerMovimiento,01h
    call obtenerposicion  ;Obtenemos la posicion
    gotoxy 28h,0ch        ;Vamos a la posicion 
    imprime player        ;Imprimimos Jugador
    gotoxy 0ch,28h        ;Colocamos el cursor en el centro de la pantalla
    mov PX, 28h           ;Se guarda la posicion en X
    mov PY, 0ch           ;Se guarda la posicion en Y
    jmp ciclo             ;Regresamos al ciclo
    

;______________________________________________________________________________

SON proc  :               ;Crea un sonido si la tecla es diferente a las que dice el menu
                       
       mov ah,6           ;servicio de teclado sin eco
       gotoxy 00h,00h     ;colocamos el cursor en la esquina superior izquierda
       mov dl,07h         ;Crea el sonido
       int 21h            ;INT teclado

       endp               ;Cierre de proceso
    

;______________________________________________________________________________

WHITE:                    ;Movimiento libre
    
    jmp verifica          ;Saltamos a la etiqueta
    
ciclo:
    
    mov ax, 03            ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          
    cmp bx,1              ;Cpm click Izquierdo
    je DIBUJARWhite       ;Si es igual Saltamos de etiqueta    
    
    cmp bx,2
    je atras              ;Si es igual Saltamos de etiqueta    
    call obtenerposicion  ;Proceso para obtener posiciones de mouse
    
    
;##################################################################################    
;              Comparacion de Movimientos en el juego      
;##################################################################################

    mov al,00             ;Limpiamos la variable
    mov ah,06             ;Recibimos datos sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h               ;INT teclado
    
    cmp al,57h            ;Compara con W
    je white              ;Si es igual salta

    cmp al,77h            ;Compara con w
    je white              ;Si es igual salta
                     
    cmp al,47h            ;Compara con G
    je green              ;Si es igual salta

    cmp al,67h            ;Compara con g
    je green              ;Si es igual salta
    
    cmp al,52h            ;Compara con R
    je red                ;Si es igual salta

    cmp al,72h            ;Compara con r
    je red                ;Si es igual salta
    
    cmp al,59h            ;Compara con Y
    je yellow             ;Si es igual salta

    cmp al,79h            ;Compara con y
    je yellow             ;Si es igual salta
    
    cmp al,42h            ;Compara con B
    je blue               ;Si es igual salta
    
    cmp al,62h            ;Compara con b
    je blue               ;Si es igual salta
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta
    
    
    cmp  al,34h           ;Movimiento Izquierda = 4
    je Izquierda

    cmp  al,32h           ;Movimiento abajo = 2
    je  Abajo
                          
    cmp  al,36h           ;Movimiento Derecha = 6
    je  derecha
    
    cmp  al,38h           ;Movimiento Arriba = 8
    je  Arriba
              
              
    cmp al,00             ;Compara si no se ingresaron teclas
    jne call son          ;Llamamos el proceso que crea un sonido
    
    
    jmp ciclo             ;Saltamos al ciclo principal
  
         
;______________________________________________________________________________

DIBUJARWHITE:             ;Se escoje el color y se Dibuja el signo  
    
    call obtenerposicion  ;Obtenemos las posiciones del mouse
    gotoxy posX,PosY
    mov ah,09h            ;Escribe el caracter en la posicion del cursor
    mov al, signo         ;Se carga el caracter
    mov bl,1111b          ;Color Blanco
    mov cx, 01h           ;Cantidad de veces que se va a imprimir
    int 10h               ;Teclado
    
    jmp ciclo             ;Saltamos a la etiqueta 

;______________________________________________________________________________

ATRAS:                                                                         
    jmp game              ;Regresamos al ciclo principal del juego

;______________________________________________________________________________

LINEADERECHA:
    mov px,00h            ;Movemos la posicion de X al principio de las filas
    
    gotoxy px,py          ;Vamos a la posicion nueva de x,y 
    imprime player        ;Imprimimos el jugador
        
    jmp ciclo             ;Saltamos al ciclo principal
      

;______________________________________________________________________________

DERECHA:
    
	gotoxy px,py          ;Nos vamos a la posicion
    imprime SinSigno      ;Eliminamos el caracter que se tenia anteriormente
    
    cmp px,4Fh            ;Comparamos el limite
    je lineaDerecha       ;Saltamos a modificar la posicion
    
	mov al, px            ;Guardamos la posicion de x
	mov bl, 01h           ;Guardamos el valor 1
	add al, bl            ;Sumamos ambos valores
    mov px, al            ;Guardamos el nuevo valor de X
    
    
    gotoxy px,py          ;Vamos a la posicion nueva de x,y 
    imprime player        ;Imprimimos el jugador
        
    jmp ciclo             ;Saltamos al ciclo principal
      
;______________________________________________________________________________

LINEAIZQUIERDA:
    mov px,4Fh            ;Movemos la posicion de X al principio de las filas
    
    gotoxy px,py          ;Vamos a la posicion nueva de x,y 
    imprime player        ;Imprimimos el jugador
        
    jmp ciclo             ;Saltamos al ciclo principal
      
      
;______________________________________________________________________________

IZQUIERDA:
    gotoxy px,py          ;Nos vamos a la posicion
    imprime SinSigno      ;Eliminamos el caracter que se tenia anteriormente
    
    cmp px,00h            ;Comparamos el limite
    je lineaIzquierda     ;Saltamos a modificar la posicion
    
	mov al, px            ;Guardamos la posicion de x
	mov bl, 01h           ;Guardamos el valor 1
	sub al, bl            ;Sumamos ambos valores
    mov px, al            ;Guardamos el nuevo valor de X
    
    
    gotoxy px,py          ;Vamos a la posicion nueva de x,y 
    imprime player        ;Imprimimos el jugador
          
    jmp ciclo             ;Saltamos al ciclo principal

;______________________________________________________________________________

LINEAARRIBA:
    mov py,10h            ;Movemos la posicion de X al principio de las filas
    
    gotoxy px,py          ;Vamos a la posicion nueva de x,y 
    imprime player        ;Imprimimos el jugador
        
    jmp ciclo             ;Saltamos al ciclo
  
;______________________________________________________________________________

ARRIBA:
    
    gotoxy px,py          ;Nos vamos a la posicion
    imprime SinSigno      ;Eliminamos el caracter que se tenia anteriormente
    
    cmp py,00h            ;compara la posicion superior 
    je lineaArriba        ;Saltamos a modificar la posicion
    
	mov al, py            ;Guardamos la posicion de Y
	mov bl, 01h           ;Guardamos el valor 1
	sub al, bl            ;Sumamos ambos valores
    mov py, al            ;Guardamos el nuevo valor de Y
    
    
    gotoxy px,py          ;Vamos a la posicion nueva de x,y 
    imprime player        ;Imprimimos el jugador
    jmp ciclo             ;Saltamos al ciclo principal
    
        
    jmp ciclo             ;Saltamos al ciclo principal

;______________________________________________________________________________

LINEAABAJO:
    mov py,00h            ;Movemos la posicion de X al principio de las filas
    
    gotoxy px,py          ;Vamos a la posicion nueva de x,y 
    imprime player        ;Imprimimos el jugador
        
    jmp ciclo             ;Saltamos al ciclo
  
;______________________________________________________________________________

Abajo:
    
    gotoxy px,py          ;Nos vamos a la posicion
    imprime SinSigno      ;Eliminamos el caracter que se tenia anteriormente
    
    cmp py,10h            ;compara la posicion superior 
    je lineaAbajo         ;Saltamos a modificar la posicion
    
	mov al, py            ;Guardamos la posicion de Y
	mov bl, 01h           ;Guardamos el valor 1
	add al, bl                          ;Sumamos ambos valores
    mov py, al            ;Guardamos el nuevo valor de Y
    
    
    gotoxy px,py          ;Vamos a la posicion nueva de x,y 
    imprime player        ;Imprimimos el jugador
    jmp ciclo             ;Saltamos al ciclo principal
  

;______________________________________________________________________________

RESETAPP:                 ;Reinicia el juego         
    
    limpiar servicio      ;Limpia la pantalla  
    colores 14            ;Color amarillo
    call obtenerposicion
    gotoxy 00h,00h        ;Busca la posicion
    imprime recargando    ;Imprime la variable (cargando...)
    
    mov contador,00h      ;Reinicio de la variable contador               
    
    mov ax,0000           ;Limpia el servivio y la pantalla
    mov bx,0000
    mov cx,0000
    mov dx,0000
    colores 7             ;Color gris
    jmp start             ;Saltamos a la etiqueta

    
;______________________________________________________________________________

MENU proc near:           ;Proceso que imprime el menu
    
    gotoxy 00h,11h
    imprime opciones1     ;Imprime linea
    
    gotoxy 00h,12h
    imprime opciones2     ;Imprime msj
                       
    gotoxy 00h,13h
    imprime opciones1     ;Imprime linea
    
    
    gotoxy 00h,14h        ;Menu
    imprime D1            ;Dibujar
    
    gotoxy 37h,14h
    imprime Reset         ;Reset
    
    gotoxy 46h,14h
    imprime Quit          ;Quit
    
    gotoxy 00h,15h
    imprime opciones1     ;Imprime linea
    
    gotoxy 1Eh,16h
    imprime color         ;Movimientos
    
    ;Colores de menu
    
    gotoxy 0Eh,17h
    imprime B1            ;Blue
    
    gotoxy 18h,17h
    imprime R1            ;red
    
    gotoxy 22h,17h
    imprime y1            ;yellow
    
    gotoxy 2Ch,17h
    imprime G1            ;gren
    
    gotoxy 36h,17h
    imprime W1            ;white
    
    ret              
endp 

;______________________________________________________________________________                           

OBTENERPOSICION proc near:                           
   
    mov ax,03             ;Obtiene la posicion del mouse
    int 33h               ;INT mouse
    
    mov ax,cx             ;Guarda los valores en pixeles de las filas 
    div divisor           ;Se divide entre 8
    mov posx,al           ;La posicion en la variable
    
    mov ax,dx             ;Guarda los valores en pixeles de las columnas   
    div divisor           ;Se divide entre 8
    mov posy,al           ;La posicion en la variable 

    ret
endp

;______________________________________________________________________________               

SALIR:
        
limpiar servicio          ;Limpia la pantalla  
colores 14                ;color amarillo

gotoxy 17h,9h             ;Va a la posicion
imprime msjBye            ;Imprime el msjBye

mov  ax, 4C00h
int  21h

CODE ENDS
END START
