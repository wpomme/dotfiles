;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

;; background-color
(load-theme 'deeper-blue t)

;; set number
(line-number-mode 0)
(column-number-mode t)

;; key setting
(setq mac-command-modifier 'super)
(global-set-key (kbd "C-h") 'delete-backward-char)

;; ignore beep alert
(setq ring-bell-function 'ignore)

;; file buffer
(setq make-backup-files nil)
(setq auto-save-default nil)
 
;; parenthesis
(show-paren-mode t)
(global-set-key (kbd "(") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "{") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "[") 'skeleton-pair-insert-maybe)
(global-set-key (kbd "\"") 'skeleton-pair-insert-maybe)
(setq skeleton-pair 1)

;; Gauche
(setq process-coding-system-alist
      (cons '("gosh" utf-8 . utf-8) process-coding-system-alist))
(setq scheme-program-name "/usr/local/bin/gosh -i")

(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)

(defun scheme-other-window ()
  "Run Gauche on other window"
  (interactive)
  (split-window-horizontally (/ (frame-width) 2))
  (let ((buf-name (buffer-name (current-buffer))))
    (scheme-mode)
    (switch-to-buffer-other-window
     (get-buffer-create "*scheme*"))
    (run-scheme scheme-program-name)
    (switch-to-buffer-other-window
     (get-buffer-create buf-name))))

(define-key global-map
  "\C-cG" 'scheme-other-window)

;; slime
(load (expand-file-name "~/.roswell/helper.el"))
(setq slime-lisp-implementations
      `((ros ("ros" "run"))
        (sbcl ("/opt/local/bin/sbcl"))
        (abcl ("/opt/local/bin/abcl"))
        (clisp ("/opt/local/bin/clisp"))))
