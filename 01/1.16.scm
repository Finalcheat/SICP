;; SICP练习1.16
;; 定义一个过程按照迭代的方式求幂。


(define (fast-expt b n)
  (define (even? n)
    (= (remainder n 2) 0))
  (define (square b)
    (* b b))
  (define (fast-expt-iter a b n)
    (cond ((= n 0) a)
          ((even? n) (fast-expt-iter a (square b) (/ n 2)))
          (else (fast-expt-iter (* a b) b (- n 1)))))
  (fast-expt-iter 1 b n))


;; 81
(fast-expt 3 4)

;; 1
(fast-expt 3 0)

;; 2187
(fast-expt 3 7)
