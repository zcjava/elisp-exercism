(defun compare-anagrams(str1 str2)

  (and
   (not (equal str1 str2))
   (= (length str1) (length str2))
   (equal (sort (string-to-list (downcase str1)) '<) (sort (string-to-list (downcase str2)) '<))
   ))

(compare-anagrams "banana" "banana")

(defun anagrams-for (str content)
  (let ((result nil))
    (while content
      (if (compare-anagrams str (car content))
          (setq result (append result (list (car content))))
        )
      (setq content (cdr content))
      )
    (append '() result)
    )
  )


(provide 'anagram)
