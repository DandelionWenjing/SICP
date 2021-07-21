(define (cons x y)
	(lambda (m) (m x y)))

(define (car z)
	(z (lambda (p q) p)))

// generate x
(car (cons x y))
-> (car (lambda (m) (m x y)))
-> (car (x y))
-> ((x y) (lambda (p q) p))
-> (x)

// cdr
(define (cdr  z)
	(z (lambda (p q) q)))