; Nombre: Sebastian Urias Hernandez
; Horario: 10 - 11
; Docente: Jose Luis Medina Jimenez

; Descripcion: Define mensajes para entradas validas e invalidas y muestra
; el mensaje de entrada invalida. Incluye una etiqueta que compara ECX con cero.

INCLUDE Irvine32.inc
.data
; Mensajes a utilizar
msgValida BYTE "Exito: Entrada valida", 0
msgInvalida BYTE "Error: Entrada invalida", 0

.code
main PROC
    ; Inicializamos ecx en 7
    mov ecx, 7
entradaInvalida:
    mov edx, OFFSET msgInvalida
    call WriteString
    call Crlf

cadenaVacia:
    mov ecx, 0

fin:
    exit
main ENDP

validarNoVacia:
    cmp ecx, 0
    ret
END main