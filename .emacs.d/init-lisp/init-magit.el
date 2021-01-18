;;; init-magit.el ---                                -*- lexical-binding: t; -*-

(use-package magit
  :bind ("C-x g" . magit-status)
  :hook
  (after-save . magit-after-save-refresh-status)
  (magit-mode . hl-line-mode)
  :config
  (remove-hook 'server-switch-hook 'magit-commit-diff)
  (add-to-list 'magit-no-confirm 'stage-all-changes)
  :custom
  (global-magit-file-mode t)
  (magit-branch-read-upstream-first 'fallback)
  (magit-commit-ask-to-stage nil)
  (magit-stage-all-confirm nil)
  (magit-save-repository-buffers 'dontask)
  (magit-diff-refine-hunk t)
  (magit-git-executable "/usr/bin/git"))

(use-package magit-todos
  :hook (magit-mode . magit-todos-mode))

(use-package diff-hl
  :config (global-diff-hl-mode)
  :hook (magit-post-refresh . diff-hl-magit-post-refresh))

(provide 'init-magit)
;;; init-magit.el ends here
