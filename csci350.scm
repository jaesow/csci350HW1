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
   (display (su m-up-numbers-simple '())) ;check
   (newline)
   (display (sum-up-numbers-simple '(100 200))) ;
   (newline)
   (display (sum-up-numbers-simple '(a b c))) ;
   (newline)
   (display (sum-up-numbers-simple '(100 a))) ;
   (newline)
   (display (sum-up-numbers-simple '(a 100))) ;check
   (newline)
   (display (sum-up-numbers-simple '(a b c))) ;
   (newline)
   (display (sum-up-numbers-simple '(100 a))) ;
   (newline)
   (display (sum-up-numbers-simple '(a 100))) ;check
   (newline)
   (display (sum-up-numbers-simple  '(100 (200)))) ;check
   (newline)
   (display (sum-up-numbers-simple '(a 100 b (200) c 300 d))) ;check
  
  
  ;3. Write a function (sum-up-numbers-general L). L is a list, which may contain as elements numbers and non-numbers. The result of the function is the sum of all the numbers (including those in nested lists) in L. If there are no such numbers, the result is zero.

  (define (sum-up-numbers-general L)
  (cond
    ((null? L) 0)
    ((list? (car L)) (+ (sum-up-numbers-general (car L))
                        (sum-up-numbers-general (cdr L))))
   ((not(number? (car L))) (sum-up-numbers-general (cdr L)))
    (else (+ (car L) (sum-up-numbers-general (cdr L))))
  )
)
  
  ;Test cases
  (display (sum-up-numbers-general '())) ;check
  (newline)
  (display (sum-up-numbers-general '(100))) ;check
  (newline)
  (display (sum-up-numbers-general '(100 200))) ;check
  (newline)
  (display (sum-up-numbers-general '(a))) ;check
  (newline)
  (display (sum-up-numbers-general '(a 100 b 200 c 300 d))) ;check
  (newline)
  (display (sum-up-numbers-general '(()))) ;check
  (newline)
  (display (sum-up-numbers-general '((100)))) ;check
  (newline)
  (display (sum-up-numbers-general  '(100 (200))))  ;check
  (newline)
  (display (sum-up-numbers-general '(a 100 b (200) c 300 d))) ;check
  (newline)
  (display (sum-up-numbers-general '(a 100 ((b ((200) c)) 300 d)))) ;check
   
  ;4. Write a function (min-above-min L1 L2). L1 and L2 are both simple lists, which do not contain nested lists. Both lists may have non-numeric elements. The result of the function is the minimum of the numbers in L1 that are larger than the smallest number in L2. If there is no number in L2, all the numbers in L1 should be used to calculate the minimum. If  there is no number in L1 larger than the smallest number in L2, the result is false (#F). For example, the result of (min-above-min '(2 a 1 3) '(b 5 3 1)) should be 2.
