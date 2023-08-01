;;; init-programming.el ---                         -*- lexical-binding: t; -*-

(use-package json-mode
  :config (add-hook 'json-mode-hook (lambda () (setq-local js-indent-level 2))))

(use-package rust-mode
  :custom (rust-format-on-save t)
  :bind (:map rust-mode-map ([remap dabbrev-completion] . company-complete)))

(use-package slime
  :config (setq inferior-lisp-program "sbcl"))

;; miscellaneous modes for programming, no configuration
(use-package arduino-mode)
(use-package docker-compose-mode)
(use-package dockerfile-mode)
(use-package gitconfig-mode)
(use-package gitignore-mode)
(use-package glsl-mode)
(use-package graphql-mode)
(use-package groovy-mode)
(use-package haml-mode)
(use-package jade-mode)
(use-package markdown-mode)
(use-package nasm-mode)
(use-package nim-mode)
(use-package python)
(use-package pip-requirements)
(use-package racket-mode)
(use-package toml-mode)
(use-package yaml-mode)

(provide 'init-programming)
;;; init-programming.el ends here
