;;; init-projectile.el ---                           -*- lexical-binding: t; -*-

(use-package projectile
  :custom
  (projectile-project-search-path '("~/dev/" "~/coding/"))
  (projectile-mode-line-prefix " P")
  :config
  (projectile-mode +1)
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map)))

(provide 'init-projectile)
;;; init-projectile.el ends here
