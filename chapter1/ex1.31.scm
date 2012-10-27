a)
Product of function:

(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

factorial function is given by:

(define (inc n) (+ n 1))

(define (factorial n)
  (define (identity n) n)
  (product identity 1 inc n))

approximation tp pi function:


(define (approximate-pi n)
  (define (numerator n)
    (if (even? n)
        (+ n 2)
        (+ n 3)))
  (define (denominator n)
    (if (even? n)
        (+ n 3)
        (+ n 2)))
  (* (/ (product numerator 0 inc (- n 1))
        (product denominator 0 inc (- n 1)))
     4))



b)

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))
