;; Install straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(c-basic-offset 4)
 '(chatgpt-model "gpt-4o")
 '(column-number-mode t)
 '(company-tooltip-align-annotations t)
 '(compilation-message-face 'default)
 '(copilot-indent-offset-warning-disable t)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   '("f5b6be56c9de9fd8bdd42e0c05fecb002dedb8f48a5f00e769370e4517dde0e8" "3e200d49451ec4b8baa068c989e7fba2a97646091fd555eca0ee5a1386d56077" "fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "f149d9986497e8877e0bd1981d1bef8c8a6d35be7d82cba193ad7e46f0989f6a" "90a6f96a4665a6a56e36dec873a15cbedf761c51ec08dd993d6604e32dd45940" default))
 '(desktop-restore-frames t)
 '(desktop-save 'ask-if-new)
 '(desktop-save-mode t)
 '(display-time-mode t)
 '(ein:output-area-inlined-images t)
 '(ema-model-name "gpt-4o")
 '(ema-timeout 120)
 '(fci-rule-color "#073642")
 '(flycheck-python-pylint-executable "pylint")
 '(gptel-api-key 'openai-key-fn)
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-symbol-colors
   '("#3b6b40f432d7" "#07b9463d4d37" "#47a3341f358a" "#1d873c4056d5" "#2d87441c3362" "#43b7362e3199" "#061e418059d7"))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   '(("#073642" . 0)
     ("#5b7300" . 20)
     ("#007d76" . 30)
     ("#0061a8" . 50)
     ("#866300" . 60)
     ("#992700" . 70)
     ("#a00559" . 85)
     ("#073642" . 100)))
 '(hl-bg-colors
   '("#866300" "#992700" "#a7020a" "#a00559" "#243e9b" "#0061a8" "#007d76" "#5b7300"))
 '(hl-fg-colors
   '("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36"))
 '(hl-paren-colors '("#2aa198" "#b58900" "#268bd2" "#6c71c4" "#859900"))
 '(hl-sexp-background-color "#efebe9")
 '(indent-tabs-mode nil)
 '(ispell-dictionary "english")
 '(lsp-ui-doc-border "#93a1a1")
 '(nrepl-message-colors
   '("#dc322f" "#cb4b16" "#b58900" "#5b7300" "#b3c34d" "#0061a8" "#2aa198" "#d33682" "#6c71c4"))
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(package-selected-packages
   '(web-mode tide json-mode ein all-the-icons markdown-mode use-package docker-compose-mode dockerfile-mode go-mode pylint virtualenvwrapper python-mode jedi yaml-mode less-css-mode js2-mode jinja2-mode flycheck fill-column-indicator))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(request-log-level 'warn)
 '(request-message-level -1)
 '(request-timeout 60)
 '(safe-local-variable-values '((sgml-basic-offset . 2)))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(speedbar-frame-parameters
   '((minibuffer)
     (width . 25)
     (border-width . 0)
     (menu-bar-lines . 0)
     (tool-bar-lines . 0)
     (unsplittable . t)
     (left-fringe . 0)))
 '(speedbar-show-unknown-files t)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
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
 '(vc-annotate-very-old-color nil)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-markup-indent-offset 2)
 '(weechat-color-list
   '(unspecified "#002b36" "#073642" "#a7020a" "#dc322f" "#5b7300" "#859900" "#866300" "#b58900" "#0061a8" "#268bd2" "#a00559" "#d33682" "#007d76" "#2aa198" "#839496" "#657b83"))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
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

(when window-system (set-frame-position (selected-frame) 0 0))
(when window-system (set-frame-size (selected-frame) 207 61))

;; Full file path in frame title
(setq frame-title-format
      '((:eval (if (buffer-file-name)
                   (abbreviate-file-name (buffer-file-name))
                 "%b"))))


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

;; list the packages you want
(defvar package-list
  '( use-package
     all-the-icons
     company
     docker-compose-mode
     dockerfile-mode
     ein
     filenotify
     fill-column-indicator
     flycheck
     flymake-eslint
     go-mode
     gptel
     js2-mode
     json-mode
     less-css-mode
     markdown-mode
     pylint
     request
     ruff-format
     tide
     typescript-mode
     use-package
     virtualenvwrapper
     web-mode
     yaml-mode
     lsp-mode
     magit
     ruff-format
     lsp-pyright
     treemacs
     vertico
     ))

;; configure treemacs to disable auto follow by default
(use-package treemacs
  :ensure t
  :config
  (setq treemacs-follow-mode nil))

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'use-package)

;; Disable startup message
(setq inhibit-startup-message t)

;; Disable UI clutter
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Enable line numbers only in prog-mode buffers
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Enable smooth scrolling
(setq scroll-conservatively 101)

(show-paren-mode 1)

(use-package doom-modeline
  :ensure t
  :init (doom-modeline-mode 1))

(use-package company
  :hook (after-init . global-company-mode)) ;; Auto-completion

(use-package copilot
  :straight (:host github :repo "copilot-emacs/copilot.el" :files ("*.el"))
  :ensure t)
;; you can utilize :map :hook and :config to customize copilot
(add-hook 'prog-mode-hook 'copilot-mode)

(use-package openai
  :straight (openai :type git :host github :repo "emacs-openai/openai"))

(setq openai-key (getenv "OPENAI_API_KEY"))

;;Define a function the returns the value of openai-key
(defun openai-key-fn ()
  openai-key)

;; (use-package chatgpt
;;   :straight (chatgpt :type git :host github :repo "emacs-openai/chatgpt"))

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

;; Enable ido mode gloabally
(use-package ido
  :config
  (ido-mode 1))

;; Persist history over Emacs restarts. Vertico sorts by history position.
(use-package savehist
  :init
  (savehist-mode 1))

;; Enable vertico
(use-package vertico
  :custom
  ;; (vertico-scroll-margin 0) ;; Different scroll margin
  ;; (vertico-count 20) ;; Show more candidates
  (vertico-resize t) ;; Grow and shrink the Vertico minibuffer
  ;; (vertico-cycle t) ;; Enable cycling for `vertico-next/previous'
  :config
  (vertico-mode)
  (message "Vertico mode enabled")
  )

(use-package ripgrep
  :ensure t)

;; Tide setup
;; https://github.com/ananthakumaran/tide
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (flycheck-mode +1)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)
  (prettier-mode +1)
  ;; company is an optional dependency. You have to
  ;; install it separately via package-install
  ;; `M-x package-install [ret] company`
  (company-mode +1))

;; if you use typescript-mode
;;(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; if you use treesitter based typescript-ts-mode (emacs 29+)
(add-hook 'typescript-ts-mode-hook #'setup-tide-mode)

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)


; complete by copilot first, then company-mode
(defun my-tab ()
  (interactive)
  (or (copilot-accept-completion)
      (company-indent-or-complete-common nil)))

; modify company-mode behaviors to use with copilot
(with-eval-after-load 'company
  ; disable inline previews
  (delq 'company-preview-if-just-one-frontend company-frontends)
  ; enable tab completion
  (define-key company-mode-map (kbd "<tab>") 'my-tab)
  (define-key company-mode-map (kbd "TAB") 'my-tab)
  (define-key company-active-map (kbd "<tab>") 'my-tab)
  (define-key company-active-map (kbd "TAB") 'my-tab))


;; ChatGPT emacs assistant
(load "~/Projects/ema/ema.el")

(defun my-go-mode-hook ()
  "Set up godef jump key bindings."
  ;;(local-set-key (kbd "M-.") 'godef-jump)
  ;; Enable company mode
  (company-mode 1)
  (setq tab-width 2)
)

(add-hook 'go-mode-hook 'my-go-mode-hook)

;;hooks
;;(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'python-mode-hook 'turn-on-auto-fill)
(add-hook 'python-mode-hook 'hs-minor-mode)
(add-hook 'go-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'gofmt-before-save)))

(setq-default fill-column 79)

(defun eslint ()
  (interactive)
  (let* ((file-name (buffer-file-name))
         (output-buffer (generate-new-buffer "*ESLint Output*"))
         (command (format "/home/mylh/Projects/uptime.com/emacs_docker_integration/run_eslint.sh %s" (shell-quote-argument file-name))))
    (with-current-buffer output-buffer
      (setq default-directory (file-name-directory file-name))
      (shell-command command (current-buffer)))
    (display-buffer output-buffer '(display-buffer-pop-up-window (nil (allow-no-window . t)))))) ; open in new window
;;    (switch-to-buffer output-buffer)))


(defun my/run-ruff ()
  "Run Ruff inside a Docker container if environment variables are set; otherwise, run it locally."
  (interactive)
  (let* ((container-name (getenv "CONTAINER_NAME"))
         (project-root (getenv "PROJECT_ROOT"))
         (container-root (getenv "CONTAINER_ROOT"))
         (file-path buffer-file-name)
         (mapped-file-path (if (and project-root container-root file-path)
                               (replace-regexp-in-string (regexp-quote project-root) container-root file-path)
                             file-path)))
    (if (and container-name project-root container-root)
        (progn
          (message "Running Ruff inside container: %s" container-name)
          (compile (format "docker exec %s ruff check %s"
                           (shell-quote-argument container-name)
                           (shell-quote-argument mapped-file-path))))
      (progn
        (message "Running Ruff locally")
        (compile (format "ruff check %s" (shell-quote-argument file-path)))))))


(defun lint-current-buffer ()
  (interactive)
  (cond
   ((string= "py" (file-name-extension (buffer-file-name)))
    (my/run-ruff))
   ((member (file-name-extension (buffer-file-name)) '("js" "jsx" "ts" "tsx"))
    (eslint))))

;; (defun lint-current-buffer ()
;;   (interactive)
;;   (cond
;;    ((string= "py" (file-name-extension (buffer-file-name)))
;;     (pylint))
;;    ((member (file-name-extension (buffer-file-name)) '("js" "jsx" "ts" "tsx"))
;;     (eslint))))

(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.go\\'" . go-mode))
(add-to-list 'auto-mode-alist '("\\.tsx?\\'" . typescript-ts-mode))
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js-mode))

(global-set-key [f5] 'treemacs)
;;(global-set-key [f5] 'sppedbar)
(global-set-key [f6] 'copilot-accept-completion)
(global-set-key [f9] 'lint-current-buffer)
(global-set-key [f8] 'kill-current-buffer)
(global-set-key [f12] 'toggle-truncate-lines)
(global-set-key (kbd "C-c RET") 'gptel-send)
(global-set-key (kbd "C-c C-m") 'gptel-send)

;; Ensure gptel-send is available in the relevant modes
(dolist (hook '(text-mode-hook
                prog-mode-hook
                python-mode-hook
                markdown-mode-hook
                org-mode-hook)) ;; Add any other mode hooks
  (add-hook hook (lambda ()
                   (local-set-key (kbd "C-c RET") 'gptel-send))))

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

(put 'pylint-command 'safe-local-variable (lambda (_) t))
(put 'ruff-format-command 'safe-local-variable (lambda (_) t))
(put 'flycheck-python-pylint-executable 'safe-local-variable (lambda (_) t))
(put 'flycheck-javascript-eslint-executable 'safe-local-variable (lambda (_) t))
(put 'python-shell-interpreter 'safe-local-variable (lambda (_) t))
(put 'before-save-hook 'safe-local-variable (lambda (_) t))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Anonymous Pro" :foundry "mlss" :slant normal :weight regular :height 118 :width normal)))))

(require 'filenotify)

(defvar my/kdeglobals-watcher nil "File watcher for KDE globals configuration file.")

(defun my/switch-emacs-theme-based-on-kde ()
  "Switch Emacs theme based on KDE dark or light theme settings."
  (interactive)
  (let* ((kde-config-file (expand-file-name "~/.config/kdeglobals"))
         (kde-theme-setting (with-temp-buffer
                              (insert-file-contents kde-config-file)
                              (goto-char (point-min)) ; Ensure we are at the beginning of the buffer
                              (if (re-search-forward "^LookAndFeelPackage=\\(.*\\)$" nil t)
                                  (match-string 1)
                                nil))))
    (message "KDE theme setting read from file: %s" kde-theme-setting) ; Debug output
    (if (and kde-theme-setting (string-match "org\.kde\.breezedark" kde-theme-setting))
        (progn
          (disable-theme 'dichromacy) ; Disable the light theme
          (load-theme 'wombat t))     ; Load the dark theme
      (progn
        (disable-theme 'wombat)       ; Disable the dark theme
        (load-theme 'dichromacy t))))) ; Load the light theme

;; Add the file watcher
(defun my/add-kdeglobals-watcher ()
  "Add a watcher to monitor changes in kdeglobals."
  (when my/kdeglobals-watcher
    (file-notify-rm-watch my/kdeglobals-watcher)) ; Remove old watcher if it exists
  (setq my/kdeglobals-watcher
        (file-notify-add-watch
         (expand-file-name "~/.config/kdeglobals")
         '(change)
         (lambda (event)
           (message "File change event detected: %s" event) ; Debug output of the event
           (let ((event-type (cadr event)))
             (when (or (eq event-type 'changed)
                       (eq event-type 'renamed)
                       (eq event-type 'attribute-changed)) ; Handle both changed and renamed
               (my/switch-emacs-theme-based-on-kde)))))))

;; Add the file watcher
(my/add-kdeglobals-watcher)

;; Or bind it to a hotkey to manually trigger theme switch.
(global-set-key (kbd "C-c t k") 'my/switch-emacs-theme-based-on-kde)

;; Set current theme
(my/switch-emacs-theme-based-on-kde)

;; Custom utility functions
(defun sort-lines-by-length (reverse beg end)
  "Sort lines by length."
  (interactive "P\nr")
  (save-excursion
    (save-restriction
      (narrow-to-region beg end)
      (goto-char (point-min))
      (let ;; To make `end-of-line' and etc. to ignore fields.
          ((inhibit-field-text-motion t))
        (sort-subr reverse 'forward-line 'end-of-line nil nil
                   (lambda (l1 l2)
                     (apply #'< (mapcar (lambda (range) (- (cdr range) (car range)))
                                        (list l1 l2)))))))))

;; (with-eval-after-load 'lsp-mode
;;   (setq lsp-ruff-server-command
;;         (let ((container-name (getenv "CONTAINER_NAME")))
;;           (if container-name
;;               (list "docker" "exec" "-i" container-name "ruff" "server")
;;             (list "ruff" "server"))))

;;   (add-hook 'lsp-mode-hook
;;             (lambda ()
;;               (unless (lsp-find-workspace 'ruff-lsp)
;;                 (lsp-register-client
;;                  (make-lsp-client
;;                   :new-connection (lsp-stdio-connection lsp-ruff-server-command)
;;                   :major-modes '(python-mode)
;;                   :server-id 'ruff-lsp
;;                   :notification-handlers (ht ("textDocument/formatting" (lambda (_w _p) (lsp-format-buffer))))))))))

(use-package lsp-mode
  :commands lsp
  :init
  (setq lsp-keymap-prefix "C-c l") ;; LSP keybindings
  :hook ((python-mode . lsp)
         (go-mode . lsp)
         (js2-mode . lsp)))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode) ;; UI enhancements for LSP

(use-package lsp-pyright
  :ensure t
  :hook (python-mode . (lambda ()
                         (require 'lsp-pyright)
                         (lsp))))  ;; Start LSP

;; (add-hook 'python-mode-hook #'lsp)
(add-hook 'python-mode-hook 'ruff-format-on-save-mode)
;; Enable lsp for golang
;; (add-hook 'go-mode-hook #'lsp)

;;; .emacs ends here
