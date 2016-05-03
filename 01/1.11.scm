;; SICP练习1.11
;; n < 3  f(n) = n
;; n >= 3 f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3)


;; 递归计算过程
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1))
         (* 2 (f (- n 2)))
         (* 3 (f (- n 3))))))


;; 迭代计算过程
(define (f n)
  (define (f-iter a b c i count)
    (if (= i count)
        c
        (f-iter (+ a
                  (* 2 b)
                  (* 3 c))
                a
                b
                (+ i 1)
                count)))
  (f-iter 2 1 0 0 n))
