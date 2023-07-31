;;; init-lsp.el ---                                  -*- lexical-binding: t; -*-

(use-package lsp-mode
  :hook ((js2-mode rust-mode typescript-mode go-mode sh-mode clojure-mode) . lsp-deferred)
  :hook ((go-mode typescript-mode) . lsp-headerline-breadcrumb-mode)
  :diminish lsp-mode
  :custom
  (lsp-prefer-flymake nil)
  (lsp-enable-snippet nil)
  (lsp-auto-guess-root t)

  (lsp-rust-clippy-preference "on"))

(setq read-process-output-max (* 1024 1024))

(use-package lsp-ui
  :after (lsp-mode flycheck)
  :hook (lsp-mode . lsp-ui-mode)
  :bind (:map lsp-ui-mode-map
              ([remap xref-find-definitions] . lsp-ui-peek-find-definitions)
              ([remap xref-find-references] . lsp-ui-peek-find-references))
  :custom
  (lsp-ui-doc-enable nil)
  (lsp-ui-flycheck-enable t)
  (lsp-ui-sideline-enable nil))
;; Do I need to do something for flycheck

(use-package lsp-origami
  :after (lsp-mode origami)
  :hook (origami-mode . lsp-origami-mode))

(use-package lsp-java
  :config (add-hook 'java-mode-hook 'lsp))

(provide 'init-lsp)
;;; init-lsp.el ends here
