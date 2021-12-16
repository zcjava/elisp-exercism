;;; rna-transcription.el -- RNA Transcription (exercism)

;;; Commentary:



;;; Code:
(defun to-rna (dna)
  (or (= 0 (length (replace-regexp-in-string "[GCTA]" "" dna))) (error "dna is incorrect"))
  (replace-regexp-in-string "z" "C" (replace-regexp-in-string "T" "A" (replace-regexp-in-string "A" "U" (replace-regexp-in-string "C" "G" (replace-regexp-in-string "G" "z" dna)))))
  )

(provide 'rna-transcription)
;;; rna-transcription.el ends here
