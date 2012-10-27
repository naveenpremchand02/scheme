Recursive process:



(define (f-iterative n)
  (define (iter-f n count f1 f2 f3)
    (if (> count n)
        f1
        (iter-f n
                (+ count 1)
                (+ f1 (* 2 f2) (* 3 f3))
                f1
                f2)))
  (if (< n 3)
      n
      (iter-f n 3 2 1 0)))
