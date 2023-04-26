#lang racket

(define (factorial n)
  (cond
    [(equal? 1 n) 1]
    [else (* n (factorial (sub1 n)))]
    )
  )

(factorial 4)λ