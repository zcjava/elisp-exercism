;;; word-count.el --- word-count Exercise (exercism)

;;; Commentary:

;;; Code:

(append '((c . d) (e . f)) (list (cons 'a 'b)))
(append (list 3 4) (list 3))
(defun word-count (words)
  (let ((wlist (split-string (downcase (replace-regexp-in-string "[^a-z1-9]" " " words)))) (wclist nil))
    (while wlist
      (if (assoc (car wlist) wclist)
          (setcdr (assoc (car wlist) wclist) (+ (cdr (assoc (car wlist) wclist)) 1))
        ;;        (map-put wclist (car wlist) 1)
        (setq wclist (append wclist (list(cons (car wlist) 1))))
        )
      (setq wlist (cdr wlist))
      )
    wclist
    )
  )
(provide 'word-count)
;;; word-count.el ends here
