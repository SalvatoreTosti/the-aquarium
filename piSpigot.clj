;;pi spigot

(defn exp [x pow]
  (loop [acc 1 pow pow]
    (if (zero? pow) acc
      (recur (*' x acc) (dec pow)))))

;(defn fact [n]
;   ((fn rec-fact [n]
;      (if (= n 1) n
;         (* n (rec-fact (dec n)))))n))

(defn loop-fact [n]
  "recursively looping factorial calculator, capable of handling big-integer values."
  (loop [running 1 number n]
    (if (<= number 1) running
      (recur (*' running number) (dec number)))))

(defn pi-spigot [n]
  (reduce + (range 0 n)))


(defn pi-numerator [i]
  (let [part1 (exp (loop-fact i) 2)
        part2 (exp 2 (+ i 1))]
    (*' part1 part2)
   ))

(defn pi-denominator [i]
 (loop-fact (+ (* 2 i) 1)))

(defn pi-fraction [i]
  (/ (pi-numerator i) (pi-denominator i)))

(defn pi-wrapper [i]
  ;;(with-precision i (bigdec (reduce + (map #(pi-fraction %) (range 0 i))))))
  (map #(pi-fraction %) (range 0 i)))

;(= (pi-wrapper 50) (bigdec 3.1415926535897932384626433832795028841971693993751))
;(type (pi-wrapper 50))
(let [a (reduce + (map #(with-precision 100 (bigdec %)) (pi-wrapper 50)))]
  ( a))
;;(with-precision 50 (bigdec (reduce + (map #(pi-fraction %) (reverse (range 0 50))))))

;(map #(Double/parseInt %) 3.3)

(defn pi-gen-test [n]
  (let  [listA (vec (repeat n 1))]
    (loop []

      )
    ))

(quot )

(let [A (range 1 10)
      B (map #(+ 2 %)  (filter odd? (range 1 20)))
      Init (repeat 10 2)]
      ((fn rec-pi [A B Init carry remainders]
          (let[remainder (mod (last B) (+ carry (* 10 (last Init))))
               carry (quot (last B) (+ carry (* 10 (last Init))))
               ]
          ;(mod (last B) (+ carry (* 10 (last Init))))

            )
         )A B nil nil nil)
      )


;(pi-gen-test 3)

;(/  (- (* 2 1) 1))

;(/ (- 4 1) (- (* 2 4) 1))
