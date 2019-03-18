(import chicken.format)

(define (f1 s1)
	(printf "hey:~a\n" s1))

(define (main)
	(f1 'asd))

(define x 0) ; dummy value - will be used to store continuation later
(+ 2 (call/cc (lambda (cc)
				(set! x cc)  ; set x to the continuation cc; namely, (+ 2 _)
				3)))         ; returns 5
;(x 4) ; returns 6
(display x)
(print)

(call/cc
	(lambda (cc)
		(begin 
			(print "one")
			(cc #t)
			(print "two")
			#f)))


;;; Return the first element in LST for which WANTED? returns a true 
;;; value. 
(define (search wanted? lst) 
	(call/cc 
		(lambda (return) 
			(for-each (lambda (element) 
				(print element)
				(if (wanted? element) 
					(return element))) 
				lst) 
			#f))) 

(define l1 (list 1 2 3 4 5 6 7 8 9 10))

(print (search (lambda (x) (= 7 x)) l1))

