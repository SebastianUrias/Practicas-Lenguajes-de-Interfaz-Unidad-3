; Nombre: Sebastian Urias Hernandez
; Horario: 10 - 11
; Docente: Jose Luis Medina Jimenez

; Descripcion: Coloca dos numeros en la pila y llama a MultiplicacionPila.
; El procedimiento los multiplica y conserva el valor original de EBX.

INCLUDE Irvine32.inc
.data
.code

main PROC
  ; Guardamos un valor en ebx
  mov ebx, 999
  ; Colocamos valores dentro de la pila
  push 3
  push 25

  call MultiplicacionPila 
  nop
  exit

main ENDP

MultiplicacionPila PROC
  ; guardamos el valor de ebp anterior
  push ebp
  ; Usamos ebp como punto de referencia de la pila
  mov ebp, esp

  ; Guardamos el valor de ebx
  push ebx
  ; Cargamos en eax el primer argumento que es 25
  mov eax, [ebp +8]
  ; Ahora el segundo que es 3
  mov ebx, [ebp +12]
  ; Multiplicamos ambos valores
  imul eax, ebx
  ; restauramos el valor de ebx
  pop ebx
  ; restauramos el valor de ebp
  pop ebp
  ; ret regresa al main y retira 8 bytes de argumentos de la pila
  ret 8
MultiplicacionPila ENDP

END main