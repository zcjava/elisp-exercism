;;; trinary.el --- Trinary (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun trinary-to-decimal (s)
  (if (string-match "[^0-9]" s)
      0
    (let ((e (length s))
          (value 0))
      (dolist (elt (string-to-list s) value)
        (setq e (- e 1))
        (setq value (+ value (* (string-to-number (char-to-string elt)) (expt 3 e))))
        )
      ))
  )

(provide 'trinary)
;;; trinary.el ends here
