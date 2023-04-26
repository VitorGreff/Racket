#lang racket

(define (soma x y )
  (cond
    [(zero? y) x]
    [(zero? x) y]
    [else (soma(add1 x) (sub1 y))]
    )
  )

(define (sub x y )
  (cond
    [(zero? x) (- y)]
    [(zero? y) x]
    [else (sub(sub1 x) (sub1 y))]
    )
  )

;; somar x com x y vezes
;; decrementar y a cada iteração
(define (mult x y )
  (cond
    [(zero? y) 0]
    [(zero? x) 0]
    [(soma x (mult x (sub1 y)))]
   )
  )

(soma 6 5)
(sub 4 6)
(mult 5 4)