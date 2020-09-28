;;; delete-word.el ---                               -*- lexical-binding: t; -*-

;; Delete word rather than kill
(defun delete-word (arg)
  "Delete characters forward until encountering the end of a word."
  (interactive "p")
  (delete-region
   (point)
   (progn
     (forward-word arg)
     (point))))

(defun backward-delete-word (arg)
  "Delete characters backward until encountering the end of a word."
  (interactive "p")
  (delete-word (- arg)))

(provide 'delete-word)
;;; delete-word.el ends here
