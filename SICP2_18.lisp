#lang sicp
(define (reverse items)
	(if (= 1 (length items))
		items
		(cons (reverse (cdr items)) (car items))))

(reverse (list 1 4 9 16 25))