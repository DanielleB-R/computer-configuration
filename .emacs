;; Global settings
(setq
 gc-cons-threshold 20000000
 create-lockfiles nil
 user-mail-address "danielle@brook-roberge.ca")
(setq-default indent-tabs-mode nil)

(put 'overwrite-mode 'disabled t)

(setq load-prefer-newer t)
(add-to-list 'load-path (expand-file-name "site-lisp" user-emacs-directory))
(add-to-list 'load-path (expand-file-name "init-lisp" user-emacs-directory))

;; Initialize packages
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package-ensure)
(setq use-package-always-ensure t)
(require 'use-package)
(use-package auto-package-update
  :config (auto-package-update-maybe))

(use-package diminish)
(use-package paradox
  :defer 1
  :config (paradox-enable))

(when (eq system-type 'darwin)
  (require 'init-mac))

;; Set up built-in features
(require 'init-fundamentals)

;; General editing modules
(require 'init-appearance)
(require 'init-company)
(require 'init-editing)
(require 'init-flycheck)
(require 'init-lsp)
(require 'init-navigation)
(require 'init-magit)
(require 'init-projectile)
(require 'init-spelling)

;; Specific languages/major modes
(require 'init-clojure)
(require 'init-erlang)
(require 'init-golang)
(require 'init-html)
(require 'init-javascript)
(require 'init-programming)
(require 'init-shell)

;; (use-package emojify
;;   :hook (after-init . global-emojify-mode)
;;   :custom (emojify-download-emoji t))

(use-package dired-du)

(use-package docker
  :bind ("C-c C-d" . docker))

(use-package org
  :bind ("C-c l" . org-store-link)
  :config (setq org-log-done t))

(use-package origami
  :bind (:map origami-mode-map
              ("C-c s" . origami-open-all-nodes)
              ("C-c C-s" . origami-show-only-node)
              ("C-S-S" . origami-recursively-toggle-node))
  :hook (prog-mode . origami-mode))

(use-package sqlformat
  :hook (sql-mode . sqlformat-on-save-mode))


(use-package kubernetes
  :commands (kubernetes-overview))

(use-package restclient
  :mode ("\\.http\\'" . restclient-mode)
  :bind (:map restclient-mode-map
              ("C-c C-f" . json-mode-beautify)))

;; packages with no further configuration
(use-package malyon)
(use-package nov)
(use-package threes)

;; Local lisp packages

(use-package frame-size
  :ensure nil
  :bind (("C-c f w" . double-frame-width)
         ("C-c f h" . double-frame-height)
         ("C-c f d" . double-frame-dimensions)
         ("C-c f r" . reset-standard-frame-size)))

;; I don't know why this has to be at the bottom...
(define-key shell-mode-map (kbd "SPC") 'comint-magic-space)
