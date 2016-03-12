(defn find_pos [n lst]
  ((fn [n lst cnt]
    (cond
      (empty? lst) -1
      (= (first lst) n) cnt
      :else (recur n (rest lst) (inc cnt)))) n lst 0))

(assert (= (find_pos 1 '(1 7 2 20 0)) 0))
(assert (= (find_pos 20 '(1 7 2 20 0)) 3))
(assert (= (find_pos 0 '(1 7 2 20 0)) 4))
(assert (= (find_pos -1 '(1 7 2 20 0)) -1))
