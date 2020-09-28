(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(avy-all-windows nil t)
 '(aw-keys (quote (97 115 100 102 103 104 106 107 108)) t)
 '(aw-scope (quote frame) t)
 '(backup-directory-alist (quote (("" . "/Users/danielle/.emacs.d/backup"))))
 '(browse-kill-ring-highlight-current-entry t t)
 '(company-lsp-async t)
 '(company-lsp-cache-candidates nil)
 '(company-lsp-enable-snippet nil)
 '(company-minimum-prefix-length 2)
 '(confirm-kill-emacs (quote y-or-n-p))
 '(default-frame-alist
    (quote
     ((tool-bar-lines . 0)
      (menu-bar-lines . 1)
      (foreground-color . "Black")
      (background-color . "White")
      (cursor-type . box)
      (cursor-color . "Red")
      (internal-border-width . 0)
      (fringe))))
 '(emojify-download-emoji t t)
 '(enable-recursive-minibuffers t)
 '(flycheck-check-syntax-automatically (quote (save)))
 '(flycheck-disabled-checkers (quote (javascript-jshint)))
 '(flycheck-display-errors-delay 40)
 '(flycheck-global-modes (quote (not org-mode)))
 '(flycheck-markdown-mdl-executable "/usr/local/lib/ruby/gems/2.6.0/bin/mdl")
 '(flycheck-python-pycompile-executable "/usr/local/bin/python3")
 '(fringe-mode nil nil (fringe))
 '(global-magit-file-mode t)
 '(gofmt-command "goimports")
 '(indicate-buffer-boundaries t)
 '(ispell-extra-args
   (quote
    ("--sug-mode=ultra" "--run-together" "--run-together-limit=4")))
 '(ispell-program-name "aspell")
 '(ispell-really-aspell t t)
 '(js-indent-level 2)
 '(js2-bounce-indent-p nil)
 '(js2-global-externs
   (quote
    ("test" "expect" "jest" "describe" "beforeEach" "afterEach" "beforeAll" "afterAll" "setTimeout" "fetch" "Blob" "Response" "Request" "Headers" "it")))
 '(js2-include-node-externs t)
 '(js2-mode-assume-strict t)
 '(js2-mode-indent-ignore-first-tab nil)
 '(js2-mode-show-parse-errors nil)
 '(js2-strict-missing-semi-warning nil)
 '(js2r-always-insert-parens-around-arrow-function-params t)
 '(js2r-prefered-quote-type 2)
 '(kill-do-not-save-duplicates t)
 '(lsp-auto-guess-root t)
 '(lsp-enable-snippet nil)
 '(lsp-prefer-flymake nil t)
 '(lsp-rust-clippy-preference "on")
 '(lsp-rust-racer-completion t)
 '(lsp-ui-doc-enable nil)
 '(lsp-ui-flycheck-enable t t)
 '(lsp-ui-sideline-enable nil)
 '(magit-branch-read-upstream-first (quote fallback))
 '(magit-commit-ask-to-stage nil)
 '(magit-diff-refine-hunk t)
 '(magit-save-repository-buffers (quote dontask))
 '(magit-stage-all-confirm nil t)
 '(mouse-wheel-progressive-speed nil)
 '(mouse-wheel-scroll-amount (quote (1 ((shift) . 5) ((control)))))
 '(ns-tool-bar-display-mode (quote both) t)
 '(ns-tool-bar-size-mode nil t)
 '(package-selected-packages
   (quote
    (idomenu imenu-anywhere imenu-everywhere jump-char threes malyon gitconfig-mode spinner tern flycheck-elm frame flycheck-rust gcmh dired-du toml-mode pip-requirements goto-line-preview python-mode docker-compose-mode nameframe-projectile nameframe-projectile-mode nameframe go-guru go-autocomplete go-eldoc auto-highlight-symbol misc move-text smex volatile-highlights duplicate-thing nasm-mode jade-mode gitignore-mode arduino-mode prettier-js wrap-region tern-auto-complete smart-mode-line-powerline-theme nvm magit-gh-pulls json-mode js2-refactor copy-as-format)))
 '(projectile-mode-line-prefix " Proj")
 '(projectile-project-search-path (quote ("~/dev/")))
 '(read-file-name-completion-ignore-case t)
 '(require-final-newline t)
 '(rm-blacklist
   (quote
    (" wr" " hl-p" " AC" " Spc" " yas" " js2r" " Tern" " js-interaction" " Prettier" " guru" " (*)" " Fly" " Anzu" " VHl" " ElDoc")))
 '(rm-text-properties
   (quote
    (("\\` Ovwrt\\'"
      (quote face)
      (quote font-lock-warning-face))
     ("\\` FlyC:"
      (quote face)
      (quote font-lock-comment-face)))))
 '(sgml-attribute-offset 2)
 '(sgml-basic-offset 2)
 '(sql-product (quote postgres))
 '(syntactic-close-unary-delimiter-chars (quote (96 34 39)) t)
 '(typescript-indent-level 2)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(use-package-enable-imenu-support t)
 '(use-package-verbose t)
 '(visual-line-mode nil t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Monaco"))))
 '(autoface-default ((t (:inherit default))))
 '(completion-list-mode-default ((t (:inherit autoface-default))) t)
 '(js-mode-default ((t (:inherit prog-mode-default :height 120 :family "Monaco"))) t)
 '(js2-mode-default ((t (:inherit js-mode-default))) t)
 '(magit-popup-mode-default ((t (:inherit autoface-default))) t)
 '(magit-process-mode-default ((t (:inherit magit-mode-default))) t)
 '(magit-status-mode-default ((t (:inherit magit-mode-default))) t)
 '(minibuffer-inactive-mode-default ((t (:inherit autoface-default))) t)
 '(minibuffer-prompt ((t (:foreground "medium blue" :family "Lucida Grande"))))
 '(mode-line ((t (:background "grey85" :foreground "black" :box (:line-width -1 :color "white") :family "Lucida Grande"))))
 '(mode-line-inactive ((t (:inherit mode-line :background "grey85" :foreground "grey20" :box (:line-width -2 :color "white") :slant normal))))
 '(org-mode-default ((t (:inherit autoface-default :stipple nil :strike-through nil :underline nil :slant normal :weight normal :height 120 :width normal :family "Monaco"))))
 '(sh-mode-default ((t (:inherit prog-mode-default))) t)
 '(text-mode-default ((t (:inherit autoface-default :stipple nil :strike-through nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Lucida Grande"))))
 '(yaml-mode-default ((t (:inherit default))) t))
