;1. (25 pts) Write a function (reverse-general L). L is a list. The result of the function is the reversed version of L. Every single sub-list in L should be reversed as well.
(define (reverse-general L)
        (if (null? L)
            '()
            (if (list? (car L)) ;car = contents of address register holds the first value of the list
