(use-package company
  :init
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  (setq company-backends (delete 'company-semantic company-backends))
  )

(provide 'init-company)

;; .dir-locals.el
;; ((nil . ((company-clang-arguments . ("-I/home/<user>/project_root/include1/"
;;                                      "-I/home/<user>/project_root/include2/")))))
