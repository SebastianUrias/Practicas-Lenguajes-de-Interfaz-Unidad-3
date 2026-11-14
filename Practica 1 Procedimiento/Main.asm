; Nombre: Sebastian Urias Hernandez
; Horario: 10 - 11
; Docente: Jose Luis Medina Jimenez

INCLUDE Irvine32.inc
.data
    ; Mensajes a usar
    mensajeInicio BYTE "Inicio del proc", 0
    mensajeProcedimiento BYTE "Dentro del proc",  0
    mensajeFin BYTE "Fin programa", 0
    mensajeLlamada1 BYTE "Direccion de la llamada 1: ", 0
    mensajeLlamada2 BYTE "Direccion de la llamada 2: ", 0
.code
main PROC
    ; Mostramos el mensaje de inicio
    mov edx, OFFSET mensajeInicio
    call WriteString
    call Crlf

    mov eax, 10

    ; Mostramos la direccion de la llamada 1
    mov edx, OFFSET mensajeLlamada1
    call WriteString
    mov eax, OFFSET llamada1
    call WriteHex
    call Crlf
    ; Decimos que estamos dentro del procedimiento
llamada1:
    call mostrarAviso

    mov eax, 20

    ; Segundo Llamada al proc y decimos su direccion
    mov edx, OFFSET mensajeLlamada2
    call WriteString
    mov eax, OFFSET llamada2
    call WriteHex
    call Crlf
    ; Decimos que ya estamos adentro del proc
llamada2:
    call mostrarAviso

    mov eax, 30

    mov edx, OFFSET mensajeFin
    call WriteString
    call Crlf

    exit
    
main ENDP

; Sintaxis de un Procedimiento Empieza con PROC y termina en ENDP
mostrarAviso PROC
    mov edx, OFFSET mensajeProcedimiento
    call WriteString
    call Crlf
    ret
mostrarAviso ENDP
END main