;1. (25 pts) Write a function (reverse-general L). L is a list. The result of the function is the reversed version of L. Every single sub-list in L should be reversed as well.
(define (reverse-general L)
        (if (null? L)
            '()
            (if (list? (car L)) ;car = contents of address register holds the first value of the list
                (append (reverse-general (cdr L)) ;cdr = contents of data register holds next cons cell which has its own car and cdr 
           )
        )
)
  ;For example,
  ;the result of (reverse-general '(a b (c (d e)) f) should be (f ((e d) c) 
  ;Test Cases
  (display (reverse-general '())) ;check
  (newline)
  (display (reverse-general '(a b c))) ;check
  (newline)
  (display (reverse-general '(a b ()))) ;check
