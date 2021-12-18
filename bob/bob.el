;;; bob.el --- Bob exercise (exercism)

;;; Commentary:

;;; Code:

(defun match-uppercase (str)
  (if (string-match-p "[a-z]" str)
      (let ((case-fold-search nil))
        (not (string-match-p "[a-z]" str))
        )
    nil)
  )

(defun response-for (str)
  (setq str (replace-regexp-in-string "[\s\t\r\n]" "" str))
  (cond ((equal str "") "Fine. Be that way!")
        ((equal "?" (substring str (- (length str) 1)))(if (match-uppercase str) "Calm down, I know what I'm doing!" "Sure."  ))
        ((match-uppercase str) "Whoa, chill out!")
        (t "Whatever.")
        )
  )

(provide 'bob)
;;; bob.el ends here
