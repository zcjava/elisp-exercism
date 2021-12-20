;;; acronym.el --- Acronym (exercism)

;;; Commentary:

;;; Code:

(require 'cl-lib)

(defun acronym (words)
  (let ((aword "") (wlist (split-string (replace-regexp-in-string "-" " " words))))
    (while wlist
      (setq aword (concat aword (upcase (substring (car wlist) 0 1)))
            wlist (cdr wlist)
            )
      )
    aword
    )
  )
(provide 'acronym)
;;; acronym.el ends here
