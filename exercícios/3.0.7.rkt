#lang racket

(define lst1 (list 3 3 4 5 7 2))
(define lst2 (list 3 3 4 4 3 3))

(define (check-even n)
  (cond
    [(=(remainder n 2)0) #t]
    [else #f]
    )
  )

(define (filter-odds lst)
  (cond
    [(empty? lst) empty]
    [(equal? (check-even (first lst))#f) (cons (first lst) (filter-odds (rest lst)))]
    [else (filter-odds (rest lst))]
    )
  )


(filter-odds lst1)