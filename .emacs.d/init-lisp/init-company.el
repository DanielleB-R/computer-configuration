;;; init-company.el ---                              -*- lexical-binding: t; -*-

(use-package company
  :diminish
  :pin melpa-stable
  :hook (after-init . global-company-mode)
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.25))

;; (use-package company-emoji
;;   :after company
;;   :config
;;   (push 'company-emoji company-backends))

;; (use-package company-lsp
;;   :after (company lsp-mode company-emoji)
;;   :custom
;;   (company-lsp-enable-snippet nil)
;;   (company-lsp-cache-candidates nil)
;;   (company-lsp-async t)
;;   :config
;;   (push 'company-lsp company-backends))

(provide 'init-company)
;;; init-company.el ends here
