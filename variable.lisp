; defining variables using let

#|
  syntax 
  (let ((<variable-name> <value>) <variable-name>))
|#

(let ((x 5) (y 6) (z 8))
  (print (+ x (+ y z)))
)




; defining dynamic variables using defparameter def var
; defparametar must have a default value
(defvar $test)
; setting $test to a different value in these scope
(let (($test 9))
  (print $test)
)