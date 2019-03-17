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
		   (c d (split-num n2))
		   (n 4)
		   (_10_n (expt 10 n))
		   (_10_n2 (expt 10 (/ n 2)))
		   (ac (* a c))
		   (bd (* b d))
		   (ad_bc (+ (* a d) (* b c))))
		(printf "a:~a b:~a\n" a b)
		(printf "c:~a d:~a\n" c d)
		(printf "a*c:~a\n" ac)
		(printf "b*d:~a\n" bd)
		(printf "ad+bc:~a\n" ad_bc)
		(printf "n=~a\n" n)
		(printf "x*y=~a\n" (+ (* _10_n ac) (* ad_bc _10_n2) bd))
	)
)

(main)

