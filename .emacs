;; Window Size & Colors
(if window-system (progn
                    (setq initial-frame-alist '((width . 80) (height . 30)))
                    (set-background-color "gray0")
                    (set-foreground-color "white")
                    (set-cursor-color "Gray")
))

;; Command-Key and Option-Key
(setq ns-command-modifier (quote meta))
(setq ns-alternate-modifier (quote super))

;; line number
(global-set-key "\M-n" 'linum-mode)

;; region
(transient-mark-mode t)

;; line & column number
(line-number-mode t)
(column-number-mode)

;; flymake
;;
(require 'flymake)
;; for configuration error
(defadvice flymake-post-syntax-check (before flymake-force-check-was-interrupted)
  (setq flymake-check-was-interrupted t))
(ad-activate 'flymake-post-syntax-check)

;; scheme-mode
(modify-coding-system-alist 'process "gosh" '(utf-8 . utf-8))

(setq scheme-program-name "gosh -i")
(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)
(defun scheme-other-window ()
  "Run scheme on other window"
  (interactive)
  (switch-to-buffer-other-window
   (get-buffer-create "*scheme*"))
  (run-scheme scheme-program-name))

(define-key global-map
  "\C-cs" 'scheme-other-window)

;; vc
(add-to-list 'vc-handled-backends 'SVN)

;; cperl-mode
(defalias 'perl-mode 'cperl-mode)
(setq cperl-invalid-face nil
      cperl-indent-parens-as-block t)

;; php-mode
(setq php-mode-hook
  (function (lambda ()
    (c-set-style "k&r")
    (setq indent-tabs-mode nil
	  c-basic-offset 2))))
	      
;; python-mode
(setq python-indent 2)

;; uniquify
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward-angle-brackets)


;;; gtags
(autoload 'gtags-mode "gtags" "" t)
(setq gtags-mode-hook
      '(lambda ()
         (local-set-key "\M-t" 'gtags-find-tag)
         (local-set-key "\M-r" 'gtags-find-rtag)
         (local-set-key "\M-s" 'gtags-find-symbol)
         (local-set-key "\C-t" 'gtags-pop-stack)
         ))

;; package
(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

;; path
(add-to-list 'load-path (expand-file-name "~/.emacs.d/elisp"))

;; ediff
(setq ediff-window-setup-function 'ediff-setup-window-plain)


;; io-mode
(autoload 'io-mode "io-mode" "Major mode for Io." t)

;; rust-mode
(autoload 'rust-mode "rust-mode" "Major mode for Rust." t)
(add-to-list 'auto-mode-alist '("\\.rs$" . rust-mode))

;; haskell-mode
(require 'haskell-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)

;; ghc-mod
(add-to-list 'load-path "~/.cabal/share/ghc-mod-1.12.4/")
(add-to-list 'exec-path "~/.cabal/bin")
(require 'ghc)
(autoload 'ghc-init "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () 
			       (ghc-init)
			       (flymake-mode)))

;; ruby-mode
(setq ruby-deep-indent-paren-style nil)
(defadvice ruby-indent-line (after unindent-closing-paren activate)
  (let ((column (current-column))
        indent offset)
    (save-excursion
      (back-to-indentation)
      (let ((state (syntax-ppss)))
        (setq offset (- column (current-column)))
        (when (and (eq (char-after) ?\))
                   (not (zerop (car state))))
          (goto-char (cadr state))
          (setq indent (current-indentation)))))
    (when indent
      (indent-line-to indent)
      (when (> offset 0) (forward-char offset)))))
