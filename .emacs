(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(c-basic-offset 4)
 '(column-number-mode t)
 '(custom-enabled-themes '(wombat))
 '(custom-safe-themes
   '("f149d9986497e8877e0bd1981d1bef8c8a6d35be7d82cba193ad7e46f0989f6a" "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" default))
 '(desktop-restore-frames t)
 '(desktop-save 'ask-if-new)
 '(desktop-save-mode t)
 '(display-time-mode t)
 '(ein:output-area-inlined-images t)
 '(elpy-formatter 'black)
 '(elpy-modules
   '(elpy-module-company elpy-module-eldoc elpy-module-folding elpy-module-pyvenv elpy-module-highlight-indentation elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults))
 '(elpy-rpc-python-command "python3")
 '(flycheck-python-pylint-executable "pylint")
 '(hl-sexp-background-color "#efebe9")
 '(indent-tabs-mode nil)
 '(ispell-dictionary "english")
 '(package-selected-packages
   '(web-mode tide json-mode material-theme jedi-direx ein all-the-icons markdown-mode elpy use-package docker-compose-mode dockerfile-mode go-mode rjsx-mode flycheck-pyflakes flycheck-pycheckers pylint virtualenvwrapper python-mode jedi yaml-mode less-css-mode js2-mode jinja2-mode flycheck fill-column-indicator))
 '(safe-local-variable-values '((sgml-basic-offset . 2)))
 '(speedbar-frame-parameters
   '((minibuffer)
     (width . 25)
     (border-width . 0)
     (menu-bar-lines . 0)
     (tool-bar-lines . 0)
     (unsplittable . t)
     (left-fringe . 0)))
 '(speedbar-show-unknown-files t)
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#B71C1C")
     (40 . "#FF5722")
     (60 . "#FFA000")
     (80 . "#558b2f")
     (100 . "#00796b")
     (120 . "#2196f3")
     (140 . "#4527A0")
     (160 . "#B71C1C")
     (180 . "#FF5722")
     (200 . "#FFA000")
     (220 . "#558b2f")
     (240 . "#00796b")
     (260 . "#2196f3")
     (280 . "#4527A0")
     (300 . "#B71C1C")
     (320 . "#FF5722")
     (340 . "#FFA000")
     (360 . "#558b2f")))
 '(vc-annotate-very-old-color nil))
 '(save-place-mode t nil (saveplace))
 '(scroll-bar-mode nil)
 '(sentence-end-double-space nil)
 '(sgml-basic-offset 4)
 '(size-indication-mode t)
 '(speedbar-default-position 'right)
 '(speedbar-frame-parameters
   '((minibuffer)
     (width . 27)
     (border-width . 0)
     (menu-bar-lines . 0)
     (tool-bar-lines . 0)
     (unsplittable . t)
     (left-fringe . 0)))
 '(speedbar-show-unknown-files t)
 '(speedbar-supported-extension-expressions
   '("\\.\\(inc\\|php[s34]?\\)" ".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".f\\(90\\|77\\|or\\)?" ".ada" ".p[lm]" ".tcl" ".m" ".scm" ".phtml" ".css" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?" ".hs" ".st"))
 '(tab-width 4)
 '(tabbar-cycle-scope 'tabs)



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
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; list the packages you want
(defvar package-list
  '( use-package
     material-theme
     all-the-icons
     elpy
     tide
     flycheck
     docker-compose-mode
     dockerfile-mode
     go-mode
     pylint
     jinja2-mode
     js2-mode
     less-css-mode
     yaml-mode))

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'use-package)
(use-package elpy
  :ensure t
  :init
  (elpy-enable))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Disable Flymake and Enable Flycheck
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

(require 'ido)
(ido-mode t)
(show-paren-mode 1)
(savehist-mode 1)

;;hooks
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'python-mode-hook 'pylint-add-menu-items)
(add-hook 'python-mode-hook 'pylint-add-key-bindings)
;;(add-hook 'python-mode-hook 'turn-on-auto-fill)
;;(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'go-mode-hook (lambda ()
                            (add-hook 'before-save-hook 'gofmt-before-save)))
(add-hook 'elpy-mode-hook (lambda ()
                            (add-hook 'before-save-hook
                                      'elpy-format-code nil t)))


(setq-default fill-column 79)
(add-to-list 'auto-mode-alist '("\\.html\\'" . jinja2-mode))
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))

(global-set-key [f5] 'speedbar)
(global-set-key [f9] 'pylint)
(global-set-key [f8] 'kill-current-buffer)
(global-set-key [f12] 'toggle-truncate-lines)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;;(when window-system (set-frame-position (selected-frame) 0 0))
(when window-system (set-frame-size (selected-frame) 207 61))

;; Full file path in frame title
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))

(put 'pylint-command 'safe-local-variable (lambda (_) t))
(put 'flycheck-python-pylint-executable 'safe-local-variable (lambda (_) t))
(put 'flycheck-javascript-eslint-executable 'safe-local-variable (lambda (_) t))
(put 'python-shell-interpreter 'safe-local-variable (lambda (_) t))

;; Tide setup
;; https://github.com/ananthakumaran/tide
(require 'web-mode)
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)

(add-hook 'typescript-mode-hook #'setup-tide-mode)

(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "tsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; enable typescript-tslint checker
(flycheck-add-mode 'typescript-tslint 'web-mode)

(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (when (string-equal "jsx" (file-name-extension buffer-file-name))
              (setup-tide-mode))))
;; configure jsx-tide checker to run after your default jsx checker
(flycheck-add-mode 'javascript-eslint 'web-mode)
;;(flycheck-add-next-checker 'javascript-eslint 'jsx-tide 'append)

(use-package tide
  :ensure t
  :after (typescript-mode company flycheck)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . tide-hl-identifier-mode)
         (before-save . tide-format-before-save)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 90 :width normal)))))

;;; .emacs ends here
