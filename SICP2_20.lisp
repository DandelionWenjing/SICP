#lang sicp
(define (same-parity x . y)
    (let ((parity 
    		(if (odd? x) 
    			odd? 
    			even?)))
    (define (same-parity-with-list x ls)
    (if (null? ls)
        '()
        (if (parity (car ls))
            (cons (car ls) (same-parity-with-list x (cdr ls)))
            (same-parity-with-list x (cdr ls)))))
        (if (null? y)
            (list x)
            (cons x (same-parity-with-list x y)))))

(same-parity 1 2 3 4 5 6 7)