(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-directory-alist `(("" \, (expand-file-name "backup" user-emacs-directory))) nil nil "Customized with use-package emacs")
 '(column-number-mode t)
 '(company-lsp-async t)
 '(company-lsp-cache-candidates nil)
 '(company-lsp-enable-snippet nil)
 '(confirm-kill-emacs 'y-or-n-p nil nil "Customized with use-package emacs")
 '(custom-safe-themes
   '("4320a92406c5015e8cba1e581a88f058765f7400cf5d885a3aa9b7b9fc448fa7" default))
 '(default-frame-alist
   '((tool-bar-lines . 0)
     (menu-bar-lines . 1)
     (foreground-color . "Black")
     (background-color . "White")
     (cursor-type . box)
     (cursor-color . "Red")
     (internal-border-width . 0)
     (fringe)))
 '(emojify-download-emoji t t)
 '(enable-recursive-minibuffers t)
 '(fringe-mode nil nil (fringe))
 '(indicate-buffer-boundaries t)
 '(kill-do-not-save-duplicates t)
 '(lsp-rust-racer-completion t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount '(1 ((shift) . 5) ((control))))
 '(ns-tool-bar-display-mode 'both t)
 '(ns-tool-bar-size-mode nil t)
 '(package-selected-packages
   '(flycheck-nim nim-mode reveal-in-osx-finder discover go-projectile flycheck-pos-tip idomenu imenu-everywhere jump-char threes malyon frame flycheck-rust gcmh dired-du toml-mode pip-requirements python-mode docker-compose-mode nameframe-projectile nameframe-projectile-mode go-autocomplete go-eldoc auto-highlight-symbol misc smex duplicate-thing nasm-mode prettier-js wrap-region tern-auto-complete nvm magit-gh-pulls copy-as-format))
 '(read-file-name-completion-ignore-case t nil nil "Customized with use-package emacs")
 '(require-final-newline t nil nil "Customized with use-package emacs")
 '(rm-blacklist
   '(" wr" " hl-p" " AC" " Spc" " yas" " js2r" " Tern" " js-interaction" " Prettier" " guru" " (*)" " Fly" " Anzu" " VHl" " ElDoc"))
 '(rm-text-properties
   '(("\\` Ovwrt\\'" 'face 'font-lock-warning-face)
     ("\\` FlyC:" 'face 'font-lock-comment-face)))
 '(safe-local-variable-values '((js2-strict-trailing-comma-warning)))
 '(show-paren-mode t)
 '(smartparens-global-mode t)
 '(smartparens-global-strict-mode nil)
 '(sql-product 'postgres)
 '(sqlformat-command 'pgformatter)
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style 'post-forward nil (uniquify) "Customized with use-package emacs")
 '(use-package-enable-imenu-support t)
 '(use-package-verbose t)
 '(visual-line-mode nil t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 150 :width normal :foundry "nil" :family "Fantasque Sans Mono"))))
 '(autoface-default ((t (:inherit default))))
 '(completion-list-mode-default ((t (:inherit autoface-default))) t)
 '(js-mode-default ((t (:inherit prog-mode-default :height 120 :family "Monaco"))) t)
 '(js2-mode-default ((t (:inherit js-mode-default))) t)
 '(magit-popup-mode-default ((t (:inherit autoface-default))) t)
 '(magit-process-mode-default ((t (:inherit magit-mode-default))) t)
 '(magit-status-mode-default ((t (:inherit magit-mode-default))) t)
 '(minibuffer-inactive-mode-default ((t (:inherit autoface-default))) t)
 '(minibuffer-prompt ((t (:foreground "medium blue" :height 120 :family "Lucida Grande"))))
 '(mode-line ((t (:background "grey85" :foreground "black" :box (:line-width -1 :color "white") :height 120 :family "Lucida Grande"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "grey85" :foreground "grey20" :box (:line-width -2 :color "white") :slant normal))))
 '(org-mode-default ((t (:inherit autoface-default :stipple nil :strike-through nil :underline nil :slant normal :weight normal :height 120 :width normal :family "Monaco"))))
 '(sh-mode-default ((t (:inherit prog-mode-default))) t)
 '(text-mode-default ((t (:inherit autoface-default :stipple nil :strike-through nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Lucida Grande"))))
 '(yaml-mode-default ((t (:inherit default))) t))
