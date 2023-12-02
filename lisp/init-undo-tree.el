(use-package undo-tree
  :init
  :config
  (setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))
  (global-undo-tree-mode)
  )

(provide 'init-undo-tree)
