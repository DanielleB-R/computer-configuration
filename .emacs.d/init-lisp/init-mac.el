;;; init-mac.el --- Mac-specific configuration       -*- lexical-binding: t; -*-

(setq
 ns-command-modifier 'meta
 ns-alternate-modifier 'super)

(use-package exec-path-from-shell
  :custom (exec-path-from-shell-arguments '("-l"))
  :config (exec-path-from-shell-initialize))

(set-fontset-font
 "fontset-default" 'unicode "Apple Color Emoji" nil 'prepend)
(set-fontset-font
 t 'symbol (font-spec :family "Apple Color Emoji") nil 'prepend)

(use-package reveal-in-osx-finder)

(provide 'init-mac)
;;; init-mac.el ends here
