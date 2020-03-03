;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-theme 'deeper-blue t)

;; key bind
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)

;; assign newline-and-indent C-m
(global-set-key (kdb "C-m") 'newline-and-indent)
;; assign toggle windows C-t
(define-key global-map (kdb "C-t") 'other-window)
;; set number
(line-number-mode 0)
(column-number-mode t)

;; package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

;; package管理
(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

;; cmdキーを superとして割り当てる
(setq mac-command-modifier 'super)

;; バックスペースの設定
(global-set-key (kbd "C-h") 'delete-backward-char)

;; auto-complete（自動補完）
(require 'auto-complete-config)
(global-auto-complete-mode 0.5)
