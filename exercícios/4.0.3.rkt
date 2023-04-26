#lang racket

(define (par x)
  (cond
    [(zero? x) #t]
    [(equal? 1 x) #f]
    [else (not(impar (- x 2)))]
    )
  )

(define (impar x)
  (not (par x )))

(impar 5)
(impar 7)
(impar 2)
(par 4)
