;;; init-appearance.el ---                           -*- lexical-binding: t; -*-

(use-package smart-mode-line-powerline-theme)
(use-package smart-mode-line
  :config
  (setq sml/no-confirm-load-theme t)
  (setq sml/theme 'light-powerline)
  (sml/setup))

(use-package rainbow-delimiters
  :diminish
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package volatile-highlights
  :diminish
  :config (volatile-highlights-mode t))

(provide 'init-appearance)
;;; init-appearance.el ends here
