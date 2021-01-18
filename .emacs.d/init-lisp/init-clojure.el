;;; init-clojure.el --- Settings and packages for Clojure development  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package clojure-mode)
(use-package cider)

;; Compojure indentation
(define-clojure-indent
  (defroutes 'defun)
  (GET 2)
  (POST 2)
  (PUT 2)
  (DELETE 2)
  (HEAD 2)
  (ANY 2)
  (OPTIONS 2)
  (PATCH 2)
  (rfn 2)
  (let-routes 1)
  (context 2))

(provide 'init-clojure)
;;; init-clojure.el ends here
