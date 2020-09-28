;;; init-programming.el ---                         -*- lexical-binding: t; -*-

(use-package json-mode
  :config (add-hook 'json-mode-hook (lambda () (setq-local js-indent-level 2))))

;; miscellaneous modes for programming, no configuration
(use-package arduino-mode)
(use-package docker-compose-mode)
(use-package dockerfile-mode)
(use-package elm-mode)
(use-package gitconfig-mode)
(use-package gitignore-mode)
(use-package glsl-mode)
(use-package jade-mode)
(use-package markdown-mode)
(use-package nasm-mode)
(use-package python)
(use-package pip-requirements)
(use-package toml-mode)
(use-package yaml-mode)

(provide 'init-programming)
;;; init-programming.el ends here
