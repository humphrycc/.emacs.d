(use-package lsp-mode)

;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
(setq lsp-keymap-prefix "C-c l")

(setq lsp-prefer-flymake nil)

(add-hook 'lsp-mode 'lsp-enable-which-key-integration)

(setq read-process-output-max (* 1024 1024))

;; (require 'lsp-lens)
;; (require 'lsp-modeline)
;; (require 'lsp-headerline)

(use-package lsp-treemacs)

(lsp-treemacs-sync-mode 1)

(provide 'init-lsp)

;; some very good and useful guide
;; https://emacs-lsp.github.io/lsp-mode/tutorials/how-to-turn-off/
;; https://emacs-lsp.github.io/lsp-mode/tutorials/CPP-guide/
