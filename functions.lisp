;; creating a function is done with defun

#|
  This is the format for a function
(defun <functionName> (list of arguments) 
  "docstring: description for the document" 
  (function body) 
)
|#
; example with hello world 
(defun hello-world () 
  (print "hello world!" ))

; executing the function (call the function)
(hello-world)