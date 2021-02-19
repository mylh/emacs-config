(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 90 :width normal)))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(c-basic-offset 4)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("1ed5c8b7478d505a358f578c00b58b430dde379b856fbcb60ed8d345fc95594e" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "bc836bf29eab22d7e5b4c142d201bcce351806b7c1f94955ccafab8ce5b20208" "2cdc13ef8c76a22daa0f46370011f54e79bae00d5736340a5ddfe656a767fddf" "e1ecb0536abec692b5a5e845067d75273fe36f24d01210bf0aa5842f2a7e029f" "58c3313b4811ed8b30239b1d04816f74d438bcb72626d68181f294b115b7220d" "99ea831ca79a916f1bd789de366b639d09811501e8c092c85b2cb7d697777f93" default)))
 '(desktop-restore-frames t)
 '(desktop-save (quote ask-if-new))
 '(desktop-save-mode t)
 '(display-time-mode t)
 '(fci-rule-color "#738cff")
 '(fci-rule-use-dashes nil)
 '(indent-tabs-mode nil)
 '(jdee-db-active-breakpoint-face-colors (cons "#171F24" "#c792ea"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#171F24" "#c3e88d"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#171F24" "#37474F"))
 '(objed-cursor-color "#ff5370")
 '(package-selected-packages
   (quote
    (all-the-icons solaire-mode doom-themes markdown-mode elpy use-package docker-compose-mode dockerfile-mode go-mode rjsx-mode flycheck-pyflakes flycheck-pycheckers pylint virtualenvwrapper python-mode jedi yaml-mode less-css-mode js2-mode rjsx-mode jinja2-mode flycheck fill-column-indicator)))
 '(pdf-view-midnight-colors (cons "#EEFFFF" "#263238"))
 '(rustic-ansi-faces
   ["#263238" "#ff5370" "#c3e88d" "#ffcb6b" "#82aaff" "#c792ea" "#89DDFF" "#EEFFFF"])
 '(safe-local-variable-values (quote ((sgml-basic-offset . 2))))
 '(save-place-mode t nil (saveplace))
 '(scroll-bar-mode nil)
 '(sgml-basic-offset 4)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(speedbar-default-position (quote right))
 '(speedbar-frame-parameters
   (quote
    ((minibuffer)
     (width . 27)
     (border-width . 0)
     (menu-bar-lines . 0)
     (tool-bar-lines . 0)
     (unsplittable . t)
     (left-fringe . 0))))
 '(speedbar-show-unknown-files t)
 '(speedbar-supported-extension-expressions
   (quote
    ("\\.\\(inc\\|php[s34]?\\)" ".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".f\\(90\\|77\\|or\\)?" ".ada" ".p[lm]" ".tcl" ".m" ".scm" ".phtml" ".css" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?" ".hs" ".st")))
 '(tab-width 4)
 '(tabbar-cycle-scope (quote tabs))
 '(tool-bar-mode nil)
 '(vc-annotate-background "#263238")
 '(vc-annotate-color-map
   (list
    (cons 20 "#c3e88d")
    (cons 40 "#d7de81")
    (cons 60 "#ebd476")
    (cons 80 "#ffcb6b")
    (cons 100 "#fcb66b")
    (cons 120 "#f9a16b")
    (cons 140 "#f78c6c")
    (cons 160 "#e78e96")
    (cons 180 "#d690c0")
    (cons 200 "#c792ea")
    (cons 220 "#d97dc1")
    (cons 240 "#ec6898")
    (cons 260 "#ff5370")
    (cons 280 "#cd5067")
    (cons 300 "#9b4d5f")
    (cons 320 "#694a57")
    (cons 340 "#37474F")
    (cons 360 "#37474F")))
 '(vc-annotate-very-old-color nil))

(set-language-info-alist
 "Cyrillic-CP1251" `((charset cyrillic-iso8859-5)
                     (coding-system cp1251)
                     (coding-priority cp1251)
                     (input-method . "cyrillic-jcuken")
                     (features cyril-util)
                     (unibyte-display . cp1251)
                     (sample-text . "Russian (Русский) Здравствуйте!")
                     (documentation . "Support for Cyrillic CP1251."))
 '("Cyrillic"))

(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

;; list the packages you want
(setq package-list '(use-package solaire-mode all-the-icons doom-themes docker-compose-mode dockerfile-mode go-mode python-mode pylint flycheck jinja2-mode js2-mode less-css-mode yaml-mode fill-column-indicator jedi))

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; move quick-help tooltips to the minibuffer
;; (setq jedi:tooltip-method nil)
;; (setq jedi:complete-on-dot t)

;; disable all auto-completion unless explicitly invoked with M-tab
;; (require 'auto-complete-config)
;; (setq ac-auto-show-menu nil)
;; (setq ac-auto-start nil)
;; (define-key ac-mode-map (kbd "s-SPC") 'auto-complete)

(require 'use-package)
(use-package elpy
  :ensure t
  :init
  (elpy-enable))

;;hooks
(add-hook 'after-init-hook #'global-flycheck-mode)
(autoload 'pylint "pylint")
(add-hook 'python-mode-hook 'pylint-add-menu-items)
(add-hook 'python-mode-hook 'pylint-add-key-bindings)
(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'python-mode-hook 'turn-on-auto-fill)
;;(add-hook 'python-mode-hook 'fci-mode)
;;(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'before-save-hook 'gofmt-before-save)

(setq-default fill-column 79)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . jinja2-mode))
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(global-set-key [f5] 'speedbar)
(global-set-key [f9] 'pylint)
(global-set-key [f8] 'kill-this-buffer)
(global-set-key [f12] 'toggle-truncate-lines)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)


;;(when window-system (set-frame-position (selected-frame) 0 0))
(when window-system (set-frame-size (selected-frame) 207 61))

(savehist-mode 1)
(require 'ido)
(ido-mode t)



(require 'solaire-mode)
(solaire-global-mode +1)

;;----------------------------------------------------------------------------
;; Fill column indicator
;;----------------------------------------------------------------------------
(when (eval-when-compile (> emacs-major-version 23))
  (defun sanityinc/prog-mode-fci-settings ()
    (turn-on-fci-mode)
    (when show-trailing-whitespace
      (set (make-local-variable 'whitespace-style) '(face trailing))
      (whitespace-mode 1)))

  ;;(add-hook 'prog-mode-hook 'sanityinc/prog-mode-fci-settings)

  (defun sanityinc/fci-enabled-p ()
    (and (boundp 'fci-mode) fci-mode))

  (defvar sanityinc/fci-mode-suppressed nil)
  (defadvice popup-create (before suppress-fci-mode activate)
    "Suspend fci-mode while popups are visible"
    (let ((fci-enabled (sanityinc/fci-enabled-p)))
      (when fci-enabled
        (set (make-local-variable 'sanityinc/fci-mode-suppressed) fci-enabled)
        (turn-off-fci-mode))))
  (defadvice popup-delete (after restore-fci-mode activate)
    "Restore fci-mode when all popups have closed"
    (when (and sanityinc/fci-mode-suppressed
               (null popup-instances))
      (setq sanityinc/fci-mode-suppressed nil)
      (turn-on-fci-mode)))

  ;; Regenerate fci-mode line images after switching themes
  (defadvice enable-theme (after recompute-fci-face activate)
    (dolist (buffer (buffer-list))
      (with-current-buffer buffer
        (when (sanityinc/fci-enabled-p)
          (turn-on-fci-mode))))))

;; Full file path in frame title
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))
;;; .emacs ends here
