#lang racket

(provide rebase)

(define (rebase list-digits in-base out-base)
  (if (empty? list-digits) 0 (+
							   (* (car list-digits)
								  (expt out-base (length list-digits)))
							   (rebase cdr(list-digits) in-base out-base))
	)
  )
