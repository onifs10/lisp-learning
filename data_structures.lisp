; using cons cells
#|
  this is basically just creating 2 memory cell and having the first cell pointing to the next, like creating a linked list  
|#
(cons 1 2) 


; Using list literal 
(list 1 2 3 4 5 6 7 )

;shorthand for list 
#|
  '()
|#
'(1 2)


; Circular list 


(setf *print-circle* t)
