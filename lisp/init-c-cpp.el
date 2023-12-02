(require 'cc-mode)

(setq-default c-basic-offset 4)

(add-hook 'c-mode-hook #'lsp)
(add-hook 'c++-mode-hook #'lsp)

(define-key c-mode-map    [(f12)] 'clang-format-buffer)
(define-key c++-mode-map  [(f12)] 'clang-format-buffer)

(define-key c-mode-map    "\M-/" 'company-complete)
(define-key c++-mode-map  "\M-/" 'company-complete)

(provide 'init-c-cpp)
