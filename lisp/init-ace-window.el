(use-package ace-window
  :init
  :config
  (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
  (global-set-key (kbd "C-x o") 'ace-window)
  )

(provide 'init-ace-window)
