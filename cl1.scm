(import clojurian.syntax chicken.format)

(define (f1 a1)
	(printf "a1:~a\n" a1)
	a1)

(define (main)
	(begin
		(printf "do stuff\n")
		(-> "asd"
			f1
			f1)))

(main)

