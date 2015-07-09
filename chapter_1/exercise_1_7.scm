(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
               x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; (sqrt 10000000000000) hangs
; (sqrt 0.000001) or smaller always stops at about 0.03


(define (good-enough? guess next_guess)
  (< (/ (abs (- guess next_guess)) next_guess) 0.001))

(define (sqrt-iter guess next_guess x)
  (if (good-enough? guess next_guess)
    next_guess
    (sqrt-iter next_guess (improve next_guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 (improve 1.0 x) x))

(sqrt 0.000001) ; now gets 1.00000015e-3 which is pretty close to 0.0001
(sqrt 10000000000000) ; now terminates, at 3162277.66
