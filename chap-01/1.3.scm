;;; Define a procedure that takes three numbers as arguments and returns the
;;; sum of the squares of the two larger numbers.

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-square-larger x y z)
  (cond
   ((and (> x y) (> x z)) (if (> y z)
			      (sum-of-squares x y)
			      (sum-of-squares x z)))
   ((> y z) (if (> x z)
		(sum-of-squares y x)
		(sum-of-squares y z)))
   (else (if (> x y)
	     (sum-of-squares z x)
	     (sum-of-squares z y)))))

;;; (sum-square-larger 8 9 10)
;;; => 181



	 