#lang racket

(define lst1 (list 3 3 4 5 7 2))

(define (cons-fim lst a)
  (cond [(empty? lst) (list a)]
        [else (cons (first lst) (cons-fim (rest lst) a))]))

(define (inverte lst)
  (cond [(empty? lst) empty]
        [else (cons-fim (inverte (rest lst)) (first lst))]))

(inverte lst1)
