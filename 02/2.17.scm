;; SICP练习2.17
;; 定义出过程last-pair，它返回只包含给定（非空）表里最后一个元素的表：
;; (last-pair (list 23 72 149 34))
;; (34)


(define (last-pair l)
  (if (null? (cdr l))
      (list (car l))
      (last-pair (cdr l))))

;; (34)
(last-pair pair)
