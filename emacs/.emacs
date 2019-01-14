;; .emacs

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a4df5d4a4c343b2712a8ed16bc1488807cd71b25e3108e648d4a26b02bc990b3" default)))
 '(diff-switches "-u")
 '(package-selected-packages
   (quote
    (fill-column-indicator darcula-theme flycheck auto-package-update markdown-mode graphviz-dot-mode fiplr php-mode expand-region helm dracula-theme projectile magit auto-complete))))

(add-to-list 'load-path "~/.emacs.d/load-path/")

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)

;; ??? BAR ENABLE/DISABLE:
(setq tool-bar-mode -1)
(menu-bar-mode -1)

;; SMOOTH SCROLL:
(setq mouse-wheel-scroll-amount '(1 ((shift). 1)))
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)
(setq scroll-conservatively 10000)

(global-set-key [wheel-right] 'scroll-left)
(global-set-key [wheel-left] 'scroll-right)
(global-set-key [wheel-up] 'scroll-up)
(global-set-key [wheel-down] 'scroll-down)

(global-set-key [C-+] 'text-scale-increase)
(global-set-key [C--] 'text-scale-decrease)

(cua-mode 1)

;; better user usage
(global-linum-mode 1)           ;; line nbr on left
(electric-pair-mode 1)          ;; () {} "" ''
(show-paren-mode 1)             ;; (). place your cursor on the dot
(column-number-mode 1)          ;; ...
(require 'column-marker)

;; LINE NUMBER FORMAT
(setq linum-format "%4d \u2502 ")
(setq linum-delay t)

;; This is for unable linum mode in some buffers
(setq linum-mode-inhibit-modes-list '(eshell-mode
                      shell-mode
                      erc-mode
                      jabber-roster-mode
                      jabber-chat-mode
                      gnus-group-mode
                      gnus-summary-mode
                      gnus-article-mode))
 
(defadvice linum-on (around linum-on-inhibit-for-modes)
  "Stop the load of linum-mode for some major modes."
  (unless (member major-mode linum-mode-inhibit-modes-list)
    ad-do-it))
 
(ad-activate 'linum-on)

;; FLYCHECK INCLUDE PATH
(setq flycheck-gcc-include-path (list "../../"))
(setq flycheck-clang-include-path (list "../../"))

;; CUSTOM THEME
(load-theme 'dracula t)

;; ctrl+x ctrl+f fiplr
(global-set-key (kbd "C-x f") 'fiplr-find-file)

;; window custom commands
(global-set-key (kbd "C-x SPC") 'delete-window)

;; MELPA
(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
		    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives
	       (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives
		 '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

;; PROJECTILE
(projectile-mode)
;; AUTO COMPLETE
(ac-config-default)

;; 80 chr line delimitation
(setq fci-rule-character #x2502)
(setq fci-rule-color "#3a3a3a")
(setq fci-rule-column 80)

;; choose which languages do that fci mode
(add-hook 'c++-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'c-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'python-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'html-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'java-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'javascript-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'perl-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'ruby-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'php-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'css-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'emacs-lisp-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'lisp-mode-hook (lambda () (fci-mode 1) ))
(add-hook 'shell-script-mode-hook (lambda () (fci-mode 1) ))

;; ----------------------------------
;;           EPITECH CONFIG
;; ----------------------------------
;;; (add-to-list 'load-path "~/.emacs.d/lisp")
;;; (load "std.el")
;;; (load "std_comment.el")
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;    
;; Epitech configuration
;;
(add-to-list 'load-path "~/.emacs.d/lisp")
(load "site-start.d/epitech-init.el")
