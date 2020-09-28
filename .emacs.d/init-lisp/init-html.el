;;; init-html.el ---                                 -*- lexical-binding: t; -*-

(use-package sgml-mode
  :ensure nil
  :mode ("\\.html\\'" . html-mode)
  :custom
  (sgml-basic-offset 2)
  (sgml-attribute-offset 2))

(provide 'init-html)
;;; init-html.el ends here
