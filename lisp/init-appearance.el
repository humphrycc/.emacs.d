;;; -*- lexical-binding: t -*-

(menu-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-message t)
(column-number-mode t)
(global-display-line-numbers-mode)
(global-hl-line-mode)
(setq-default tab-width 4)
(electric-pair-mode)
(show-paren-mode 1)

;; show unncessary whitespace that can mess up your diff
(add-hook 'prog-mode-hook
          (lambda () (interactive)
            (setq show-trailing-whitespace 1)))

;; use space to indent by default
(setq-default indent-tabs-mode nil)

;; set appearance of a tab that is represented by 4 spaces
(setq-default tab-width 4)

(define-obsolete-function-alias 'after-load 'with-eval-after-load "")

;; theme
(use-package color-theme-sanityinc-tomorrow
  :config
  (load-theme 'sanityinc-tomorrow-bright t)
)

(provide 'init-appearance)
