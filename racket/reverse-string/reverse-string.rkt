#lang racket
(provide my-reverse)

(define (my-reverse s)
  (if (equal? s "") "" (string-append
						 (my-reverse (substring s 1))
						 (substring s 0 1))
	)
  )
