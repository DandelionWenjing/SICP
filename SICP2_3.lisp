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

(define (make-rect p1 p2) (cons p1 p2))

(define (left-bottom rect) (car rect))

(define (right-top rect) (cdr rect))

(define (height rect) (- (y-point (right-top rect)) (y-point (left-bottom rect))))

(define (width rect) (- (x-point (right-top rect)) (x-point (left-bottom rect))))

(define (area rect) (* (height rect) (width rect)))

(define (perimeter rect) (* (+ (height rect) (width rect)) 2))

(area (make-rect (make-point 0 0) (make-point 1 2) ))

(perimeter (make-rect (make-point 0 0) (make-point 1 2)))