(import clojurian.syntax chicken.format)

(define (f1 a1)
	(printf "a1:~a\n" a1)
	a1)

(define (f2args a1 a2)
	(printf "2args a1:~a a2:~a\n" a1 a2)
	(list a1 a2))

(define fl (lambda (x) (printf "lambda x:~a\n" x) x))

(define (main)
	(begin
		(printf "do stuff\n")
;;		(f2args "asd" "qwe")
		(-> "asd"
			f1
			fl
			(as-> x (f2args x x))
			f1)))

(main)

