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

(use-package wrap-region
  :hook (prog-mode . wrap-region-mode)
  :diminish
  :config (wrap-region-add-wrappers
           '(("`" "`" nil '(js2-mode js2-jsx-mode rjsx-mode markdown-mode))
             ("/* " " */" "*" '(js2-mode js2-jsx-mode rjsx-mode))
             ("/" "/" nil '(js2-mode javascript-mode js2-jsx-mode rjsx-mode)))))

(use-package duplicate-thing
  :bind ("C-c u" . duplicate-thing))

(use-package syntactic-close
  :bind ("C-}" . syntactic-close)
  :custom (syntactic-close-unary-delimiter-chars '(?` ?\" ?')))

(use-package move-text
  :config (move-text-default-bindings))

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

(use-package elec-pair
  :ensure nil
  :config (electric-pair-mode 1))

(use-package sudo-edit
  :bind (:map ctl-x-map
              ("M-s" . sudo-edit)))


(provide 'init-editing)
;;; init-editing.el ends here
