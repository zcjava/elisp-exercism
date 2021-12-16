;;; roman-numerals.el --- roman-numerals Exercise (exercism)

;;; Commentary:

;;; Code:

(defun roman-rule (num digits-roman-symbol)
  (let* ((roman-symbol-strings "IVXLCDM") (symbol-index (string-match digits-roman-symbol roman-symbol-strings )))
    (cond ((< num 4) (make-string num (string-to-char digits-roman-symbol)))
          ((= num 4) (concat digits-roman-symbol (substring roman-symbol-strings (+ symbol-index 1) (+ symbol-index 2))))
          ((= num 5) (substring roman-symbol-strings (+ symbol-index 1) (+ symbol-index 2)))
          ((= num 9) (concat digits-roman-symbol (substring roman-symbol-strings (+ symbol-index 2) (+ symbol-index 3))))
          (t (concat (substring roman-symbol-strings (+ symbol-index 1) (+ symbol-index 2)) (make-string (- num 5) (string-to-char digits-roman-symbol))))
          )
    )
  )

(defun to-roman (num &optional roman-num)
  (let ( (len (length (int-to-string num))))
    (cond ((= len 4) (setq roman-num (roman-rule (/ num 1000) "M") num (% num 1000) ))
          ((= len 3) (setq roman-num (concat roman-num (roman-rule (/ num 100) "C")) num (% num 100)))
          ((= len 2) (setq roman-num (concat roman-num (roman-rule (/ num 10) "X")) num (% num 10)))
          ((= len 1) (setq roman-num (concat roman-num (roman-rule num "I"))))
          )
    (if (> len 1)
        (to-roman num roman-num)
      (concat roman-num nil)
      )
    )
  )

(provide 'roman-numerals)
;;; roman-numerals.el ends here
