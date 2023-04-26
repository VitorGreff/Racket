#lang racket
(define lst1 (list 3 3 4 5 7 2))
(define lst2 (list 3 3 4 4 3 3))
(define lst3 (list ))

(define (maximum lst)
  (cond
    [(empty? lst)(error "Lista vazia!!")]
    [(equal? (rest lst) empty) (first lst)]
    [else (cond
            [(>= (first lst) (maximum (rest lst))) (first lst)]
            [else(maximum(rest lst))]
            )]))

(maximum lst1)
(maximum lst3)