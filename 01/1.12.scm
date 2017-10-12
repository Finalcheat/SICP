;; SICP练习1.12
;; row代表行, column代表列
;; c == 1 or c == r  f(r, c) = 1
;; c != 1 and c != r f(r, c) = f((r - 1), (c - 1)) + f((r - 1), c)


(define (f r c)
  (cond ((= c 1) 1)
        ((= c r) 1)
        (else (+ (f (- r 1) (- c 1))
                 (f (- r 1) c)
                 )
              )
        )
  )


;; 6
(f 5 3)

