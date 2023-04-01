; the syntax is this language is written in the polish notation order, where you have the
; operator followed by the operand 
; operator ....operand
; eg 2 + 4 is written as + 2 4 


; basic expression (oprator ....oprands)
(+ 2 2)

; defining a function 
(defun divider (x y)
    (assert (not(zerop y)) (y) "second agurment can't be zero")
    (/ x y)
)

; initializing a function is still the same with a basic expression
; just that the operator is the functionName and the function args are the oprands
(+ 2 (divider 2 0))

; expanding a macro 
(loop for x in '(a b c d e) do (print x))

; Hello world function
(defun hello (name) (format t"Hello, ~A~%" name))

(hello "test")
(divider 2 1)