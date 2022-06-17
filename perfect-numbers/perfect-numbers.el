;;; perfect-numbers.el --- perfect-numbers Exercise (exercism)

;;; Commentary:

;;; Code:

(defun classify (number)
  "Do something with NUMBER here."
  (if (< number 1)
      (error "Classification is only possible for natural numbers")
    )

  (setq tlist nil)
  (dolist (elt (number-sequence 1 (floor (sqrt number))))
    (if (= 0 (% number elt))
        (progn
          (add-to-list 'tlist elt)
          (add-to-list 'tlist (/ number elt))
          )
      )
    )
  (setq tlist (delete number tlist))
  (setq total (apply '+ tlist))
  (cond ((= total number) 'perfect)
        ((> total number) 'abundant)
        ((< total number) 'deficient)
        )
  )

(provide 'perfect-numbers)
;;; perfect-numbers.el ends here
