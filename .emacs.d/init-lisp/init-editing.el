;;; init-editing.el ---                              -*- lexical-binding: t; -*-

(use-package browse-kill-ring
  :bind ("C-M-y" . browse-kill-ring)
  :custom
  (browse-kill-ring-highlight-current-entry t))

(use-package copy-as-format
  :bind (("C-c w s" . copy-as-format-slack)
         ("C-c w g" . copy-as-format-github)
         ("C-c w j" . copy-as-format-jira)
         ("C-c w l" . copy-as-format-gitlab)))

(use-package hungry-delete
  :diminish
  :custom (hungry-delete-join-reluctantly t)
  :hook (prog-mode . hungry-delete-mode))

(use-package syntactic-close
  :bind ("C-]" . syntactic-close)
  :custom (syntactic-close-unary-delimiter-chars '(?` ?\" ?')))

(use-package move-text
  :config (move-text-default-bindings))

(use-package smartparens-config
  :ensure smartparens
  :config
  (show-smartparens-global-mode t)
  (smartparens-global-mode t)
  :bind (:map smartparens-mode-map
              ("C-M-f" . sp-forward-sexp)
              ("C-M-b" . sp-backward-sexp)
              ("C-M-d" . sp-down-sexp)
              ("C-M-a" . sp-backward-up-sexp)
              ("C-M-e" . sp-up-sexp)
              ("C-M-k" . sp-kill-sexp)
              ("C-M-w" . sp-copy-sexp)
              ("C-<backspace>" . sp-backward-unwrap-sexp)
              ("M-D" . sp-splice-sexp)
              ("C-<right>" . sp-forward-slurp-sexp)
              ("C-<left>" . sp-forward-barf-sexp)
              ("<backspace>" . sp-backward-delete-char)))

(use-package sudo-edit
  :bind (:map ctl-x-map
              ("M-s" . sudo-edit)))

(use-package tree-sitter
  :diminish)
(use-package tree-sitter-langs
  :after tree-sitter
  :hook ((typescript-mode rust-mode) . tree-sitter-mode)
  :hook ((typescript-mode rust-mode) . tree-sitter-hl-mode))

;; Local lisp packages

(use-package delete-word
  :ensure nil
  :bind
  ([remap kill-word] . delete-word)
  ([remap backward-kill-word] . backward-delete-word))

(use-package smart-open-line
  :ensure nil
  :bind (([remap open-line] . smart-open-line)
         ("C-S-o" . smart-open-line-above)))

(provide 'init-editing)
;;; init-editing.el ends here
