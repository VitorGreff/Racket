#lang racket
(define lst1 (list 3 3 4 5 7 2))
(define lst2 (list 3 3 4 4 3 3))
(define lst3 (list ))

(define (last-element lst)
  (cond
    [(empty? lst) (error "lista vazia!")]
    [else (cond
          [(equal? (rest lst) empty) first lst]
          [else (last-element (rest lst))])]))
    

(last-element lst1)
(last-element lst2)
(last-element lst3)
