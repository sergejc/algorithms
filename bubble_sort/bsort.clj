(defn helper [len *xs*]
  (doseq [outer (range len -1 -1)]
    (doseq [inner (range 0 outer)]
      (let [k1 inner, k2 (+ k1 1), el1 (get @*xs* k1), el2 (get @*xs* k2)]
        (if (> el1 el2)
          (dosync (alter *xs* assoc k1 el2) (alter *xs* assoc k2 el1))
      )))) @*xs*)

(defn bubble-sort [xs]
  (helper (- (count xs) 1) (ref xs)))
