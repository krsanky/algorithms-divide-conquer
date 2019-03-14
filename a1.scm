(import 
	clojurian.syntax 
	chicken.format 
	chicken.condition)

(define fn "input_1")

(printf "assignmnet #1\n")

(define (get-2-numbers fp)
	(list (read fp) (read fp)))

(define (big-mult l)
	(printf "big mult:\n~a\n~a\n" (car l) (cadr l)))

(condition-case 
	(let* ([fp (open-input-file fn)])
		(-> fp 
			get-2-numbers 
			big-mult)
		(close-input-port fp)
	)
	[(exn file) (print "file error")])

