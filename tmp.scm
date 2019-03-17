(import 
	srfi-71
	clojurian.syntax 
	chicken.format 
	chicken.condition)

(define fn "input_1")

(define (get-2-numbers fp)
	(list (read fp) (read fp)))

(define (big-mult l)
	(printf "big mult:\n~a\n~a\n" (car l) (cadr l)))

(define (main1)
	(printf "assignmnet #1\n")
	(condition-case 
		(let* ([fp (open-input-file fn)])
			(-> fp 
				get-2-numbers 
				big-mult)
			(close-input-port fp)
		)
		[(exn file) (print "file error")])
)


