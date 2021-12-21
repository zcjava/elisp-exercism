
(defun getexpts (score &optional elist)
  (if (= 0 score)
      nil
    (let ((enum (log score 2)))
      (setq elist (append elist (list (truncate enum))))
      (if (or (= enum 0) (= enum (truncate enum)))
          elist
        (getexpts (- score (expt 2 (truncate enum))) elist)
        )
      )
    )
  )

(defconst allergen-alist '((0 . "eggs") (1 . "peanuts") (2 . "shellfish") (3 . "strawberries") (4 . "tomatoes") (5 . "chocolate") (6 . "pollen") (7 . "cats")))

(defun allergen-list (score)
  (let ((result-list nil))
    (dolist (i (getexpts score))
      (if (assoc i allergen-alist)
          (setq result-list (append  (list (cdr (assoc i allergen-alist))) result-list))
        )
      )
    result-list
    )
  )

(defun allergic-to-p (score allergic-name)
  (member allergic-name (allergen-list score))
  )

(provide 'allergies)
