;;; hamming.el --- Hamming (exercism)

;;; Commentary:

;;; Code:


(defun hamming-distance (str1 str2)
  (or (= (length str1) (length str2)) (error "Not the same length"))
  (length (remove t (cl-mapcar #'equal (string-to-list str1) (string-to-list str2))))
  )

(provide 'hamming)
;;; hamming.el ends here
