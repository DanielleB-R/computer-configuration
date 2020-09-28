;;; init-flycheck.el ---                             -*- lexical-binding: t; -*-

(use-package flycheck
  :init (global-flycheck-mode)
  :custom
  (flycheck-check-syntax-automatically '(save))
  (flycheck-disabled-checkers '(javascript-jshint))
  (flycheck-display-errors-delay 40)
  (flycheck-global-modes '(not org-mode))
  (flycheck-python-pycompile-executable "/usr/local/bin/python3")
  (flycheck-markdown-mdl-executable "/usr/local/lib/ruby/gems/2.6.0/bin/mdl")
  :config
  (flycheck-add-next-checker 'markdown-mdl 'proselint))

(use-package flycheck-pos-tip
  :after flycheck
  :config (flycheck-pos-tip-mode))

;; This doesn't seem to work...
;; (use-package flycheck-color-mode-line
;;   :after flycheck
;;   :hook (flycheck-mode . flycheck-color-mode-line-mode))

(provide 'init-flycheck)
;;; init-flycheck.el ends here
