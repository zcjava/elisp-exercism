(defun divisible-by-num (year num)
  (= 0 (mod year num))
  )

;;(divisible-by-num 2000 4)
;;(divisible-by-num 2001 4)

(defun leap-year-p (year)
  (and (divisible-by-num year 4)
       (or (not (divisible-by-num year 100))
           (divisible-by-num year 400))
       )
  )

(provide 'leap)
