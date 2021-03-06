(define (sqrt x)
	(define (good-enough? guess)
		(< (abs (- (square guess) x)) 0.00000001))
	(define (improve guess)
	(average guess (/ x guess)))
	(define (sqrt-iter guess)
	(if(good-enough? guess)
	guess
	(sqrt-iter (improve guess))))
	(define (abs x)
	(if (< x 0)
	(- 0 x)
	x))
	(define (average x y)
		(/ (+ x y) 2))
	(define (square x)
	(* x x))
	(sqrt-iter 1.0))