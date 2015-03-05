(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(c-basic-offset 4)
 '(column-number-mode t)
 '(custom-enabled-themes (quote (wombat)))
 '(desktop-save (quote ask-if-new))
 '(desktop-save-mode t)
 '(display-time-mode t)
 '(haskell-font-lock-haddock t)
 '(haskell-font-lock-symbols t)
 '(indent-tabs-mode nil)
 '(save-place t nil (saveplace))
 '(sgml-basic-offset 4)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(speedbar-default-position (quote right))
 '(speedbar-frame-parameters (quote ((minibuffer) (width . 25) (border-width . 0) (menu-bar-lines . 0) (tool-bar-lines . 0) (unsplittable . t) (left-fringe . 0))))
 '(speedbar-show-unknown-files t)
 '(speedbar-supported-extension-expressions (quote ("\\.\\(inc\\|php[s34]?\\)" ".[ch]\\(\\+\\+\\|pp\\|c\\|h\\|xx\\)?" ".tex\\(i\\(nfo\\)?\\)?" ".el" ".emacs" ".l" ".lsp" ".p" ".java" ".f\\(90\\|77\\|or\\)?" ".ada" ".p[lm]" ".tcl" ".m" ".scm" ".phtml" ".css" ".pm" ".py" ".g" ".s?html" ".ma?k" "[Mm]akefile\\(\\.in\\)?" ".hs" ".st")))
 '(sr-speedbar-auto-refresh nil)
 '(sr-speedbar-skip-other-window-p nil)
 '(sr-speedbar-width-console 30)
 '(sr-speedbar-width-x 30)
 '(tab-width 4)
 '(tabbar-cycle-scope (quote tabs))
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(web-mode-code-indent-offset 4)
 '(web-mode-css-indent-offset 4)
 '(web-mode-enable-string-interpolation t)
 '(web-mode-markup-indent-offset 4))

(savehist-mode 1)

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

(add-to-list 'load-path "~/.emacs.d/")

; list the packages you want
(setq package-list '(jinja2-mode js2-mode less-css-mode))

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
  )


;; ; list the repositories containing them
;; (setq package-archives '(("elpa" . "http://tromey.com/elpa/")
;;                          ("gnu" . "http://elpa.gnu.org/packages/")
;;                          ("marmalade" . "http://marmalade-repo.org/packages/")))

;; ; activate all the packages (in particular autoloads)
;; (package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))



(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . jinja2-mode))
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

(add-hook 'python-mode-hook   'hs-minor-mode)

(tabbar-mode)
(global-set-key [f5] 'speedbar)
(global-set-key [f9] 'pylint)
(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;;(require 'pymacs)
;;(pymacs-load "ropemacs" "rope-")
(add-hook 'python-mode-hook 'jedi:setup)
;;(add-hook 'python-mode-hook (lambda ()
;;                              (define-key ropemacs-local-keymap (kbd "C-t") 'rope-code-assist)))
;;(global-set-key (kbd "M-SPC") 'dabbrev-expand)
;;(define-key minibuffer-local-map (kbd "M-SPC") 'dabbrev-expand)


;;===== PyFlakes
;; code checking via pyflakes+flymake
(when (load "flymake" t)
  (defun flymake-pyflakes-init ()
    (let* ((temp-file (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
           (local-file (file-relative-name
                        temp-file
                        (file-name-directory buffer-file-name))))
      (list "pyflakes" (list local-file))))
  
  (add-to-list 'flymake-allowed-file-name-masks
               '("\\.py\\'" flymake-pyflakes-init)))

(add-hook 'find-file-hook 'flymake-find-file-hook)

;;===== HtmlFlymakes
(defun flymake-xml-init ()
  (list "xmlstarlet"
        (list "val" "-e" "-q" 
              (flymake-init-create-temp-buffer-copy 
               'flymake-create-temp-inplace))))


(setq-default fill-column 80)
(add-hook 'python-mode-hook 'turn-on-auto-fill)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 113 :width normal)))))

(when window-system (set-frame-position (selected-frame) 0 0))
(when window-system (set-frame-size (selected-frame) 207 61))

(ido-mode)
