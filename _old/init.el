;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)
;; (setq package-archives
;;       '(("gnu" . "http://elpa.gnu.org/packages/")
;;         ("melpa" . "http://melpa.org/packages/")
;;         ("org" . "http://orgmode.org/elpa/")))

;; background-color
(load-theme 'manoj-dark t)

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
;; M1 対応のためgoshのパスを変更
(setq process-coding-system-alist
      (cons '("gosh" utf-8 . utf-8) process-coding-system-alist))
(setq scheme-program-name "/opt/homebrew/bin/gosh -i")

(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)

(defun scheme-other-window ()
  "Run Gauche on other window"
  (interactive)
  (switch-to-buffer-other-window
   (get-buffer-create "*scheme*"))
  (run-scheme scheme-program-name))

(define-key global-map
  "\C-cs" 'scheme-other-window)

;; slime
;; (load (expand-file-name "~/.roswell/helper.el"))
;; (setq slime-lisp-implementations
;;       `((ros ("ros" "run"))
;;         (sbcl ("/opt/local/bin/sbcl"))
;;         (abcl ("/opt/local/bin/abcl"))
;;         (clisp ("/opt/local/bin/clisp"))))
;; (custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
;;  '(package-selected-packages (quote (## zen-mode))))
;; (custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
;; )
