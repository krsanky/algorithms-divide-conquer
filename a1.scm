(include "karats.scm")
(import 
	karats
	chicken.format)

(define (main)
	(let (
			[x 5678]
			[y 1234])
;		(ktest1 x y)
		(printf "longest:~a\n" (longest x y))
		(printf "longest:~a\n" (longest y x))
		(kmult x y)
		(printf "get-n x y :~a\n" (get-n x y))
		(printf "get-n 23100 2300 :~a\n" (get-n 23100 2300))
		(printf "get-n 3100 72300 :~a\n" (get-n 3100 72300))
		(printf "get-n 2310026 39723001 :~a\n" (get-n 2310026 39723001))
	)
)
	
(main)

