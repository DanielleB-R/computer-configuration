;;; init-javascript.el --- Settings and packages for Javascript development  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package js2-mode
  :mode "\\.js$"
  :custom
  (js-indent-level 2)
  (js2-bounce-indent-p nil)
  (js2-include-node-externs t)
  (js2-mode-assume-strict t)
  (js2-mode-indent-ignore-first-tab nil)
  (js2-mode-show-parse-errors nil)
  (js2-strict-missing-semi-warning nil)
  (js2-global-externs '("test" "expect" "jest" "describe" "beforeEach" "afterEach" "beforeAll" "afterAll" "setTimeout" "fetch" "Blob" "Response" "Request" "Headers" "it")))

(use-package rjsx-mode
  :mode "\\.jsx$")

(use-package xref-js2
  :config
  (define-key js2-mode-map (kbd "M-.") nil)
  (add-hook 'js2-mode-hook (lambda () (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t))))

(use-package typescript-mode
  :mode "\\.tsx\\'"
  :custom
  (typescript-indent-level 2))

(use-package tide
  :after (typescript-mode flycheck)
  :hook (typescript-mode . tide-setup))

(use-package prettier-js
  :hook ((js2-mode . prettier-js-mode)
         (typescript-mode . prettier-js-mode)))

(use-package add-node-modules-path
  :hook ((js2-mode typescript-mode) . add-node-modules-path))

(provide 'init-javascript)
;;; init-javascript.el ends here
