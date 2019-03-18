(module karats (
	ktest1 
	kmult
	get-n
	longest)
	(import scheme srfi-71 chicken.format)

(define (num-len i)
	(string-length (format "~a" i)))

;; return longest length and add-1 if not even
(define (get-n x y)
	(let* (
			(l (longest x y))
			(n (num-len l)))
		;(printf "l:~a\n" l)
		(if (not (= 0 (remainder n 2)))
			(+ 1 n)
			n
		)
	)
)

(define (kmult n1 n2)
	(printf "kmult: ~a ~a\n" n1 n2)
	(printf "longest: ~a\n" (longest n1 n2))
)

(define (split-num x)
	(values 
		(quotient x 100)
		(remainder x 100)))

(define (longest n1 n2)
	(let ([sn1 (format "~a" n1)] 
		  [sn2 (format "~a" n2)])
		(if (> (string-length sn2) (string-length sn1))
			n2 n1)))

(define (ktest1 n1 n2)
	(let* (
			(a b (split-num n1))
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

)

