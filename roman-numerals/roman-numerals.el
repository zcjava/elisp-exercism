;;; roman-numerals.el --- roman-numerals Exercise (exercism)

;;; Commentary:

;;; Code:
(cdr (car (list (cons 'a 'b) (cons 'c 'd))))
(pop (cons '(c) '(d)))


(defun compress-num-to-romainlist (num &optional lst)
  (let ((len (length (int-to-string num))))
    (cond ((= len 4) (setq lst (append  lst (list 'M  (/ num 1000)))
                           num (% num 1000)))
          ((= len 3) (setq lst (append  lst (list 'C  (/ num 100)))
                           num (% num 100)))
          ((= len 2) (setq lst (append  lst (list 'X  (/ num 10)))
                           num (% num 10)))
          ((= len 1) (setq lst (append  lst (list 'I  (/ num 1)))))
          )
    (message "len %d lst %s" len lst)
    (if (> len 1)
        (compress-num-to-romainlist num lst)
      (nthcdr 0 lst)
      )
    )
  )


(compress-num-to-romainlist 1121)

(defun to-romain (num)
  )


(provide 'roman-numerals)
;;; roman-numerals.el ends here
