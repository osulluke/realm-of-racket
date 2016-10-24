#lang racket
(define (square n)
  (* n n))

;;It's comletely legal in racket to interchange (, [, and {...cool.
;;Helps to make different pieces of code stand out.
{define (cube n)
  [* n n n]}

{cube 4}
[cube 9]

#|
Block comments...ahh, finally. Was glad to see they have this mechanism, too.
Makes programming in line, much easier.
|#

(define (myfun)
  #;(print {square 4})
  #;(print {cube 4})
  #;(print [+ 8 8])
  (print '(this is pretty cool, the "#;" character disables the next parenthetical!))
  )

(myfun)

empty
(list)
'()
(cons 1 2)
(define dinner
  (cons 'chicken '()))
(cons 'beef dinner)
dinner

#|
Ok, it looks like 'consing' something to a list doesn't change the original list.
Hmm, there is likely another way.
|#