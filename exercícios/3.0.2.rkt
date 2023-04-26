#lang racket

(struct lista (first rest ))
(define nil #f)

(define lst1 (lista 8 (lista 7 (lista 9 (lista 7( lista 4 (lista 7 nil)))))))

;; removing all occurences of a element in a list
(define (remove-todos list x)
  (cond
    [ (equal? list nil) nil]
    [ (equal?(lista-first list) x) (remove-todos (lista-rest list) x)]
    [ else (cons (lista-first list) (remove-todos (lista-rest list) x))]
    )
  )
