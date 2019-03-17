(include "kats.scm")
(import 
	kats
	srfi-71
	clojurian.syntax 
	chicken.format 
	chicken.condition)

(define (main)
	(let (
			[x 5678]
			[y 1234])
;		(ktest1 x y)
		(kmult x y)))


(define (longest n1 n2)
	(let ([sn1 (format "~a" n1)] 
		  [sn2 (format "~a" n2)])
		(if (> (string-length sn2) (string-length sn1))
			n2 n1)))

(define (kmult n1 n2)
	(printf "kmult: ~a ~a\n" n1 n2)
	(printf "longest: ~a\n" (longest n1 n2))
)

	
(main)

