#lang racket

(struct lista (first rest ))
(define nil #f)

(define lst1 (lista 8 (lista 7 nil)))

;;checking if a element is on a given list
(define (esta-na-lista lista x)
  (cond
    [ (equal? lista nil )#f ]
    [ (equal?(lista-first lista) x) #t]
    [ else (esta-na-lista (lista-rest lista) x)]
    )
  )