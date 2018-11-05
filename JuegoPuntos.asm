INCLUDE MACROSPALIN.LIB
;------------------------------------------------------------------------------
;                     DEFINICION DEL SEGMENTO DE DATOS
;------------------------------------------------------------------------------
DATOS SEGMENT
            
            ;Portada Inicial
            
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
        dw '          ||        Alyson Retana Gamboa                      ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||        Randald Villegas Brenes                   ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||        Sede San Carlos                           ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||        2018                                      ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||        Presione una tecla para empezar           ||',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '$',0ah,0dh           
                
                 
                 ;Pantalla para Cantidad de jugadores
            
        CantidadJugadores dw '  ',0ah,0dh
        dw ' ',0ah,0dh
        dw ' ',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh                                        
        dw '          ||        Bienvenido                                ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||        Al Juego de los Puntos                    ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||        Por Favor                                 ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh          
        dw '          ||        Seleccione la cantidad                    ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||        De Jugadores para la Partida              ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||        Presione las teclas numericas             ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||        2, 3 o 4 para seleccionar los Jugadores   ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '$',0ah,0dh           
                
                     ;Pantalla para cuando se rinde el jugador 2   
        Victoria1 dw '  ',0ah,0dh
        dw ' ',0ah,0dh
        dw ' ',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '          ||               GANADOR!!!                         ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh  
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||              El jugador 2 se ha rendido!         ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh                                        
        dw '          ||              Juego Finalizado!!                  ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '$',0ah,0dh        
                          
                      ;Pantalla para cuando se rinde el jugador 1    
        Victoria2 dw '  ',0ah,0dh
        dw ' ',0ah,0dh
        dw ' ',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '          ||               GANADOR!!!                         ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh  
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||              El jugador 1 se ha rendido!         ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh                                        
        dw '          ||              Juego Finalizado!!                  ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '$',0ah,0dh                 
         
        Victoria3 dw '  ',0ah,0dh
        dw ' ',0ah,0dh
        dw ' ',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '          ||               GANADOR!!!                         ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh  
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh 
        dw '          ||                                                  ||',0ah,0dh                                        
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '          ||                                                  ||',0ah,0dh
        dw '           ====================================================',0ah,0dh
        dw '$',0ah,0dh 
        ;Variable para instrucciones del menu  
        opciones1 db "================================================================================","$"
        opciones2 db "                    ++++++++++INSTRUCCIONES DE JUEGO++++++++++                  ","$"
       
        ;Variable aux para conteo de jugadores
        numeroJugadores db 1 dup(?),"$"
        
        ;variable aux para el nivel
        nivel db 1 dup(?),"$"
         
        ;Espacio y alimentacion de linea
        espacio db 10,13,'$' 
        
        ;Mensaje que solicita una entrada
        pregunta1 db 13,10,'             Digite un caracter para el jugador 1: ','$'
        pregunta2 db 13,10,'             Digite un caracter para el jugador 2: ','$'
        pregunta3 db 13,10,'             Digite un caracter para el jugador 3: ','$'
        pregunta4 db 13,10,'             Digite un caracter para el jugador 4: ','$'
        preguntaNivel db 13,10,'         Selecione ("1" o "2" o "3") para el nivel de dificultad ','$'
        
        ;CARACTER
        ;Jugador 1 
        player1 db 1 dup(?),"$"
        ;Jugador 2
        player2 db 1 dup(?),"$"
        ;Jugador 3
        player3 db 1 dup(?),"$"
        ;Jugador 4
        player4 db 1 dup(?),"$"                  
        
        ;PUNTOS
        ;Jugador 1 
        puntos1 db 30h ,"$"
        ;Jugador 2
        puntos2 db 30h  ,"$"
        ;Jugador 3
        puntos3 db 30h ,"$"
        ;Jugador 4
        puntos4 db 30h ,"$"
        
                     
        
        ;Variables para mostrar el puntuaje
        puntosAux db 000
        
        Cen1 db 30h ,"$"
        Dece1 db 30h ,"$"
        Uni1 db 30h ,"$"
        
        Cen2 db 30h ,"$"
        Dece2 db 30h ,"$"
        Uni2 db 30h ,"$"
        
        Cen3 db 30h ,"$"
        Dece3 db 30h ,"$"
        Uni3 db 30h ,"$"
        
        Cen4 db 30h ,"$"
        Dece4 db 30h ,"$"
        Uni4 db 30h ,"$"
                              
        ;Puntos maximos de la matriz                              
        puntosMaxNivel1 dw 10h     ;16 
        puntosMaxNivel2 dw 51h     ;81
        puntosMaxNivel3 dw 015Fh   ;351      
        turnoGanado db 00h
        
        ;aux para rol del juego
        jugadorActual db 49h ,"$"     
         
        ;aux para posiciones de pantalla  mxn
        fila db 48,"$"
        columna db 48,"$" 
         
        ;variables para impresion en pantalla                 
        Matriz1 db '* * * * *',"$"
        Matriz2 db '* * * * * * * * * *',"$"
        Matriz3 db '* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *',"$"
        
        Matriz100 db ' ? ? ? ? ',"$"
        Matriz200 db ' ? ? ? ? ? ? ? ? ? ',"$"
        Matriz300 db ' ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ? ',"$"                  
        limpiarUltimaLinea db '                                                                               ',"$"                  
        limpiarUltima db '                    ',"$"                  
        
        ;Variable aux para servicios
        servicio db ,"$"  
        
        ;Variables de Posiciones en pantalla
        posX db  ,"$"
        posY db   ,"$"
        
        ;Variable para dividir entre pixeles de pantalla 
        divisor db 8 ,"$"
        
        ;Variables Para imprimir en pantalla menu    
        Saludo db "*BIENVENIDO*    " ,"$" 
        D1 db "*RENDIRSE: (R)" ,"$" 
        S1 db "*(S)" ,"$"
        jugador db "JUGADOR : ","$"
        RESET db "*RESET: (C)" ,"$"
        Quit db "*QUIT: (Q)" ,"$"
        Color db "*PUNTOS: ","$"
        Punto db "*","$"
        
        ;Auxiliares de posiciones
        primerMovimiento db 00h
        
        PX db ,"$"
        PY db ,"$"
        
        Col db 0000
        Car db ,"$"
        
        auxX db 0000
        auxY db 0000
        
        PosicionAnteriorX db ,"$"
        PosicionAnteriorY db ,"$"
        
       
        
        ;signos para imprecion
        SignoP db 17h
        SignoI db 1dh 
        Signo db 17h
        
        ;Variables de msjs del programa
        recargando db "Reiniciando el Juego...!","$"        
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
START: ;Se preparan los datos del programa
  
    mov  ax,datos         ;Preparamos el programa
    mov  ds,ax
    jmp  continuar        ;Saltamos a la etiqueta CONTINUAR

;______________________________________________________________________________

CONTINUAR: ;Se imprime la portada del proyecto
    limpiar servicio      ;Limpia la pantalla
    colores 1111B         ;Color Blanco 
    imprime Instrucciones ;Imprime Instrucciones 
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    int 21h               ;lectura de caracteres                                          
    
    jmp seleccionJugadores;Nos movemos de pantalla  
 
;______________________________________________________________________________     
SELECCIONJUGADORES: ;se solicita la cantidad de jugadores
    
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    imprime CantidadJugadores;Imprime Pantalla para cantidad de jugadores 
    mov servicio,06h      
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Salidas o entradas Teclado
    
    mov bl,al             ;Se mueve el valor recibido del teclado
    mov si,0              ;a una variable para ser comparado con las posibles entradas
    mov numeroJugadores[si], bl
   
;______________________________________________________________________________
VERIFICARJUGADORES: ;se compara las entradas del usuario
    
        
    cmp numeroJugadores,32h ;Comparamos con 2 
    je  DosJugadores        ;si es igual nos movemos al rol del juego
    
    cmp numeroJugadores,33h ;Comparamos con 3
    je  TresJugadores       ;si es igual nos movemos al rol del juego
    
    cmp numeroJugadores,34h ;Comparamos con 4    
    je  CuatroJugadores     ;si es igual nos movemos al rol del juego
    
    call sonido             ;se llama el proceso que produce un sonido
    jmp seleccionJugadores  ;Tecla erronea llamamos la funcion 
    ret

;______________________________________________________________________________
DOSJUGADORES: ;Seleccion de caracteres del rol de 2 jugadores
    
    ;Jugador #1
    GOTOXY 0h,5h          ;Toma la posicion  
    colores 1010B         ;Color verde 
    imprime pregunta1     ;Imprime la pregunta que solicita el caracter
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 1
    mov player1[si], bl
    imprime espacio       ;Espacio Vacio

    ;Jugador #2
    GOTOXY 0h,5h          ;Toma la posicion    
    colores 1110B         ;Color amarillo 
    imprime pregunta2     ;Imprime la pregunta que solicita el caracter
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 2
    mov player2[si], bl
    imprime espacio       ;Espacio Vacio
    
    jmp cicloJuego2       ;Vamos al ciclo del juego
;______________________________________________________________________________
TRESJUGADORES:  ;Seleccion de caracteres del rol de 3 jugadores
    
    ;Jugador #1
    GOTOXY 0h,5h          ;Toma la posicion  
    colores 1010B         ;Color verde 
    imprime pregunta1      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 1
    mov player1[si], bl
    imprime espacio       ;Espacio Vacio

    ;Jugador #2
    GOTOXY 0h,5h          ;Toma la posicion    
    colores 1110B         ;Color amarillo 
    imprime pregunta2      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 2
    mov player2[si], bl
    imprime espacio       ;Espacio Vacio
                                          
    ;Jugador #3
    GOTOXY 0h,5h          ;Toma la posicion    
    colores 0100B         ;Color rojo
    imprime pregunta3      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 3
    mov player3[si], bl
    imprime espacio       ;Espacio Vacio
                                              
    jmp cicloJuego3

;______________________________________________________________________________
CUATROJUGADORES: ;Seleccion de caracteres del rol de 4 jugadores
    
    ;Jugador #1
    GOTOXY 0h,5h          ;Toma la posicion  
    colores 1010B         ;Color verde 
    imprime pregunta1      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 1
    mov player1[si], bl
    imprime espacio       ;Espacio Vacio

    ;Jugador #2
    GOTOXY 0h,5h          ;Toma la posicion    
    colores 1110B         ;Color amarillo 
    imprime pregunta2      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 2
    mov player2[si], bl
    imprime espacio       ;Espacio Vacio
                                          
    ;Jugador #3
    GOTOXY 0h,5h          ;Toma la posicion    
    colores 0100B         ;Color rojo 
    imprime pregunta3      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 3
    mov player3[si], bl
    imprime espacio       ;Espacio Vacio
    
    ;Jugador #4
    GOTOXY 0h,5h          ;Toma la posicion    
    colores 1001B         ;Color azul 
    imprime pregunta4      ;Imprime la pregunta
    
    mov ah,1              ;Esperar a que se pulse una tecla
    int 21h               ;Mostrarla por pantalla
    
    mov bl,al
    mov si,0              ;Se guarda el caracter del jugador 4
    mov player4[si], bl
    imprime espacio       ;Espacio Vacio       
    
    jmp cicloJuego4
;______________________________________________________________________________
CICLOJUEGO2: ;Ciclo Para iniciar el juego de 2 jugadores
    colores 7h            ;Color Gris 
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    gotoxy 28h,0ah
    imprime preguntaNivel ;Imprime Pantalla para cantidad de jugadores 
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               
    
    mov bl,al             ;Se mueve el valor recibido del teclado
    mov si,0              ;a una variable para ser comparado con las posibles entradas
    mov nivel[si], bl
    call VERIFICARNIVEL2  ;Proceso que verifica el nivel ingresado y si es una entrada correcta
    jmp MODOVIDEO2        ;Saltamos de etiqueta
    
;______________________________________________________________________________
MODOVIDEO2: ;Inicio del modo de video 

    colores 0111b         ;Color gris
    mov ah, 13h           ;Establecer modo de Video
    mov al, 02h           ;Resolucion 80*25
    mov bh, 03h           ;Numero de pagina
    int 10h
    
    call Menu2            ;Imprime el menu
    jmp compararNivel     ;Saltamos de etiqueta
    
;______________________________________________________________________________
CompararNivel: ;Se compara los datos ingresados para selecionar el tama_o de la matriz  
    
    cmp nivel,31h         ;Comparamos con 1
    je  MATRIZ5           ;Saltamos de etiqueta
    
    cmp nivel, 32h        ;Comparamos con 2
    je MATRIZ10           ;Saltamos de etiqueta
    
    cmp nivel, 33h        ;Comparamos con 3
    je MATRIZ40           ;Saltamos de etiqueta
        
;______________________________________________________________________________
MATRIZ5: ;Se imprime la matriz de acuerdo a los datos que ingreso el usuario 5x5
    
    call matriz5x5        ;Proceso que imprime la matriz
    jmp game2             ;Saltamos de etiqueta    
              
;______________________________________________________________________________
MATRIZ10: ;Se imprime la matriz de acuerdo a los datos que ingreso el usuario 10x10
    
    call matriz10x10      ;Proceso que imprime la matriz
    jmp game2             ;Saltamos de etiqueta    
                    
;______________________________________________________________________________
MATRIZ40: ;Se imprime la matriz de acuerdo a los datos que ingreso el usuario 10x40
    
    call matriz10x40      ;Proceso que imprime la matriz
    jmp game2             ;Saltamos de etiqueta    
                        
;______________________________________________________________________________

GAME2: ;Inicio de la logica del juego            
;##################################################################################    
;              Comparacion de click del mouse en el juego      
;##################################################################################     
        
    
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03h           ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          
    cmp bx,1              ;Cpm click Izquierdo
    je VerificarRestricciones;Vamos a verificar las restricciones
    
    cmp bx,2             ;Cpm click Derecho
    je call sonido       ;Si es igual Saltamos de etiqueta    
    
    
    
;##################################################################################    
;              Comparacion de Teclas en el juego      
;##################################################################################     
        
    mov al,00             ;Limpiamos la variable
    mov ah,06             ;Recibimos datos sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h               ;INT teclado
    
    cmp al,52h            ;Compara con R
    je rendirse           ;Si es igual salta

    cmp al,72h            ;Compara con r
    je rendirse           ;Si es igual salta
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta
    
    cmp puntosMaxNivel1,0
    je ganador
    
    cmp puntosMaxNivel2,0
    je ganador
    
    cmp puntosMaxNivel3,0
    je ganador
    
    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido        
                  
   jmp game2     
;______________________________________________________________________________ 
                                                                       
CICLOJUEGO3: ;Inicio del ciclo para partidas de 3 jugadores  

    colores 7h            ;Color Gris 
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    gotoxy 28h,0ah
    imprime preguntaNivel ;Imprime Pantalla para cantidad de jugadores 
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    mov bl,al             ;Se mueve el valor recibido del teclado
    mov si,0              ;a una variable para ser comparado con las posibles entradas
    mov nivel[si], bl
    call verificarNivel3  ;proceso para verificar el nivel
    jmp MODOVIDEO3        ;Saltamos de etiqueta
    
;______________________________________________________________________________

MODOVIDEO3: ;Se inicia el modo de video

    mov ah, 13h           ;Establecer modo de Video
    mov al, 02h           ;Resolucion 80*25
    mov bh, 03h           ;Numero de pagina
    int 10h
    
    colores 7h            ;Color gris    
    
    call Menu             ;Imprime el menu
    
;______________________________________________________________________________
CompararNivel3:  ;Se compara los datos ingresados para selecionar el tama_o de la matriz    
    
    cmp nivel,31h         ;Comparamos con 1
    je  MATRIZ53
    
    cmp nivel, 32h        ;Comparamos con 2
    je MATRIZ103
    
    cmp nivel, 33h        ;Comparamos con 3
    je MATRIZ403
        
;______________________________________________________________________________
MATRIZ53: ;Se llama el proceso que imprime la matriz de 5 x 5
    call matriz5x5

    jmp game3              ;Saltamos de etiqueta    
              
;______________________________________________________________________________
MATRIZ103:  ;Se llama el proceso que imprime la matriz de 10 x 10
    call matriz10x10

    jmp game3              ;Saltamos de etiqueta    
                    
;______________________________________________________________________________
MATRIZ403:;Se llama el proceso que imprime la matriz de 10 x 40
    call matriz10x40

    jmp game3              ;Saltamos de etiqueta    
                           
    
;______________________________________________________________________________

GAME3: ;Inicio de logica del juego          
;##################################################################################    
;              Comparacion de clicks en el juego      
;##################################################################################        
 
 
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03h           ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          
    cmp bx,1              ;Cpm click Izquierdo
    je VerificarRestricciones;Vamos a verificar las restricciones    
    
    cmp bx,2
    je call sonido       ;Si es igual Saltamos de etiqueta    
    
    
    
;##################################################################################    
;              Comparacion de Movimientos en el juego      
;##################################################################################     
        
    mov al,00             ;Limpiamos la variable
    mov ah,06             ;Recibimos datos sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h               ;INT teclado
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta
    
    cmp puntosMaxNivel1,0
    je ganador
    
    cmp puntosMaxNivel2,0
    je ganador
    
    cmp puntosMaxNivel3,0
    je ganador
    
    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido        
                  
   jmp game3     
             
;______________________________________________________________________________

CICLOJUEGO4:;Inicio del rol del juego para 4 jugadores
    colores 7h            ;Color Gris 
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    gotoxy 28h,0ah
    imprime preguntaNivel ;Imprime Pantalla para cantidad de jugadores
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    mov bl,al              ;Se mueve el valor recibido del teclado
    mov si,0               ;a una variable para ser comparado con las posibles entradas
    mov nivel[si], bl
    call VERIFICARNIVEL4   ;Proceso para verificar el nivel
    jmp MODOVIDEO4         ;Saltamos de etiqueta
    
;______________________________________________________________________________

MODOVIDEO4:;Se inicia el modo de video

    mov ah, 13h           ;Establecer modo de Video
    mov al, 02h           ;Resolucion 80*25
    mov bh, 03h           ;Numero de pagina
    int 10h
    
    colores 7h            ;Color gris  
    
    
    call Menu             ;Imprime el menu
    
;______________________________________________________________________________
CompararNivel4: ;Se compara las entradas del usuario   
    
    cmp nivel,31h         ;Se compara el nivel con 1
    je  MATRIZ54          ;si es igual nos vamos a la etiqueta
    
    cmp nivel, 32h        ;Se compara el nivel con 2
    je MATRIZ104          ;si es igual nos vamos a la etiqueta
    
    cmp nivel, 33h        ;Se compara el nivel con 3
    je MATRIZ404          ;si es igual nos vamos a la etiqueta
        
;______________________________________________________________________________
MATRIZ54:;de acuerdo con los datos se llama el proceso para pintar la matriz
    call matriz5x5         ;Se llama el proceso para matriz en nivel 1

    jmp game4              ;Saltamos de etiqueta    
              
;______________________________________________________________________________
MATRIZ104:;de acuerdo con los datos se llama el proceso para pintar la matriz
    call matriz10x10       ;Se llama el proceso para matriz en nivel 2

    jmp game4              ;Saltamos de etiqueta    
                    
;______________________________________________________________________________
MATRIZ404:;de acuerdo con los datos se llama el proceso para pintar la matriz
    call matriz10x40       ;Se llama el proceso para matriz en nivel 3

    jmp game4              ;Saltamos de etiqueta    
                        
    
;______________________________________________________________________________

GAME4:;Inicio de la logica del juego para 4 jugadores
;##################################################################################    
;              Comparacion de Clicks en el juego      
;##################################################################################           
        
    mov bx, 0000          ;Limpiamos la variable
    
    mov ax, 03h           ;Obtiene las posiciones del mouse
    int 33h               ;INT mouse
                          
    cmp bx,1              ;Cpm click Izquierdo
    je VerificarRestricciones;Vamos a verificar las restricciones
    
    cmp bx,2
    je call sonido       ;Si es igual Saltamos de etiqueta    
    
    
    
;##################################################################################    
;              Comparacion de Movimientos en el juego      
;##################################################################################     
        
    mov al,00             ;Limpiamos la variable
    mov ah,06             ;Recibimos datos sin eco
    mov dl,255            ;se define los caracteres de la tabla ascii
    int 21h               ;INT teclado
    
    cmp al,52h            ;Compara con R
    je rendirse           ;Si es igual salta

    cmp al,72h            ;Compara con r
    je rendirse           ;Si es igual salta
    
    cmp al,43h            ;Compara con C
    je resetApp           ;Si es igual salta

    cmp al,63h            ;Compara con c
    je resetApp           ;Si es igual salta
    
    cmp al,51h            ;Compara con Q
    je salir              ;Si es igual salta

    cmp al,71h            ;Compara con q
    je salir              ;Si es igual salta

    cmp puntosMaxNivel1,0
    je ganador
    
    cmp puntosMaxNivel2,0
    je ganador
    
    cmp puntosMaxNivel3,0
    je ganador
    
    cmp al,00             ;Compara si no se ingresaron teclas
    jne call sonido       ;Llamamos el proceso que crea un sonido        
                  
    jmp game4             ;Enciclamos el juego
                
                
;______________________________________________________________________________
INFORENDIDO1: ;Informacin cuando un jugador se rinde

    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    
    imprime victoria2     ;Imprime Pantalla para cantidad de jugadores 
    
    gotoxy 10h,0ah
    imprime jugador       ;jugador 
    
    gotoxy 19h,0ah
    imprime player2       ;caracter
    
    gotoxy 2eh,0ah
    imprime color         ;puntos                       
                            
    gotoxy 38h,0ah
    imprime puntos2       ;puntos obtenidos 
    
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               ;Interfaz
    
    jmp resetapp          ;Reiniciamos el juego

;______________________________________________________________________________
GANADOR: ;Informacin cuando un jugador se rinde
    
    
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    
    imprime victoria3     ;Imprime Pantalla para cantidad de jugadores 
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               
    
    jmp resetapp          ;Reiniciamos el juego

;______________________________________________________________________________
INFORENDIDO2: ;Informacin cuando un jugador se rinde
    
    
    limpiar servicio      ;Limpia la pantalla 
    imprime espacio
    colores 0101B         ;Color morado 
    
    imprime victoria1     ;Imprime Pantalla para cantidad de jugadores 
    
    gotoxy 10h,0ah
    imprime jugador       ;jugador 
    
    gotoxy 19h,0ah
    imprime player1       ;caracter
    
    gotoxy 2eh,0ah
    imprime color         ;puntos                       
                            
    gotoxy 38h,0ah
    imprime puntos1       ;puntos obtenidos    
     
    
    mov servicio,06h      ;Salidas o entradas Teclado
    mov ah,1              ;Esperamos que se digite una tecla
    Int 21h               
    
    jmp resetapp          ;Reiniciamos el juego
;______________________________________________________________________________
RENDIRSE: ;Se verifica cual jugador se rindio

    cmp jugadorActual, 49h;Jugador 1
    je infoRendido1       ;Se imprime las estadisticas

    cmp jugadorActual, 50h;Jugador 1 
    je infoRendido2       ;Se imprime las estadisticas     
    
     
    ret
;______________________________________________________________________________
RESETAPP:                 ;Reinicia el juego         
    
    limpiar servicio      ;Limpia la pantalla  
    colores 14            ;Color amarillo
    call obtenerposicion
    gotoxy 0ah,0ah        ;Busca la posicion
    imprime recargando    ;Imprime la variable (cargando...)
    
    mov ax,0000           ;Limpia el servicio y la pantalla
    mov bx,0000
    mov cx,0000
    mov dx,0000  
    
                          ;Limpiamos los puntos de los jugadores
    mov puntos1, 30h
    mov puntos2, 30h
    mov puntos3, 30h
    mov puntos4, 30h 
    
    mov turnoGanado,00h
     
    mov jugadorActual, 49h; establecemos el primer jugador
    mov nivel,00h         ;Le colocamos un cero a la variable del nivel                      
    
                    
        
    ;Variables para mostrar el puntuaje
    mov puntosAux, 000
    
    mov Cen1,30h 
    mov Dece1 , 30h 
    mov Uni1 , 30h 
    
    mov Cen2 , 30h
    mov Dece2 , 30h
    mov Uni2 , 30h 
    
    mov Cen3 , 30h 
    mov Dece3 , 30h
    mov Uni3 , 30h 
            
    mov Cen4 , 30h 
    mov Dece4 , 30h
    mov Uni4 , 30h 
                          
    ;Puntos maximos de la matriz                              
    mov puntosMaxNivel1 , 10h     ;16 
    mov puntosMaxNivel2 , 51h     ;81
    mov puntosMaxNivel3 , 015Fh   ;351      
    mov turnoGanado , 00h
    
    ;aux para rol del juego
    mov jugadorActual , 49h
     
    ;aux para posiciones de pantalla  mxn
    mov fila , 48
    mov columna ,48
                      
    colores 7             ;Color gris
    jmp start             ;Saltamos a la etiqueta

;______________________________________________________________________________

INFO1:;informacion del usuario 1 para cuando esta en el rol                           
    gotoxy 00h,17h
    imprime jugador       ;Texto = jugador 
    
    gotoxy 09h,17h
    imprime player1       ;caracter selecionado
    
    gotoxy 1Eh,17h
    imprime color         ;Texto = puntos                       
                            
    gotoxy 28h,17h
    imprime cen1    
                     
    gotoxy 29h,17h
    imprime dece1 
        
    gotoxy 2ah,17h
    imprime uni1      ;puntos obtenidos                        
    
    gotoxy 2bh,17h
    imprime limpiarUltima                        
    ret                        

;______________________________________________________________________________

INFO2:;informacion del usuario 2 para cuando esta en el rol                        
    gotoxy 00h,17h
    imprime jugador       ;Texto = jugador 
    
    gotoxy 09h,17h
    imprime player2       ;caracter selecionado
    
    gotoxy 1Eh,17h
    imprime color         ;Texto = puntos                       
                            
    gotoxy 28h,17h
    imprime cen2    
                     
    gotoxy 29h,17h
    imprime dece2 
        
    gotoxy 2ah,17h
    imprime uni2      ;puntos obtenidos                        
    
    gotoxy 2bh,17h
    imprime limpiarUltima                                        
    ret                        

;______________________________________________________________________________

INFO3:;informacion del usuario 3 para cuando esta en el rol                           
    gotoxy 00h,17h
    imprime jugador       ;Texto = jugador 
    
    gotoxy 09h,17h
    imprime player3       ;caracter selecionado
    
    gotoxy 1Eh,17h
    imprime color         ;Texto = puntos                       
                            
    gotoxy 28h,17h
    imprime cen3    
                     
    gotoxy 29h,17h
    imprime dece3 
        
    gotoxy 2ah,17h
    imprime uni3      ;puntos obtenidos                        
                            
    gotoxy 2bh,17h
    imprime limpiarUltima                        
    ret                        

;______________________________________________________________________________
                            
INFO4:;informacion del usuario 4 para cuando esta en el rol                            
    gotoxy 00h,17h
    imprime jugador       ;Texto = jugador 
    
    gotoxy 09h,17h
    imprime player4       ;caracter
    
    gotoxy 1Eh,17h
    imprime color         ;Texto = puntos                       
                            
    gotoxy 28h,17h
    imprime cen4    
                     
    gotoxy 29h,17h
    imprime dece4 
        
    gotoxy 2ah,17h
    imprime uni4      ;puntos obtenidos                        
               
    gotoxy 2bh,17h
    imprime limpiarUltima                        
    ret                        
;______________________________________________________________________________
VERIFICARRESTRICCIONES:;se establecen las restricciones para la logica de los niveles

    cmp nivel,31h         ;Se compara el nivel con 1
    je  restricciones1    ;si es igual nos vamos a la etiqueta
    
    cmp nivel, 32h        ;Se compara el nivel con 2
    je  restricciones2    ;si es igual nos vamos a la etiqueta
    
    cmp nivel, 33h        ;Se compara el nivel con 3
    je  restricciones3    ;si es igual nos vamos a la etiqueta
    ret
;______________________________________________________________________________
RESTRICCIONES1:;restricciones para el nivel 1 matriz 5x5
    
        call obtenerposicion  ;Guardamos la posicion del mouse x,y
    
;______________________________________________________________________________
LADOIZQ:
        cmp posx, 23h     ;comparamos el valor de x con los limites iniciales de las columnas
        jae LadoDer       ;Si estan dentro de los limites entra
        call sonido
        jmp OtraVez
        
;______________________________________________________________________________
LadoDer:
        cmp posx, 2bh     ;comparamos el valor de x con los limites finales de las columnas
        jbe LadoArr       ;Si estan dentro de los limites entra
        call sonido 
        jmp OtraVez
    
;______________________________________________________________________________    
LadoArr:                  ;comparamos el valor de y con los limites iniciales de las filas
        cmp posy, 05h     ;Si estan dentro de los limites entra
        jae LadoAba
        call sonido 
        jmp OtraVez
    
;______________________________________________________________________________    
LadoAba:                  ;comparamos el valor de y con los limites finales de las filas
        cmp posy, 0dh     ;Si estan dentro de los limites entra
        jbe VerificarColor 
        call sonido
        jmp OtraVez
;______________________________________________________________________________        
VerificarColor:;Se analizan los colores que hay en la matriz
        
        gotoxy posx,posy  ;vamos a la posicion que se dio click
        
        mov ah, 08h       ;leer un caracter y atributo  
        int 10h
        
        cmp al,2ah        ;Comparamos con las posiciones de los puntos
        je OtraVez
        
        cmp al,3fh        ;Comparamos con las posiciones de los signos de pregunta 
        je OtraVez    
        
        cmp al,17h        ;Comparamos con las posiciones de los signos para arriba 
        je OtraVez
        
        cmp al,1dh        ;Comparamos con las posiciones de los signos para abajo 
        je OtraVez 
                    
                    
        cmp al,player1    ;Comparamos con el catacter del jugador 1
        je OtraVez
        
        cmp al,player2    ;Comparamos con el catacter del jugador 2
        je OtraVez
                    
        cmp al,player3    ;Comparamos con el catacter del jugador 3
        je OtraVez
        
        cmp al,player4    ;Comparamos con el catacter del jugador 4
        je OtraVez
         
                    
        jmp pintarColor   ;Si es diferente vamos a pintar la posicion 
;______________________________________________________________________________        
PINTARCOLOR:
        
        call VERIFICARJUGADOR ;Verifica el jugador actual para selecionar el color
        gotoxy posX,posY      ;Va a la posicion
        call obtenerSigno     ;Proceso para saber el lado de la linea
        mov ah, 09h           ;Escribe el caracter en la posicion del cursor
        mov al, signo         ;Se carga el caracter
        mov bl, col           ;Color del jugador
        mov cx, 01h           ;Cantidad de veces que se va a imprimir
        int 10h               ;Teclado
        
        mov al,00             ;Limpiamos los registros
        mov ah,06             ;Entrada sin eco
        mov dl,255            ;se define los caracteres de la tabla ascii
        int 21h
        
     
;______________________________________________________________________________        
COMPARARRESULTADOS:;Se compararan los valores de las filas
        
        mov ch, signo         ;Movemos el valor a un registro
        
        cmp signoI,ch         ;verificamos si el signo era impar
        je verificarAyA       ;Si es impar vamos a verificar los cuadros de arriba y abajo
        
        cmp signoP,ch         ;verificamos si el signo era par
        je verificarIyD       ;Si es par verificamos los cuadros de izquierda y derecha
        
;______________________________________________________________________________ 
VERIFICARAYA:;Se Verifican las posiciones de arriba y abajo en la matriz 
                              
        
        ;-----------------Arriba----------------------------------  
        
        mov auxX,0h           ;Limpiamos los valores
        mov auxY,0h           ;Limpiamos los valores
        
        mov cx,0h             ;Limpiamos los valores
        mov dx,0h             ;Limpiamos los valores
        
        mov ch, posx          ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy          ;guardamos la posicion de y
        mov auxy, dh
    
        dec auxX              ;(x-1) , (y-1)
        dec auxY
                              ;nos colocamos en la posicion
        gotoxy auxx,auxy                                  
        
        mov ah, 08h           ;INT para leer un caracter y atributo  
        int 10h
        
        
        cmp al,17h            ;Comparamos con las posiciones de los signos para arriba 
        je Comparacion2
        
        cmp al,1dh            ;Comparamos con las posiciones de los signos para abajo 
        je Comparacion2
        
        jmp Comparacion4      ;Si existe un signo pintado, analizamos el siguiente
        ;---------------------------------------------------------
Comparacion2:
         
        mov auxX,0h           ;Limpiamos los valores
        mov auxY,0h           ;Limpiamos los valores
        
        mov cx,0h             ;Limpiamos los valores
        mov dx,0h             ;Limpiamos los valores
        
        mov ch, posx          ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy          ;guardamos la posicion de y
        mov auxy, dh
        
        dec auxY              ;(x) , (y-2)
        dec auxY
        
        gotoxy auxx,auxy      ;nos colocamos en la posicion                            
        
        mov ah, 08h           ;leer un caracter y atributo  
        int 10h
        
        cmp al,17h            ;Comparamos con las posiciones de los signos para arriba 
        je Comparacion3
        
        cmp al,1dh            ;Comparamos con las posiciones de los signos para abajo 
        je Comparacion3
        
        jmp Comparacion4      ;Si existe un signo pintado, analizamos el siguiente
        ;---------------------------------------------------------
Comparacion3:
        
        mov auxX,0h           ;Limpiamos los valores
        mov auxY,0h           ;Limpiamos los valores
        
        mov cx,0h             ;Limpiamos los valores
        mov dx,0h             ;Limpiamos los valores
        
        mov ch, posx          ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy          ;guardamos la posicion de y
        mov auxy, dh
        
        add auxx,01h          ;(x+1),(y-1)
        dec auxY
        
        gotoxy auxx,auxy      ;nos colocamos en la posicion                             
        
        mov ah, 08h           ;leer un caracter y atributo  
        int 10h
        
        cmp al,17h            ;Comparamos con las posiciones de los signos para arriba 
        je call dibujarArriba
        
        cmp al,1dh            ;Comparamos con las posiciones de los signos para abajo 
        je  call dibujarArriba
        
        jmp Comparacion4      ;Si existe un signo pintado, analizamos el siguiente
        
        ;---------------------------------------------------------
Comparacion4:        
        
        ;-----------------Abajo;----------------------------------
        
        mov auxX,0h           ;Limpiamos los valores
        mov auxY,0h
                              ;Limpiamos los valores
        mov cx,0h
        mov dx,0h             ;Limpiamos los valores
        
        mov ch, posx          ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy          ;guardamos la posicion de y
        mov auxy, dh
        
        
        dec auxX              ;(x-1) , (y+1)
        add auxY,01h
        
        gotoxy auxx,auxy      ;nos colocamos en la posicion                                  
        
        mov ah, 08h           ;leer un caracter y atributo  
        int 10h
        
        
        cmp al,17h            ;Comparamos con las posiciones de los signos para arriba 
        je Comparacion5
        
        cmp al,1dh            ;Comparamos con las posiciones de los signos para abajo 
        je Comparacion5
        
        call ANALIZARROL
        ;---------------------------------------------------------
Comparacion5:
         
        mov auxX,0h           ;Limpiamos los valores
        mov auxY,0h
                              ;Limpiamos los valores
        mov cx,0h
        mov dx,0h             ;Limpiamos los valores
        
        mov ch, posx          ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy          ;guardamos la posicion de y
        mov auxy, dh
        
       
        add auxY,02h          ;(x) , (y+2)
      
        
        gotoxy auxx,auxy      ;Vamos a la posicion                            
        
        mov ah, 08h           ;leer un caracter y atributo  
        int 10h
        
        cmp al,17h            ;Comparamos con las posiciones de los signos para arriba 
        je Comparacion6
        
        cmp al,1dh            ;Comparamos con las posiciones de los signos para abajo 
        je Comparacion6
        
        call ANALIZARROL
        ;---------------------------------------------------------
Comparacion6:
        
        mov auxX,0h           ;Limpiamos los valores
        mov auxY,0h           ;Limpiamos los valores
        
        mov cx,0h             ;Limpiamos los valores
        mov dx,0h             ;Limpiamos los valores
        
        mov ch, posx          ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy          ;guardamos la posicion de y
        mov auxy, dh
        
        
        add auxx,01h          ;(x+1),(y+1)
        add auxY,01h
        
        gotoxy auxx,auxy      ;Vamos a la posicion                            
        
        mov ah, 08h           ;leer un caracter y atributo  
        int 10h
        
        cmp al,17h            ;Comparamos con las posiciones de los signos para arriba 
        je call dibujarAbajo
        
        cmp al,1dh            ;Comparamos con las posiciones de los signos para abajo 
        je call dibujarAbajo  ;Si paso todas las pruebas entonces diujamos el caracter
        
        call ANALIZARROL
;______________________________________________________________________________ 
DIBUJARArriba proc near: ;P
        
        mov auxX,0h           ;Limpiamos los valores
        mov auxY,0h           ;Limpiamos los valores
        
        mov cx,0h             ;Limpiamos los valores
        mov dx,0h             ;Limpiamos los valores
        
        mov ch, posx          ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy          ;guardamos la posicion de y
        mov auxy, dh
        
                              ;(x) , (y-1)
        dec auxY      
        
        call VERIFICARJUGADOR ;Verifica el jugador actual para selecionar el color
        gotoxy auxx,auxy      ;Vamos a la posicion                            
        
        mov ah, 09h           ;Escribe el caracter en la posicion del cursor
        mov al, car         ;Se carga el caracter
        mov bl, col           ;Color del jugador
        mov cx, 01h           ;Cantidad de veces que se va a imprimir
        int 10h  
        
        
        call sumarPuntos   
        
        call actualizarDatos
        call verificarGanador
        ;call restarPuntos
        mov turnoGanado,01h
        
        jmp comparacion4      ;comparamos abajo
        
endp
;______________________________________________________________________________ 
DIBUJARABAJO proc near:
        
        mov auxX,0h           ;Limpiamos los valores
        mov auxY,0h           ;Limpiamos los valores
        
        mov ch, posx          ;guardamos la posicion de x
        mov auxX, ch
        
        mov ch, posy          ;guardamos la posicion de y
        mov auxy, ch
        
                              ; (x) , (y+1)
        ADD auxY ,01H
                                
        call VERIFICARJUGADOR ;Verifica el jugador actual para selecionar el color
        gotoxy auxx,auxy      ;Vamos a la posicion                            
        
        mov ah, 09h           ;Escribe el caracter en la posicion del cursor
        mov al, car         ;Se carga el caracter
        mov bl, col           ;Color del jugador
        mov cx, 01h           ;Cantidad de veces que se va a imprimir
        int 10h
        ;imprime player1       ;$$$$$$$$$FALTA INCREMENTAR PTS Y RESTAR LAS POSIBILIDADES PARA GANAR
        
        call sumarPuntos   
        call actualizarDatos
        ;call restarPuntos
        cmp turnoGanado,01h
        je otraVez           ;sI 
        
        ;call siguienteJugador
endp
;______________________________________________________________________________ 
VERIFICARIYD:
        ;Izquierda  
        ;---------------------------------------------------------
        mov auxX,0h            ;Limpiamos los valores
        mov auxY,0h            ;Limpiamos los valores
        
        mov cx,0h              ;Limpiamos los valores
        mov dx,0h              ;Limpiamos los valores
        
        mov ch, posx           ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy           ;guardamos la posicion de y
        mov auxy, dh
       
        dec auxX               ;(x-1) , (y+1)
        add auxY,01h
        
        gotoxy auxx,auxy       ;vamos a la posicion                           
        
        mov ah, 08h            ;leer un caracter y atributo  
        int 10h
        
        
        cmp al,17h             ;Comparamos con las posiciones de los signos para arriba 
        je Comparacion8
        
        cmp al,1dh             ;Comparamos con las posiciones de los signos para abajo 
        je Comparacion8
        
        jmp Comparacion10      
        ;---------------------------------------------------------
Comparacion8:
         
        mov auxX,0h            ;Limpiamos los valores
        mov auxY,0h            ;Limpiamos los valores
        
        mov cx,0h              ;Limpiamos los valores
        mov dx,0h              ;Limpiamos los valores
        
        mov ch, posx           ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy           ;guardamos la posicion de y
        mov auxy, dh
        
        dec auxX               ;(x-2) , (y)
        dec auxX
                               ;Vamos a la posicion
        gotoxy auxx,auxy                                  
        
        mov ah, 08h            ;leer un caracter y atributo  
        int 10h
        
        cmp al,17h             ;Comparamos con las posiciones de los signos para arriba 
        je Comparacion9
        
        cmp al,1dh             ;Comparamos con las posiciones de los signos para abajo 
        je Comparacion9
        
        jmp Comparacion10
        ;---------------------------------------------------------
Comparacion9:
        
        mov auxX,0h            ;Limpiamos los valores
        mov auxY,0h
                               ;Limpiamos los valores
        mov cx,0h
        mov dx,0h              ;Limpiamos los valores
        
        mov ch, posx           ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy           ;guardamos la posicion de y
        mov auxy, dh
        
        dec auxx               ;(x-1),(y-1)
        dec auxy
        
        gotoxy auxx,auxy       ;vamos a la posicion                           
        
        mov ah, 08h            ;leer un caracter y atributo  
        int 10h
        
        cmp al,17h             ;Comparamos con las posiciones de los signos para arriba 
        je call dibujarIzquierda
        
        cmp al,1dh             ;Comparamos con las posiciones de los signos para abajo 
        je  call dibujarIzquierda
        
        jmp Comparacion10  
        ;---------------------------------------------------------
Comparacion10:        
        ;derecha  
        ;---------------------------------------------------------
        mov auxX,0h            ;Limpiamos los valores
        mov auxY,0h
                               ;Limpiamos los valores
        mov cx,0h
        mov dx,0h              ;Limpiamos los valores
        
        mov ch, posx           ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy           ;guardamos la posicion de y
        mov auxy, dh
        
        dec auxy               ;(x+1), (y-1)
        add auxx,01h
                               ;vamos a la poscion
        gotoxy auxx,auxy                                  
        
        mov ah, 08h            ;leer un caracter y atributo  
        int 10h
        
        
        cmp al,17h             ;Comparamos con las posiciones de los signos para arriba 
        je Comparacion11
        
        cmp al,1dh             ;Comparamos con las posiciones de los signos para abajo 
        je Comparacion11
        
        call ANALIZARROL
        ;---------------------------------------------------------
Comparacion11:
         
        mov auxX,0h            ;Limpiamos los valores
        mov auxY,0h
        
        mov cx,0h              ;Limpiamos los valores
        mov dx,0h
        
        mov ch, posx           ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy           ;guardamos la posicion de y
        mov auxy, dh
        
        add auxY,01h           ;(x+1) , (y+1)
        add auxx,01h
        
        gotoxy auxx,auxy       ;vamos a la posicion                           
        
        mov ah, 08h            ;leer un caracter y atributo  
        int 10h
        
        cmp al,17h             ;Comparamos con las posiciones de los signos para arriba 
        je Comparacion12
        
        cmp al,1dh             ;Comparamos con las posiciones de los signos para abajo 
        je Comparacion12
        
        call ANALIZARROL
        ;---------------------------------------------------------
Comparacion12:
        
        mov auxX,0h            ;Limpiamos los valores
        mov auxY,0h
                               ;Limpiamos los valores
        mov cx,0h
        mov dx,0h              ;Limpiamos los valores
        
        mov ch, posx           ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy           ;guardamos la posicion de y
        mov auxy, dh
        
        add auxx,02h           ;(x),(y+2)
        
        
        gotoxy auxx,auxy       ;vamos a la posicion                           
        
        mov ah, 08h            ;leer un caracter y atributo  
        int 10h
        
        cmp al,17h             ;Comparamos con las posiciones de los signos para arriba 
        je call dibujarderecha
        
        cmp al,1dh             ;Comparamos con las posiciones de los signos para abajo 
        je call dibujarderecha
        
        call ANALIZARROL

;______________________________________________________________________________         


;______________________________________________________________________________ 
DIBUJARIZQUIERDA proc near:
        
        mov auxX,0h            ;Limpiamos los valores
        mov auxY,0h
                               ;Limpiamos los valores
        mov cx,0h
        mov dx,0h              ;Limpiamos los valores
        
        mov ch, posx           ;guardamos la posicion de x
        mov auxX, ch
        
        mov dh, posy           ;guardamos la posicion de y
        mov auxy, dh
                               ;(x) , (y-1)
        dec auxX
       
        
        call VERIFICARJUGADOR ;Verifica el jugador actual para selecionar el color
        gotoxy auxx,auxy      ;Vamos a la posicion                            
        
        mov ah, 09h           ;Escribe el caracter en la posicion del cursor
        mov al, car         ;Se carga el caracter
        mov bl, col           ;Color del jugador
        mov cx, 01h           ;Cantidad de veces que se va a imprimir
        int 10h
        
        call sumarPuntos
        ;imprime player1        ;$$$$$$$$$$FALTA INCREMENTAR PTS Y RESTAR LAS POSIBILIDADES PARA GANAR
        call actualizarDatos
        ;call restarPuntos
        mov turnoGanado,01h
        
        jmp comparacion10 
       
endp
;______________________________________________________________________________ 
DIBUJARDERECHA proc near:
        
        mov auxX,0h            ;Limpiamos los valores
        mov auxY,0h
        
        mov ch, posx           ;guardamos la posicion de x
        mov auxX, ch
        
        mov ch, posy           ;guardamos la posicion de y
        mov auxy, ch
       
                               ;(x) , (y+1)
        ADD auxX,01H
       
       call VERIFICARJUGADOR ;Verifica el jugador actual para selecionar el color
        gotoxy auxx,auxy      ;Vamos a la posicion                            
        
        mov ah, 09h           ;Escribe el caracter en la posicion del cursor
        mov al, car         ;Se carga el caracter
        mov bl, col           ;Color del jugador
        mov cx, 01h           ;Cantidad de veces que se va a imprimir
        int 10h                              
        
        call sumarPuntos
        
        call actualizarDatos
        ;call restarPuntos
        cmp turnoGanado,01h
        je otraVez             ;Verifica si gano un turno mas
        
        ;call siguienteJugador
        
endp  
      
;______________________________________________________________________________  
ANALIZARROL proc near:
        
        cmp turnoGanado,01h
        je otraVez             ;Verifica si gano un turno mas 
        
        
        call siguienteJugador  ;Avanzamos al siguiente jugador

endp
;______________________________________________________________________________   
OTRAVEZ:

       mov turnoGanado,00h
       cmp numeroJugadores, 32h
       je game2
       
       cmp numeroJugadores, 33h
       je game3
       
       cmp numeroJugadores, 34h
       je game4                                                                         
                                                                               
                                                                               
;______________________________________________________________________________
RESTRICCIONES2:;restricciones para el nivel 2
    call obtenerposicion  ;Guardamos la posicion del mouse x,y

;______________________________________________________________________________
LADOIZQ2:
        cmp posx, 1eh     ;comparamos el valor de x con los limites iniciales de las columnas
        jae LadoDer2       ;Si estan dentro de los limites entra
        call sonido
        jmp OtraVez
        
;______________________________________________________________________________
LadoDer2:
        cmp posx, 30h     ;comparamos el valor de x con los limites finales de las columnas
        jbe LadoArr2       ;Si estan dentro de los limites entra
        call sonido 
        jmp OtraVez
    
;______________________________________________________________________________    
LadoArr2:                  ;comparamos el valor de y con los limites iniciales de las filas
        cmp posy, 01h     ;Si estan dentro de los limites entra
        jae LadoAba2
        call sonido 
        jmp OtraVez
    
;______________________________________________________________________________    
LadoAba2:                  ;comparamos el valor de y con los limites finales de las filas
        cmp posy, 13h     ;Si estan dentro de los limites entra
        jbe VerificarColor 
        call sonido
        jmp OtraVez




;______________________________________________________________________________
RESTRICCIONES3:;restricciones para el nivel 3
    call obtenerposicion  ;Guardamos la posicion del mouse x,y
;______________________________________________________________________________
LadoDer3:
        cmp posx, 4Eh     ;comparamos el valor de x con los limites finales de las columnas
        jbe LadoArr3       ;Si estan dentro de los limites entra
        call sonido 
        jmp OtraVez
;______________________________________________________________________________    
LadoArr3:                  ;comparamos el valor de y con los limites iniciales de las filas
        cmp posy, 01h     ;Si estan dentro de los limites entra
        jae LadoAba3
        call sonido 
        jmp OtraVez

;______________________________________________________________________________    
LadoAba3:                  ;comparamos el valor de y con los limites finales de las filas
        cmp posy, 13h     ;Si estan dentro de los limites entra
        jbe VerificarColor 
        call sonido
        jmp OtraVez



;______________________________________________________________________________                             
SUMAR1 proc near:
        
        cmp puntos1,39h
        je aumentarDec1
        add puntos1,01h
        mov ch,puntos1
        mov uni1,ch
        jmp resultado1
        
    aumentarDec1:
        mov puntos1,30h
        mov uni1, 30h
        
        cmp dece1,39h
        je aumentarCen1
        add dece1, 01h
        jmp resultado1 
        
    aumentarCen1:
        mov dece1,30h
        add cen1,01h
        jmp resultado1
    
    resultado1:
        gotoxy 28h,17h
        imprime cen1    
                     
        gotoxy 29h,17h
        imprime dece1 
        
        gotoxy 2ah,17h
        imprime uni1
        ret              
        
endp

;______________________________________________________________________________                             
SUMAR2 proc near:
        
        cmp puntos2,39h
        je aumentarDec2
        add puntos2,01h
        mov ch,puntos2
        mov uni2,ch
        jmp resultado2
        
    aumentarDec2:
        mov puntos2,30h
        mov uni2, 30h
        
        cmp dece2,39h
        je aumentarCen2
        add dece2, 01h
        jmp resultado2 
        
    aumentarCen2:
        mov dece2,30h
        add cen2,01h
        jmp resultado2
    
    resultado2:
        gotoxy 28h,17h
        imprime cen2    
                     
        gotoxy 29h,17h
        imprime dece2 
        
        gotoxy 2ah,17h
        imprime uni2 
        ret
       
endp
;______________________________________________________________________________                             


;______________________________________________________________________________                             
SUMAR3 proc near:
        cmp puntos3,39h
        je aumentarDec3
        add puntos3,01h
        mov ch,puntos3
        mov uni3,ch
        jmp resultado3
        
    aumentarDec3:
        mov puntos3,30h
        mov uni3, 30h
        
        cmp dece3,39h
        je aumentarCen3
        add dece3, 01h
        jmp resultado3 
        
    aumentarCen3:
        mov dece3,30h
        add cen3,01h
        jmp resultado3
    
    resultado3:
        gotoxy 28h,17h
        imprime cen3    
                     
        gotoxy 29h,17h
        imprime dece3 
        
        gotoxy 2ah,17h
        imprime uni3 
        ret
        ;add puntos3,01h
        
        ;score puntos3 ,Cen3, Dece3 ,Uni3
        ;ret
   

        
endp

;______________________________________________________________________________                             
SUMAR4 proc near:
        cmp puntos4,39h
        je aumentarDec4
        add puntos4,01h
        mov ch,puntos4
        mov uni4,ch
        jmp resultado4
        
    aumentarDec4:
        mov puntos4,30h
        mov uni4, 30h
        
        cmp dece4,39h
        je aumentarCen4
        add dece4, 01h
        jmp resultado4 
        
    aumentarCen4:
        mov dece4,30h
        add cen4,01h
        jmp resultado4
    
    resultado4:
        gotoxy 28h,17h
        imprime cen4    
                     
        gotoxy 29h,17h
        imprime dece4 
        
        gotoxy 2ah,17h
        imprime uni4 
        ret
        ;add puntos4,01h
        
        ;score puntos4 ,Cen4, Dece4 ,Uni4
        ;ret
  

        
endp
;______________________________________________________________________________                             
SUMARPUNTOS proc near: ;Proceso para sumar puntos
    
    cmp jugadorActual,049h ;Comparamos con 1
    je call sumar1         ;Si es igual se actualiza el puntuaje
    
    cmp jugadorActual,050h ;Comparamos con 2
    je call sumar2         ;Si es igual se actualiza el puntuaje
    
    cmp jugadorActual,051h ;Comparamos con 3
    je call sumar3         ;Si es igual se actualiza el puntuaje
    
    cmp jugadorActual,052h ;Comparamos con 4
    je call sumar4         ;Si es igual se actualiza el puntuaje
      
    ret
endp  
;______________________________________________________________________________                           


;______________________________________________________________________________

;______________________________________________________________________________  
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX                            
;______________________________________________________________________________                           
; Area de Procesos Repetitivos para llamar como funciones
;______________________________________________________________________________  
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
;______________________________________________________________________________

;______________________________________________________________________________                           
VERIFICARNIVEL2 PROC near: ;Proceso para verificar el nivel de una partida de 2
    
    cmp nivel,31h          ;Si el nivel es menor que 1
    jb CICLOJUEGO2         ;Nos regresamos a solicitar el nivel
    
    cmp nivel, 33h         ;Si es mayor que 3
    ja CICLOJUEGO2         ;Nos regresamos a solicitar el nivel
    ret
    
endp
;______________________________________________________________________________                           
VERIFICARNIVEL3 PROC near: ;Proceso para verificar el nivel de una partida de 3
    cmp nivel,31h          ;Si el nivel es menor que 1
    jb CICLOJUEGO3         ;Nos regresamos a solicitar el nivel
    
    cmp nivel, 33h         ;Si es mayor que 3
    ja CICLOJUEGO3         ;Nos regresamos a solicitar el nivel
    ret
endp

;______________________________________________________________________________                           
VERIFICARNIVEL4 PROC near: ;Proceso para verificar el nivel de una partida de 4
    cmp nivel,31h          ;Si el nivel es menor que 1
    jb CICLOJUEGO4         ;Nos regresamos a solicitar el nivel
    
    cmp nivel, 33h         ;Si es mayor que 3
    ja CICLOJUEGO4         ;Nos regresamos a solicitar el nivel
    ret
endp
;______________________________________________________________________________                           
MATRIZ10X40 proc near: ;Proceso para imprimir matrix de 10 x 40
   
   mov columna,0h          ; Iniciamos el valor de las filas en 0
   mov fila,1h             ; Iniciamos el valor de las columnas en 0
   
   mov cx,0ah              ;establecemos 10 iteraciones
   ciclo3:                 ;Etiqueta para ciclo
       gotoxy columna, fila;vamos a la posicion mxn
       imprime matriz3     ;imprimimos la variable
       inc fila            ;sumamos 2 posiciones
       gotoxy columna, fila;vamos a la posicion mxn
       imprime matriz300     ;imprimimos la variable
       inc fila
                           ;hacemos las iteraciones para las filas
       loop ciclo3
       dec fila 
       gotoxy columna,fila
       imprime limpiarUltimaLinea                    ;si es igual finalizamos el proceso
       ret                 ;si no es igual brincamos al ciclo
endp 
;______________________________________________________________________________                           
MATRIZ10X10 proc near: ;Proceso para imprimir matrix de 10 x 10
   
   mov columna,1eh         ;Iniciamos el valor de las filas en 30
   mov fila,1h             ;Iniciamos el valor de las columnas en 0
   
   mov cx,0ah              ;establecemos 10 iteraciones
   ciclo2:                 ;Etiqueta para ciclo
       gotoxy columna, fila;vamos a la posicion mxn
       imprime matriz2     ;imprimimos la variable
       inc fila            ;sumamos 2 posiciones
       gotoxy columna, fila;vamos a la posicion mxn
       imprime matriz200     ;imprimimos la variable
       inc fila
                           ;hacemos las iteraciones para las filas
       loop ciclo2
       dec fila 
       gotoxy columna,fila
       imprime limpiarUltimaLinea
       ret                 ;si es igual finalizamos el proceso
endp
;______________________________________________________________________________                           
MATRIZ5X5 proc near: ;Proceso para imprimir matrix de 5 x 5
   
   mov columna,23h         ;Iniciamos el valor de las filas en 35
   mov fila,5h             ;Iniciamos el valor de las columnas en 5
   
   mov cx,5h               ;establecemos 5 iteraciones
   
   ciclo1:
       
       gotoxy columna, fila;vamos a la posicion mxn
       imprime matriz1     ;imprimimos la variable
       inc fila            ;sumamos 2 posiciones
       gotoxy columna, fila;vamos a la posicion mxn
       imprime matriz100    ;imprimimos la variable
       inc fila
                            
       loop ciclo1         ;hacemos las iteraciones para las filas
       dec fila 
       gotoxy columna,fila
       imprime limpiarUltimaLinea
       ret                 ;si es igual finalizamos el proceso
endp
;______________________________________________________________________________                           

SONIDO proc near:;Crea un sonido si la tecla es diferente a las que dice el menu
       
       mov ah,02h          ;servicio de teclado sin eco
       ;gotoxy 00h,00h     ;colocamos el cursor en la esquina superior izquierda
       mov dl,07h          ;Crea el sonido
       int 21h             ;INT teclado

       ret
endp                       ;Cierre de proceso
;______________________________________________________________________________
MENU proc near:;Proceso que imprime el menu y las instrucciones
    
    gotoxy 00h,14h
    imprime opciones1     ;Imprime linea
    
    
    gotoxy 05h,15h        ;Menu
    imprime saludo        ;Mensaje del menu
    
    gotoxy 23h,15h
    imprime Reset         ;Reset
    
    gotoxy 3Bh,15h
    imprime Quit          ;Quit
    
    
    gotoxy 00h,16h
    imprime opciones1     ;Imprime linea
    
    actualizarDatos proc near: 
    ;Se compara el jugador que esta en el turno
    cmp jugadorActual, 49h;Con el 1
    je info1              ;Se imprime la info

    cmp jugadorActual, 50h;Con el 2 
    je info2              ;Se imprime la info

    cmp jugadorActual, 51h;Con el 3 
    je info3              ;Se imprime la info

    cmp jugadorActual, 52h;Con el 4 
    je info4              ;Se imprime la info
    ret
    endp              
endp 

;______________________________________________________________________________

MENU2 proc near:;Proceso que imprime el menu para 2 jugadores para la opcion de rendirse

    gotoxy 00h,14h
    imprime opciones1     ;Imprime linea
    
    
    gotoxy 05h,15h        ;Menu
    imprime D1            ;Tecla para rendirse
    
    gotoxy 23h,15h
    imprime Reset         ;Reset
    
    gotoxy 3Bh,15h
    imprime Quit          ;Quit
    
    
    gotoxy 00h,16h
    imprime opciones1     ;Imprime linea
    
     
    ;Se compara el jugador que esta en el turno
    cmp jugadorActual, 49h;Con el 1 
    je info1              ;Se imprime la info

    cmp jugadorActual, 50h;Con el 2 
    je info2              ;Se imprime la info

    cmp jugadorActual, 51h;Con el 3 
    je info3              ;Se imprime la info

    cmp jugadorActual, 52h;Con el 4 
    je info4              ;Se imprime la info
    
    ret              
endp 
;______________________________________________________________________________                             
SIGUIENTEJUGADOR proc near: ;Proceso para pasar al siguiente jugador
    
    cmp numeroJugadores, 32h     ;Comparamos la cantidad de jugadores para analizar el 
    je rol2
           
    cmp numeroJugadores, 33h
    je rol3
    
    cmp numeroJugadores, 34h
    je rol4       
     ;________________________________________
ROL2:
    
    cmp jugadorActual,049h ;Comparamos con 1
    jne jugador22           
    mov jugadorActual,050h ;Si es igual movemos al siguiente
    call menu
    ret
    
    jugador22:       
    mov jugadorActual,049h ;Si no es ninguno de los anteriores es el #2 y se actualiza la posicion
    call menu
    ret
                           ;Si es igual se actualiza el color

    ;________________________________________
ROL3:
    cmp jugadorActual,049h ;Comparamos con 1
    jne jugador32           
    mov jugadorActual,050h ;Si es igual movemos al siguiente
    call menu
    ret
    
    jugador32:       
    cmp jugadorActual,050h ;Comparamos con 2
    jne jugador33           ;Si no es igual se verifica el siguiente
    mov jugadorActual,051h ;Si es igual movemos al siguiente
    call menu
    ret
    
    jugador33:              
    mov jugadorActual,049h ;Si no es ninguno de los anteriores es el #3 y se actualiza la posicion
    call menu
    ret
                           ;Si es igual se actualiza el color

    ;________________________________________
ROL4:
    cmp jugadorActual,049h ;Comparamos con 1
    jne jugador42           
    mov jugadorActual,050h ;Si es igual movemos al siguiente
    call menu
    ret
    
    jugador42:       
    cmp jugadorActual,050h ;Comparamos con 2
    jne jugador43           ;Si no es igual se verifica el siguiente
    mov jugadorActual,051h ;Si es igual movemos al siguiente
    call menu
    ret
    
    jugador43:       
    cmp jugadorActual,051h ;Comparamos con 3
    jne call jugador44      ;Si no es igual se verifica el siguiente
    mov jugadorActual,052h ;Si es igual movemos al siguiente
    call menu
    ret
    
    jugador44:       
    mov jugadorActual,049h ;Si no es ninguno de los anteriores es el #4 y se actualiza la posicion
    call menu
    ret
                           ;Si es igual se actualiza el color
      
endp  
;______________________________________________________________________________                             
COLOR1 proc near:                                       
    mov ch,player1
    mov car,ch
                                       
    mov col,1010b       ; color verde
    ret
    

endp                                       
;______________________________________________________________________________                             
COLOR2 proc near:
    mov ch,player2
    mov car,ch
    
    mov col,1110b       ;color amarillo
    ret

endp
;______________________________________________________________________________                             
COLOR3 proc near:
    mov ch,player3
    mov car,ch
    
    mov col,0100b       ;color rojo 
    ret 
      
endp
;______________________________________________________________________________                             
COLOR4 proc near:
    mov ch,player4
    mov car,ch
    
    mov col,1001b       ;color azul  
    ret
      
endp
;______________________________________________________________________________                             
VERIFICARJUGADOR proc near: ;Proceso para establecer el color del jugador en uso
    
    cmp jugadorActual,049h ;Comparamos con 1
    je call color1         ;Si es igual se actualiza el color
    
    cmp jugadorActual,050h ;Comparamos con 2
    je call color2         ;Si es igual se actualiza el color
    
    cmp jugadorActual,051h ;Comparamos con 3
    je call color3         ;Si es igual se actualiza el color
    
    cmp jugadorActual,052h ;Comparamos con 4
    je call color4         ;Si es igual se actualiza el color
      
    ret
endp  
;______________________________________________________________________________                           

OBTENERPOSICION proc near:;Proceso para guardar en variables las posiciones del mouse                          
   
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
RESTARPUNTOS proc near:                                                        
    cmp nivel,31h
    je restar1
    
    cmp nivel,32h
    je  restar2
    
    cmp nivel,33h
    je  restar3
    push ax
    restar1:
    mov ax, puntosMaxNivel1
    sub ax, 1
    mov puntosMaxNivel1,ax 
    pop ax
    ret
           
    restar2:
    mov ax, puntosMaxNivel2
    sub ax, 1
    mov puntosMaxNivel2,ax 
    pop ax
    ret
    
    restar3:
    mov ax, puntosMaxNivel3
    sub ax, 1
    mov puntosMaxNivel3,ax 
    pop ax
    ret
endp    
;______________________________________________________________________________
 SIGNOPAR proc near:
    
    mov dh,signoP         ;se mueve el valor dependiendo de la posicion de la matriz
    mov signo,dh 
   
    ret
endp
;______________________________________________________________________________
SIGNOIMPAR proc near:
    
    mov dh,signoI         ;se mueve el valor dependiendo de la posicion de la matriz
    mov signo,dh   
    ret
endp
;______________________________________________________________________________               
obtenerSigno proc near:   ;Proceso para analizar la posicion en "Y" y el signo correspondiente
  
    mov dh,posY            ;Usamos un auxiliar 
    mov auxY,dh 
    cmp posY, 01h
    je  signoImpar         ;se comparan las filas impares 
    
    cmp auxY, 03h
    je  signoImpar
    
    cmp auxY, 05h
    je  signoImpar 
    
    cmp auxY, 07h
    je  signoImpar
    
    cmp auxY, 09h
    je  signoImpar 
    
    cmp auxY, 0Bh
    je  signoImpar
    
    cmp auxY, 0Dh
    je  signoImpar
    
    cmp auxY, 0Fh
    je  signoImpar 
    
    cmp auxY, 11h
    je  signoImpar
    
    cmp auxY, 13h
    je  signoImpar
    
    jmp signoPar          ;si no es una impar definivamente es una fila par XD
    
    RET
endp 
;______________________________________________________________________________               
 verificarGanador proc near:
     RET
 endp
;______________________________________________________________________________               

SALIR:;Para finalizar el programa
        
limpiar servicio          ;Limpia la pantalla  
colores 14                ;color amarillo

gotoxy 17h,9h             ;Va a la posicion
imprime msjBye            ;Imprime el msjBye

mov  ax, 4C00h
int  21h

CODE ENDS
END START
;______________________________________________________________________________  