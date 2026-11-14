; Nombre: Sebastian Urias Hernandez
; Horario: 10 - 11
; Docente: Jose Luis Medina Jimenez

; Descripcion: Define el macro MostrarMensaje para imprimir texto y cambiar
; de linea. Lo utiliza para mostrar dos mensajes en pantalla.

INCLUDE Irvine32.inc
; Sintaxis del macro
MostrarMensaje MACRO texto
    mov edx, OFFSET texto
    call WriteString
    call Crlf
ENDM
.data

; Los mensajes que se usaran como remplazo de texto
mensajeInicio BYTE "Bienvenidos a tu salon favorito", 0
mensajeFin  BYTE "Nos vemos vuelva pronto",  0

.code
main PROC

    ; Aqui se despliega el macro dos veces
    MostrarMensaje mensajeInicio
    MostrarMensaje mensajeFin
    exit
main ENDP
END main