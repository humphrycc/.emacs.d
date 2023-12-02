;;; -*- lexical-binding: t -*-

;; Delete the current file
(defun delete-this-file ()
  "Delete the current file, and kill the buffer."
  (interactive)
  (unless (buffer-file-name)
    (error "No file is currently being edited"))
  (when (yes-or-no-p (format "Really delete '%s'?"
                             (file-name-nondirectory buffer-file-name)))
    (delete-file (buffer-file-name))
    (kill-this-buffer)))


;; Rename the current file
(defun rename-this-file-and-buffer (new-name)
  "Renames both current buffer and file it's visiting to NEW-NAME."
  (interactive "sNew name: ")
  (let ((name (buffer-name))
        (filename (buffer-file-name)))
    (unless filename
      (error "Buffer '%s' is not visiting a file!" name))
    (progn
      (when (file-exists-p filename)
        (rename-file filename new-name 1))
      (set-visited-file-name new-name)
      (rename-buffer new-name))))

;; Save/load frame layout
(defun save-frame-to-register (register)
  "Save the current frame layout to a register."
  (interactive "Save frameset to register: ")
  (frameset-to-register register))

(global-set-key (kbd "C-c r") 'save-frame-to-register)
(global-set-key (kbd "C-c l") 'jump-to-register)

(provide 'init-customize-action)
