#lang racket
;;This program will implement the binary search bigger/smaller game.
;;To play, type '(start n m)' where n and m are two integers.

(define (start n m)
  (set! lower (min n m))
  (set! upper (max n m))
  (guess))
(define lower 1)
(define upper 100)

(define (guess)
  (quotient (+ lower upper) 2))

(define (smaller)
  (set! upper (max lower (sub1 (guess))))
  (guess))

(define (bigger)
  (set! lower (min upper (add1 (guess))))
  (guess))