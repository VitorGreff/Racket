#lang racket
(define lst1 (list 3 3 4 5 7 2))
(define lst2 (list 3 3 4 4 3 3))
(define lst3 (list ))

(define (sort-list lst a)
  (cond
    [(empty? lst) (error "Lista vazia!")]
    [else(cond
         [(and (>= a (first lst)) (<= a (first (rest lst)))) (cons (first lst) (cons a (rest lst)))]
         [else (cons (first lst) (sort-list (rest lst)a))]
         )]
    )
  )

(sort-list lst1 4)
(sort-list lst3 4)