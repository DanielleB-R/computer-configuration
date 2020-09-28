;;; init-projectile.el ---                           -*- lexical-binding: t; -*-

(use-package projectile
  :custom
  (projectile-project-search-path '("~/dev/"))
  (projectile-mode-line-prefix " Proj")
  :config
  (projectile-mode +1)
  (setq projectile-enable-caching t)
  :bind (:map projectile-mode-map
              ("C-c p" . projectile-command-map)))

(provide 'init-projectile)
;;; init-projectile.el ends here
