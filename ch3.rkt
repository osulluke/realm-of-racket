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

;;Ok, on to 'structures' within Racket - wow, introducing this stuff pretty quickly
;;nice...

(struct student (name id# dorm))
(define freshman1 (student 'Joe 1234 'NewHall))
(define freshman2 (student 'Luke 2345 'Phoenix))
(define freshman3 (student 'Lisa 3456 'Springfield))

;; Accessors are provided by the structure name and the field, as below:
(student-name freshman2)
(student-dorm freshman3)
(student-id# freshman1)
(define mimi (student 'Mimi 1234 'NewHall))
(define nicole (student 'Nicole 5678 'NewHall))
(define rose (student 'Rose 8765 'NewHall))
(define eric (student 'Eric 4321 'NewHall))
(define in-class (list mimi nicole rose eric freshman1 freshman2 freshman3))
(student-name (third in-class))
;in-class
(struct student-body (freshman sophomores juniors seniors) #:transparent)
(define all-students
  (student-body (list freshman1 freshman2 freshman3)
                (list mimi nicole)
                (list rose eric)
                (list empty)))
(student-name
 (second
  (student-body-freshman all-students)))

;if you want racket to respond with an entire list, you can add the #:transparent
;option in the structure definition. Then, when an example of the structure is called
;racket will respond with all the data, as opposed to just a short-hand for it.