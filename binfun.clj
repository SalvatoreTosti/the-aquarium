;;Salvatore Tosti
;;Investigation into binary search modified with hi and low 'fence' values.
;;

(defn rand-val-gen [n hi]
  "generates a sequence of random numbers of length n, max of hi"
  (repeatedly n #(rand-int hi)))


(defn fence-gen [max-size fence-val]
  "generates blocks of numbers, to be used as 'hi' and 'low' buffers on ends of random values"
  (repeat (rand-int max-size) fence-val))




(sort (rand-val-gen 50 6000))

(fence-gen 33 6000)

 (defn build-random-fence-list [max-fence-size]
   ( '(1 1 1) '(A B C)))

 (build-random-fence-list 3)




;; other goofing around
(reduce + (map * '(1 2 3 4 5) '(5 4 3 2 1)))
(* (reduce + '(1 2 3 4 5)) (reduce + '(5 4 3 2 1)))

(defn multiply-then-sum [coll1 coll2]
  (reduce + (map * coll1 coll2)))

(defn sum-then-multiply [coll1 coll2]
  (* (reduce + coll1) (reduce + coll2)))

(multiply-then-sum '(1 2 3 4 5) '(5 4 3 2 1))
(sum-then-multiply '(1 2 3 4 5) '(5 4 3 2 1))


(let [L1 (rand-val-gen 20 100)
      L2 (rand-val-gen 20 100)]
  (= (multiply-then-sum L1 L2)(sum-then-multiply L1 L2)))
