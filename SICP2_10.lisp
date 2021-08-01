(define (div-interval x y)
	(mul-interval x
		(make-interval (/ 1.0 (upper-bound y))
					   (/ 1.0 (lower-bound y)))))


#Considering the interval go crossing zero.

(define (div-intervalV2 x y)
	(if (or (and (< (lower-bound y) 0) (> (upper-bound y) 0 ))
			(and (> (lower-bound y) 0) (< (upper-bound y) 0 ))))
	(error "One or more interval crossing zero.")
      (mul-interval x
                    (make-interval
                     (/ 1.0 (upper-bound y))
                     (/ 1.0 (lower-bound y)))))