;;; init-navigation.el ---                           -*- lexical-binding: t; -*-

(use-package ace-window
  :bind ("M-o" . ace-window)
  :custom
  (aw-scope 'frame)
  (aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l)))

(use-package anzu
  :diminish anzu-mode
  :config (global-anzu-mode +1))

(use-package avy
  :bind (("C-'" . avy-goto-char)
         ("C-\"" . avy-goto-char-2))
  :custom
  (avy-all-windows nil))

(use-package goto-line-preview
  :bind (("M-g g" . goto-line-preview)
         ("M-g M-g" . goto-line-preview)))

(use-package smex
  :bind (("M-x" . smex) ("M-X" . smex-major-mode-commands))
  :config (smex-initialize))

(use-package expand-region
  :bind ("C-=" . er/expand-region))

(use-package deadgrep
  :bind ("C-c g" . deadgrep))

(use-package jump-char
  :bind (("C-s-f" . jump-char-forward)
         ("C-s-b" . jump-char-backward)))

(use-package imenu-anywhere
  :bind ("C-M-m" . ido-imenu-anywhere))

(use-package idomenu
  :bind ("C-." . idomenu))

(use-package mark-ring
  :ensure nil
  :bind
  ("C-`" . push-mark-no-activate)
  ("M-`" . jump-to-mark))

(use-package eyebrowse
  :config (eyebrowse-mode t))

(use-package nameframe
  :after (eyebrowse)
  :bind ("C-x f" . nameframe-switch-frame))

(use-package nameframe-eyebrowse
  :ensure nil
  :config (nameframe-eyebrowse-mode t))


(provide 'init-navigation)
;;; init-navigation.el ends here
