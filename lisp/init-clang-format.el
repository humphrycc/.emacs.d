(require 'clang-format)

(setq clang-format-fallback-style "google")

;; (defun clang-format-save-hook-for-this-buffer ()
;;   "Create a buffer local save hook."
;;   (add-hook 'before-save-hook
;;             (lambda ()
;;               (progn
;;                 (when (locate-dominating-file "." ".clang-format")
;;                   (clang-format-buffer))
;;                 ;; Continue to save.
;;                 nil))
;;             nil
;;             ;; Buffer local hook.
;;             t))

;; (add-hook 'c++-mode-hook (lambda () (clang-format-save-hook-for-this-buffer)))
;; (add-hook 'c-mode-hook (lambda () (clang-format-save-hook-for-this-buffer)))

(provide 'init-clang-format)
