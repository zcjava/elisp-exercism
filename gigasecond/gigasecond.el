;;; gigasecond.el --- Gigasecond exercise (exercism)

;;; Commentary:
;; Calculate the date one gigasecond (10^9 seconds) from the
;; given date.
;;
;; NB: Pay attention to  Emacs' handling of time zones and dst
;; in the encode-time and decode-time functions.

;;; Code:
(require 'seq)

(defun from (s m h d mon y)
  (let ((tm (encode-time s m h d mon y "UTC-8")))
    ;;    (seq-take (decode-time (+ (time-convert tm 'integer) (expt 10 9))) 6)
    (seq-take
     (decode-time (time-add tm (expt 10 9)) "UTC-8") 6)
    )
  )

(provide 'gigasecond)
;;; gigasecond.el ends here
