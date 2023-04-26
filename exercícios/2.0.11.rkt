;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname 2.0.11) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; define quadrado
(define (quadrado a)
  (* a a))

;; define maior
(define (maior a b c)
  (cond
    [(>= a b c) a]
    [(>= b a c) b]
    [(>= c b ) c]
  ))

;; define 2maior
(define (2maior a b c)
  (cond
    [ (and(>= a b)(<= a c)) a]
    [ (and(>= a c)(<= a b)) a]
    
    [ (and(>= b a)(<= b c)) b]
    [ (and(>= b c)(<= b a)) c]

    [ (and(>= c a)(<= c b)) c]
    [ (and(>= c b)(<= c a)) c]
    ))



;; <-------------------------------------------------------------->
;; define encontra_maior
(define (encontra_maior x y )
  ( if ( >= x y)
       x
       y)
  )


;; define dist_origem
(define (dist_origem Xa Ya)
  (sqrt (+ (quadrado(- Xa 0 )) (quadrado(- Ya 0 ))))
  )


;; define soma_quadrado
(define (soma_quadrado x y z)
  (+ (quadrado(maior x y z)) (quadrado(2maior x y z))
     )
  )


;; define tipo_triangulo
(define (tipo_triangulo x y z)
  (cond
    [(= x y z)"equilátero"]
    
    [(and(= x z) (not(= x y))) "isósceles"]
    [(and(= x y) (not(= x z))) "isósceles"]
    
    [(and(= y x) (not(= y z))) "isósceles"]
    [(and(= y z) (not(= y x))) "isósceles"]

    [(and(= z x) (not(= z y))) "isósceles"]
    [(and(= z y) (not(= z x))) "isósceles"]
    
    [else "escaleno"]
    )
  )


;; define imc
(define (imc x)
  (cond
   [(and(>= x 25) (<= x 29.9)) "sobrepeso"]
   [(and(>= x 30) (<= x 34.9)) "obesidade grau II"]
   [(and(>= x 35) (<= x 39.9)) "obesidade grau III"]
   [(>= x 40) "obesidade grau IV"]
   )
  )


;; testes do exercício
(encontra_maior 234 213)
(encontra_maior 111 546)

(dist_origem 5 9)
(dist_origem 12 3)

(soma_quadrado 4 6 3)
(soma_quadrado 9 21 2)

(tipo_triangulo 5 2 3)
(tipo_triangulo 5 2 2)

(imc 45)
(imc 122)