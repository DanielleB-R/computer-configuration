;;; init-spelling.el ---                             -*- lexical-binding: t; -*-

(use-package ispell
  :ensure nil
  :custom
  (ispell-program-name "aspell")
  (ispell-extra-args '("--sug-mode=ultra" "--run-together" "--run-together-limit=4"))
  (ispell-really-aspell t))

(use-package flyspell
  :diminish flyspell-mode
  :bind (:map flyspell-mouse-map
              ([down-mouse-3] . flyspell-correct-word)
              ([mouse-3] . undefined))
  :bind (:map flyspell-mode-map
              ("C-." . nil))
  :hook ((prog-mode . flyspell-prog-mode)
         (text-mode . flyspell-mode)))

(provide 'init-spelling)
;;; init-spelling.el ends here
