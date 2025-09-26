(= (length Nil) 0)
(= (length (Cons $x $xs)) (+ 1 (length $xs)))
!(length (Cons 1 (Cons 2 Nil)))

(= (is-member $elem Nil) #f)
(= (is-member $elem (Cons $x $xs))
   (if (== $elem $x)
       #t
       (is-member $elem $xs)))
!(is-member 2 (Cons 1 (Cons 2 Nil)))


(= (append Nil $ys) $ys)
(= (append (Cons $x $xs) $ys) (Cons $x (append $xs $ys)))
!(append (Cons 1 Nil) (Cons 2 Nil))

(= (max-value Nil) Nil)
(= (max-value (Cons $x Nil)) $x)
(= (max-value (Cons $x $xs))
   (let $max-rest (max-value $xs)
      (if (> $x $max-rest) $x $max-rest)))
!(max-value (Cons 1 (Cons 3 (Cons 2 Nil))))


(= (min-value Nil) Nil)
(= (min-value (Cons $x Nil)) $x)
(= (min-value (Cons $x $xs))
   (let $min-rest (min-value $xs)
      (if (< $x $min-rest) $x $min-rest)))
!(min-value (Cons 1 (Cons 3 (Cons 2 Nil))))

(= (push $elem $list) (Cons $elem $list))
!(push 0 (Cons 1 Nil))

(= (pop Nil) Nil)
(= (pop (Cons $x $xs)) $xs)
!(pop (Cons 1 (Cons 2 Nil)))


(= (remove-element $elem Nil) Nil)
(= (remove-element $elem (Cons $x $xs))
   (if (== $elem $x)
       $xs
       (Cons $x (remove-element $elem $xs))))
!(remove-element 2 (Cons 1 (Cons 2 (Cons 3 Nil))))



(= (remove-duplicate Nil) Nil)
(= (remove-duplicate (Cons $x $xs))
   (Cons $x (remove-duplicate (remove-all $x $xs))))
(= (remove-all $elem Nil) Nil)
(= (remove-all $elem (Cons $x $xs))
   (if (== $elem $x)
       (remove-all $elem $xs)
       (Cons $x (remove-all $elem $xs))))
!(remove-duplicate (Cons 1 (Cons 2 (Cons 1 Nil))))