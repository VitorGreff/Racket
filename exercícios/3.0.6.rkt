#lang racket

(define lst1 (list 3 3 4 5 7 2))
(define lst2 (list 3 3 4 4 3 3))

(define (lista-add-num lst n)
  (cond
    [(empty? lst) empty]
    [else (cons (+ (first lst) n) (lista-add-num ( rest lst) n))]
    )
  )

(lista-add-num lst1 2)