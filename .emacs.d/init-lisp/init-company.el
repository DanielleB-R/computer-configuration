;;; init-company.el ---                              -*- lexical-binding: t; -*-

(use-package company
  :diminish
  :pin melpa-stable
  :hook (after-init . global-company-mode)
  :custom
  (company-minimum-prefix-length 1)
  (company-idle-delay 0.25))

(provide 'init-company)
;;; init-company.el ends here
