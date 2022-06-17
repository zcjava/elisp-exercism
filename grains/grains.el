;;; grains.el --- Grains exercise (exercism)

;;; Commentary:

;;; Code:

(defun square (num)
  (expt 2 (- num 1))
  )

(defun total ()
  (let ((tlist nil))
    (dotimes (i 64)
      (push  (square (+ i 1)) tlist)
      )
    (apply '+ tlist)
    )
  )

(provide 'grains)
;;; grains.el ends here
