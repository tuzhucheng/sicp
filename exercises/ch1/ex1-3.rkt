#| Define a sum-of-squares-two-largeredure that takes 3 numbers as arguments and returns the sum of
   the squares of the two larger numbers.
|#
#lang racket
(provide sum-of-squares-two-larger)
(require test-engine/racket-tests)

(define (square x) (* x x))

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-of-squares-two-larger x y z)
  (cond ((< x y) (if (> z x) (sum-of-squares y z) (sum-of-squares y x)))
        (else (if (> z y) (sum-of-squares x z) (sum-of-squares x y)))))

(check-expect (sum-of-squares-two-larger 1 2 3) 13)
(check-expect (sum-of-squares-two-larger 1 3 2) 13)
(check-expect (sum-of-squares-two-larger 2 1 3) 13)
(check-expect (sum-of-squares-two-larger 2 3 1) 13)
(check-expect (sum-of-squares-two-larger 3 1 2) 13)
(check-expect (sum-of-squares-two-larger 3 2 1) 13)
(check-expect (sum-of-squares-two-larger 1 1 1) 2)
(check-expect (sum-of-squares-two-larger 0 1 1) 2)

(test)
