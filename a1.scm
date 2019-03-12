(import chicken.format chicken.condition)

(define fn "input_1")

(printf "assignmnet #1\n")
(printf "reading in file ...\n")

#|
(exn i/o file) 

(condition-case
	[fp (open-input-file "input_1")])
	(close-input-port fp))
|#

(define (get-2-numbers fp)
	(print "get 2 number ..."))

(condition-case 
	(let* (
		[fp (open-input-file fn)]
		)
		(print "do something with fp...")
		(print (read fp)))

	[(exn file) (print "file error")])

