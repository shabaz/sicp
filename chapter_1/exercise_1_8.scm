
; (x/y^2 + 2y)/3
(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))


(define (good-enough? guess next_guess)
  (< (/ (abs (- guess next_guess)) next_guess) 0.001))

(define (cube-root-iter guess next_guess x)
  (if (good-enough? guess next_guess)
    next_guess
    (cube-root-iter next_guess (improve next_guess x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 (improve 1.0 x) x))

(cube-root 27)
(cube-root 1000)
(cube-root 0.001)
