; Nombre: Sebastian Urias Hernandez
; Horario: 10 - 11
; Docente: Jose Luis Medina Jimenez

; Descripcion: Solicita el nombre del usuario, lo guarda en un buffer y lo muestra.
; Al final, presenta la cantidad de caracteres escritos.

INCLUDE Irvine32.inc
.data 
    mensajeEntrada BYTE "Escribe tu nombre: ",0
    caracteresEscritos BYTE "Numero de caracteres: ",0
    nombre BYTE 20 DUP(0)
.code
main PROC
    ; Mueve edx hacia la direccion del mensaje de entrada
    mov edx, OFFSET mensajeEntrada
    call WriteString
    ; Indica donde guardar el texto que se esciba
    mov edx, OFFSET nombre
    ; El tamaño del buffer disponible
    mov ecx, SIZEOF nombre
    call ReadString 
    call Crlf

    mov edx, OFFSET nombre
    call WriteString
    call Crlf
    mov edx, OFFSET caracteresEscritos 
    call WriteString
    call WriteDec
    exit 
main ENDP
END main