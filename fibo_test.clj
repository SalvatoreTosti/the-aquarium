;; Anything you type in here will be executed
;; immediately with the results shown on the
;; right.

(defn fibo []
  ((fn rfibo [a b]
     (cons a (lazy-seq (rfibo b (+ a b)))))
   0 1))

(take 10 (fibo))

(defn fibo-to-n [n]
     (take n (fibo)))

(defn fibo-less-than [num]
  (take-while #(< % num) (fibo)))

(defn fibo-less-test [num]

  0)


(take-while #(< % 10) (fibo))

(fibo-less-than 3)

;;(take-while #((< 4) (fibo)))
;;(fibo-to-n 10)
;;(fibo-less-than 40)
;;(fibo-less-test 5)
