;;; raindrops.el --- Raindrops (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)



(defun convert (n)
  (let ((lst '()) (number 1))
    (dotimes (elt (floor (sqrt n)))
      (setq number (+ 1 elt))
      (if (= 0 (% n number))
          (progn
            (add-to-list 'lst number)
            (add-to-list 'lst (/ n number))
            )
        )
      )
    )
  )



(convert 11)






(provide 'raindrops)
;;; raindrops.el ends here
