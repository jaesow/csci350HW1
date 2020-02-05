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
  (newline)
  (display (reverse-general '((a b c)))) ;check
  (newline)
  (display (reverse-general '((a b c) (d e f)))) ;check
  (newline)
  (display (reverse-general '((a (b c) ((d e) f) g)))) ;check
  (newline)
  (display (reverse-general '((1 (2 3) (4 (a (b (c d)))))))) ;check
  
  ;2. Write a function (sum-up-numbers-simple L). L is a list, which may contain as elements numbers and non-numbers. The result of the function is the sum of the numbers not in nested lists in L. If there are no such numbers, the result is zero
   
  (define (sum-up-numbers-simple L)
    (cond
     ((null? L) 0)
     ((list? (car L)) (+ (sum-up-numbers-simple (cdr L))))
     ((not(number? (car L))) (sum-up-numbers-simple (cdr L)))
     (else (+ (car L) (sum-up-numbers-simple (cdr L))))
  )
)
  
 ;Test cases
(display (sum-up-numbers-simple '())) ;check
(newline)
(display (sum-up-numbers-simple '(100 200))) ;
(newline)
  
  ;3. Write a function (sum-up-numbers-general L). L is a list, which may contain as elements numbers and non-numbers. The result of the function is the sum of all the numbers (including those in nested lists) in L. If there are no such numbers, the result is zero.

   
