(import 
	clojurian.syntax 
	chicken.format 
	chicken.condition)

(define fn "input_1")

(define (get-2-numbers fp)
	(list (read fp) (read fp)))

(define (print-pass s)
	(print s)
	s)

(define (big-mult l)
	(printf "big mult:\n~a\n~a\n" (car l) (cadr l)))

(define s1 (lambda (s) s))

(define (main1)
	(printf "assignmnet #1\n")
	(condition-case 
		(let* ([fp (open-input-file fn)])
			(-> fp 
				get-2-numbers 
				print-pass
				s1
;;				(as-> l (karatsuba-mult (car l) (cdr l)))
				big-mult)
			(close-input-port fp)
		)
		[(exn file) (print "file error")])
)

(define (karatsuba-mult n1 n2)
	((lambda (a1 a2) (printf "lambda:\n1:~a\n2:~a\n" a1 a2)) n1 n2))

(main1)
