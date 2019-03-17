(import 
	srfi-71
	clojurian.syntax 
	chicken.format 
	chicken.condition)

(define (main)
	(let (
		[y 1234]
		[x 5678])
		(ktest1 x y)))

;; 100 needs to be calculated somehow
(define (split-num n)
	(values 
		(quotient n 100)
		(remainder n 100)))

(define (ktest1 n1 n2)
	(let* ((a b (split-num n1))
		   (c d (split-num n2)))
		(printf "a:~a b:~a\n" a b)
		(printf "c:~a d:~a\n" c d))
)

(main)

