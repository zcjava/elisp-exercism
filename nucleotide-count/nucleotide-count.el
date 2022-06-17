;;; nucleotide-count.el --- nucleotide-count Exercise (exercism)

;;; Commentary:

;;; Code:

(defun nucleotide-count (dnas)
  (let ((dnalist (copy-alist '((?A . 0) (?C . 0) (?G . 0) (?T . 0)))))
    (dolist (elt (string-to-list dnas))
      (if (assoc elt dnalist)
          (setcdr (assoc elt dnalist) (1+ (cdr (assoc elt dnalist))))
        (error "error")
        )
      )
    dnalist
    )
  )

(provide 'nucleotide-count)
;;; nucleotide-count.el ends here
