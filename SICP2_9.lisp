Suppose we have the intervals A: [1, 3] and B: [3, 6].
Width for A is 1, width for B is 1.5.
Add the 2 intervals, we got [4, 9], width is 2.5. = width of A + width of B.

multiple the 2 intervals, we got [3, 18], width is 7.5. 

(define (width x)
	(/ (- (upper-bound x) (lower-bound x)) 2))

(width (add-interval x y))
(width (make-interval (+ (lower-bound x) (lower-bound y))
					  (+ (upper-bound x) (upper-bound y))))

(width (cons (+ (lower-bound x) (lower-bound y))
			 (+ (upper-bound x) (upper-bound y))))

(/ (- (+ (upper-bound x) (upper-bound y)) (+ (lower-bound x) (lower-bound y))) 2)

(+ (/ (- (upper-bound x) (lower-bound x)) 2) (/ (- (upper-bound y) (lower-bound y)) 2))



