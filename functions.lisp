;; creating a function is done with defun

#|
  This is the format for a function
(defun <functionName> (list of arguments) 
  "docstring: description for the document" 
  (function body) 
)
|#
;1. example with hello world 
(defun hello-world () 
  (print "hello world!" ))
; executing the function (call the function)
(hello-world)


;2. adding arguments to function
(defun hello (name) "Say hello to `name'." (format t"hello ~a !~&" name))
(hello "Boluwatife")


;3 .  defining optional arguments
(defun hello2 (name &optional age  gender)
 "We added optional arguments to this function"
 (format t"hello ~a !~&" name)
  ;check if age was added
 (when age (format t"i am ~a years of age ~&" age))
 ;check if gender was added
 (when gender (format t"i am a ~a ~&" gender) )
)
(hello2 "ade")


;4. add argument name to function , so u dont have ro remember the order arguments
(defun hello3 (name &key happy) "If `happy' is `t', print a smiley" (format t"hello ~a !~&" name) (when happy (format t ":)~&")))

(hello3 "bolu" :happy NIL)


;5. (bonus) we can choose the keys programically 
( 
  ; defining a variable
  let  ((key :happy) (val t)) 
  ; using the variable
 (hello3 "me" key val))


;7 defining a default value for optional arguments
(defun hello-default (name &optional (age 10 ) (gender "female"))
 "We added optional arguments to this function"
 (format t"hello ~a !~&" name)
  (format t"i am ~a years of age ~&" age)
  (format t"i am a ~a ~&" gender) 
)
(hello-default "ade")


; 8. using &rest (note: this is similar to the spread operator in js)
(defun mean (x &rest numbers) 
  (/ (apply #'+ x numbers) (1+ (length numbers))) 
)
(mean 1 2) 

;9. Defining key arguments, and allowing more: &allow-other-key
(defun hello-allow (name &key happy &allow-other-keys) (format t "hello ~a~&" name))


(hello-allow "me" :lisper t)

; 10. anonymous function
(funcall #'mean (+ 2 2))
