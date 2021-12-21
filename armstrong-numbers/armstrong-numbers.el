;;; armstrong-numbers.el --- armstrong-numbers Exercise (exercism)

;;; Commentary:

;;; Code:

(defun armstrong-p (num)
  (let ((numlist (string-to-list (int-to-string num))))

    (= num
       (apply #'+
              (mapcar #'(lambda (x) (expt (string-to-number (char-to-string x)) (length numlist))) numlist)
              )
       )
    )
  )

(provide 'armstrong-numbers)
;;; armstrong-numbers.el ends here
