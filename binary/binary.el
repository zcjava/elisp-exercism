(defun to-decimal (bstring)
  (if (string-match "[^0-1]" bstring)
      0
    (let ((i -1))
      (apply #'+
             (mapcar #'(lambda (x)
                         (setq i (+ i 1))
                         (* (string-to-number (string x)) (expt 2 i))
                         )
                     (string-to-list (reverse bstring))
                     )
             )
      )
    )
  )

(provide 'binary)
