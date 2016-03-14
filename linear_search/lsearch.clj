(defn find-pos [n lst]
  ((fn [n lst cnt]
    (cond
      (empty? lst) -1
      (= (first lst) n) cnt
      :else (recur n (rest lst) (inc cnt)))) n lst 0))

(assert (= (find-pos 1 '(1 7 2 20 0)) 0))
(assert (= (find-pos 20 '(1 7 2 20 0)) 3))
(assert (= (find-pos 0 '(1 7 2 20 0)) 4))
(assert (= (find-pos -1 '(1 7 2 20 0)) -1))
