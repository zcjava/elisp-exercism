;;; pangram.el --- Pangram (exercism)

;;; Commentary:

;;; Code:

(setq letters "abcdefghijklmnopqrstuvwxyz")
(defun is-pangram(pms)
  (catch 'break
    (dolist (elt (string-to-list letters))
      (message "%s %s" (string elt) (string-match (string elt) pms))
      (if (not (string-match (string elt) pms))
          (throw 'break nil)
        )
      )
    t
    )
  )

(provide 'pangram)
;;; pangram.el ends here
