;; SICP练习1.3
;; 定义一个过程，它以三个数为参数，返回其中较大的两个数的平方和

;; square，求一个数的平方
(define (square x) (* x x))

;; sum-of-two，求两个数的平方和
(define (sum-of-two-squares x y) (+ (square x) (square y)))

;; bigger-sum-of-squares，求较大的两个数的平方和
(define (bigger-sum-of-squares x y z) (cond ((and (> x y) (>= y z)) (sum-of-two-squares x y))
                                            ;; x > y >= z; x和y较大
                                            ((and (> x y) (> z y)) (sum-of-two-squares x z))
                                            ;; x > y ; z > y; x和z较大
                                            ((and (>= y x) (>= x z)) (sum-of-two-squares y x))
                                            ;; y >= x >= z; y和x较大
                                            ((and (>= y x) (> z x)) (sum-of-two-squares y z))
                                            ;; y >= x ; z > x; y和z较大
                                            ))

;; 13
(bigger-sum-of-squares 1 2 3)

;; 25
(bigger-sum-of-squares 3 4 2)

;; 74
(bigger-sum-of-squares 3 5 7)

;; 34
(bigger-sum-of-squares 3 5 3)

;; 50
(bigger-sum-of-squares 5 5 5)
