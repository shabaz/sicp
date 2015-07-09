(define (largest-squares a b c) 
  (cond 
    ((and (or (< a b) (= a b)) (or (< a c) (= a c)))  
     (+ (* b b) (* c c)))
    ((and (or (< b a) (= b a)) (or (< b c) (= b c)))  
     (+ (* a a) (* c c)))
    (else
     (+ (* a a) (* b b)))
  ))
