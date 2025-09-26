(= (map $f Nil) Nil)
(= (map $f (Cons $x $xs)) (Cons ($f $x) (map $f $xs)))
!(map double (Cons 1 (Cons 2 Nil)))


(= (filter $p Nil) Nil)
(= (filter $p (Cons $x $xs))
   (if ($p $x)
       (Cons $x (filter $p $xs))
       (filter $p $xs)))
!(filter even (Cons 1 (Cons 2 (Cons 3 Nil))))

(= (foldl $f $acc Nil) $acc)
(= (foldl $f $acc (Cons $x $xs)) (foldl $f ($f $acc $x) $xs))
!(foldl + 0 (Cons 1 (Cons 2 Nil)))

(= (foldr $f $acc Nil) $acc)
(= (foldr $f $acc (Cons $x $xs)) ($f $x (foldr $f $acc $xs)))
!(foldr - 0 (Cons 1 (Cons 2 Nil)))



(= (reverse Nil) Nil)
(= (reverse (Cons $x $xs)) (append (reverse $xs) (Cons $x Nil)))
!(reverse (Cons 1 (Cons 2 Nil)))


(= (sort Nil) Nil)
(= (sort (Cons $x $xs)) (insert $x (sort $xs)))
(= (insert $x Nil) (Cons $x Nil))
(= (insert $x (Cons $y $ys))
   (if (<= $x $y)
       (Cons $x (Cons $y $ys))
       (Cons $y (insert $x $ys))))
!(sort (Cons 3 (Cons 1 (Cons 2 Nil))))