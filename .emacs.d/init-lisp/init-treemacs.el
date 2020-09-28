;;; init-treemacs.el ---                             -*- lexical-binding: t; -*-

(use-package treemacs
  :bind ("C-c t" . treemacs)
  :config
  (treemacs-follow-mode)
  (treemacs-git-mode)
  (treemacs-filewatch-mode))

(use-package treemacs-projectile
  :after treemacs projectile)

(use-package treemacs-magit
  :after treemacs magit)

(use-package lsp-treemacs
  :after lsp treemacs
  :bind (:map lsp-mode-map
              ("C-c e" . lsp-treemacs-errors-list)))

(provide 'init-treemacs)
;;; init-treemacs.el ends here
