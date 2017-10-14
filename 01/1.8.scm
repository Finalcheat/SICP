;; SICP练习1.8



(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.00001))


(define (improve y x)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))


(define (cube-root-iter guess x)
  (if (good-enough? guess x)
      guess
      (cube-root-iter (improve guess x) x)))


(define (cube-root x)
  (cube-root-iter 1.0 x))


;; 1.4422497895989996
(cube-root 3)


;; ~= 2
(cube-root 8)
