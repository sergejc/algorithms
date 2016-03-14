(defn bsearch-helper [xs x lBound hBound]
  (if (> lBound hBound) (count xs)
  (let [curIn (int (/ (+ lBound hBound) 2)) curVal (nth xs curIn)]
    (cond
      (= curVal x) curIn
      (> curVal x) (recur xs x lBound (- curIn 1))
      :else (recur xs x (+ curIn 1) hBound)
    ))))

(defn binary-search [xs x]
  (bsearch-helper xs x 0 (- (count xs) 1)))


(assert (= (binary-search '(1, 5, 6, 9, 12) 1) 0)
(assert (= (binary-search '(1, 5, 6, 9, 12) 12) 4)
(assert (= (binary-search '(1, 5, 6, 9, 12) 6) 2)
(assert (= (binary-search '(1, 5, 6, 9, 12) 7) 5)
