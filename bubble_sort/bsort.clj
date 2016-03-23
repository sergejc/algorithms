; imperative
; xs = [2 1]
(defn helper [len *xs*]
  (doseq [outer (range len -1 -1)]
    (doseq [inner (range 0 outer)]
      (let [k1 inner, k2 (+ k1 1), el1 (get @*xs* k1), el2 (get @*xs* k2)]
        (if (> el1 el2)
          (dosync (alter *xs* assoc k1 el2) (alter *xs* assoc k2 el1))
      )))) @*xs*)

(defn bubble-sort [xs]
  (helper (- (count xs) 1) (ref xs)))



; functional
; xs = (2 1)
(defn bubble-sort'
  ([xs] (bubble-sort' xs (count xs)))
  ([xs l]
   (if (= l 0)
     xs
     (bubble-sort' (bsort xs) (- l 1)))))

(defn bsort [xs]
  (let [[x y & more] xs]
    (cond
      (nil? y) xs
      (> x y) (cons y (bsort (cons x more)))
      :else (cons x (bsort (cons y more))))))
