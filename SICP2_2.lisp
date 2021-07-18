#lang sicp
(define (print-point p)
	(newline)
	(display "(")
	(display (x-point p))
	(display ",")
	(display (y-point p))
	(display ")")
)

(define (make-point x y) (cons x y))

(define (x-point p) (car p))

(define (y-point p) (cdr p))

(define (make-segment start end) (cons start end))

(define (start-segment seg) (car seg))

(define (end-segment seg) (cdr seg))

(define (mid x y) (/ (+ x y) 2))

(define (midpoint-segment seg)
	(make-point
	(mid (x-point (start-segment seg)) (x-point (end-segment seg)))
	(mid (y-point (start-segment seg)) (y-point (end-segment seg)))
	)
)

(print-point (midpoint-segment (make-segment (make-point 1 2) (make-point 3 4))))