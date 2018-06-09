;; .emacs

(custom-set-variables
 ;; uncomment to always end a file with a newline
					;'(require-final-newline t)
 ;; uncomment to disable loading of "default.el" at startup
					;'(inhibit-default-init t)
 ;; default to unified diff
 '(diff-switches "-u"))

(add-to-list 'load-path "~/.emacs.d/load-path/")

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)

;; TOOL BAR ENABLE/DISABLE:
(setq tool-bar-mode -1)

;; SMOOTH SCROLL:
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

;; LINE NUMBERS:
(global-linum-mode 1)

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

;; LINE NUMBER FORMAT
(setq linum-format "%3d \u2502 ")

;; ----------------------------------
;;           EPITECH CONFIG
;; ----------------------------------
(add-to-list 'load-path "~/.emacs.d/lisp")
(load "std.el")
(load "std_comment.el")
