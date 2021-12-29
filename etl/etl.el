;;; etl.el --- etl Exercise (exercism)

;;; Commentary:

;;; Code:

(defun etl (h)
  (setq etlhash (make-hash-table))
  (maphash #'(lambda (key value)
               (if (< key 1) (error "error"))
               (mapcar #'(lambda (v)
                           (if (not (string-match-p "[a-z]" v)) (error "error"))
                           (puthash (downcase v) key etlhash)
                           ) value)
               ) h)
  etlhash
  )

(provide 'etl)
;;; etl.el ends here
