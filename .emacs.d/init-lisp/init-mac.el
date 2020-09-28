;;; init-mac.el --- Mac-specific configuration       -*- lexical-binding: t; -*-

(setq
 ns-command-modifier 'meta
 ns-alternate-modifier 'super)

(use-package exec-path-from-shell
  :config (exec-path-from-shell-initialize))

(provide 'init-mac)
;;; init-mac.el ends here
