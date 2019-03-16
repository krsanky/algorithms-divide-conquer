(import 
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

(define (main2)
	(printf "main2...\n")
	(let (
		[x 1234]
		[y 5678])
		(printf "x:~a y:~a\n" x y)
		(ktest1 x y)))

(define (karatsuba-mult n1 n2)
	((lambda (a1 a2) (printf "lambda:\n1:~a\n2:~a\n" a1 a2)) n1 n2))

(define (ktest1 n1 n2)
	(print (* n1 n2)))

(main2)

