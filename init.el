;;; -*- lexical-binding: t -*-

(let ((minver "27.1"))
  (when (version< emacs-version minver)
    (error "Your Emacs is v%s, requires v%s or higher" emacs-version minver)))

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer

;; Adjust garbage collection thresholds during startup, and thereafter
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))


(setq custom-file (locate-user-emacs-file "custom.el"))
;; http://xahlee.info/emacs/emacs/emacs_set_backup_into_a_directory.html
(setq backup-directory-alist '(("" . "~/.emacs.d/backup")))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(require 'package)
;; (add-to-list 'package-archives '( "melpa" . "https://melpa.org/packages/") t)
;; (add-to-list 'package-archives '( "melpa-stable" . "https://stable.melpa.org/packages/") t)
(setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")
                         ("nongnu" . "https://mirrors.ustc.edu.cn/elpa/nongnu/")))

(setq package-enable-at-startup nil)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; load path
;;   - site-lisp: 3rd lib
;;   - lisp: setting
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;; (let ((default-directory "~/.emacs.d/site-lisp/"))
;;   (normal-top-level-add-subdirs-to-load-path))

(require 'init-appearance)
(require 'init-customize-action)
(require 'init-ace-window)
(require 'init-undo-tree)
(require 'init-helm)
(require 'init-lsp)
(require 'init-company)
(require 'init-clang-format)
(require 'init-magit)

;; Languages
(require 'init-c-cpp)
(require 'init-cmake)
