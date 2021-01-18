;;; init-fundamentals.el ---                         -*- lexical-binding: t; -*-

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)

(prefer-coding-system 'utf-8)

(use-package autorevert
  :config (global-auto-revert-mode 1))

(use-package delsel
  :config (delete-selection-mode 1))

(use-package desktop
  :config (desktop-save-mode t))

(use-package ido
  :config (ido-mode 1))

(use-package eldoc
  :diminish)

(use-package emacs
  :config
  (scroll-bar-mode -1)
  (column-number-mode t)
  (tool-bar-mode -1)

  :hook ((before-save . delete-trailing-whitespace)
         (after-revert . font-lock-ensure)
         (text-mode . auto-fill-mode))

  :bind (("C-x M-r" . revert-buffer)
         ("C-z" . nil)
         ("M-Z" . zap-up-to-char)
         ("C-%" . replace-string)
         ("M-S-SPC" . just-one-space)
         (:map isearch-mode-map
               ([remap isearch-delete-char] . isearch-del-char)))

  :custom
  (backup-directory-alist
   `(("" . ,(expand-file-name "backup" user-emacs-directory))))
  (confirm-kill-emacs 'y-or-n-p)
  (require-final-newline t)
  (read-file-name-completion-ignore-case t)
  (uniquify-buffer-name-style 'post-forward))

(use-package ibuffer
  :bind ([remap list-buffers] . ibuffer))

(use-package paren
  :config (show-paren-mode t))

(use-package server
  :config (server-start))

(use-package winner
  :config (winner-mode 1))

(provide 'init-fundamentals)
;;; init-fundamentals.el ends here
