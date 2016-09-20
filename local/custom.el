;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; Emacs 主题设置 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-face-attribute 'default nil :height 130)
(set-fringe-mode '(1 . 1))              ;Make fringe mini size

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(exec-path-from-shell-arguments (quote ("-l")))
 '(hl-paren-colors (quote ("Cyan" "Gold" "Red")))
 '(package-selected-packages
   (quote
    (dired+ zeal-at-point yaml-mode ws-butler window-numbering which-key wgrep visual-regexp-steroids visual-regexp vdiff uuidgen use-package toc-org tldr tiny spaceline powerline restclient restart-emacs request rainbow-mode rainbow-identifiers py-autopep8 puml-mode prodigy popwin persp-mode pcre2el paredit paradox spinner pangu-spacing org-pomodoro alert log4e gntp org-plus-contrib org-password-manager org org-bullets ob-http neotree mwim mvn multiple-cursors move-text mmm-mode markdown-toc markdown-mode magit-gitflow magit-gh-pulls macrostep lispy zoutline link-hint ivy-hydra hydra info+ indent-guide imenu-list ibuffer-projectile hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers parent-mode highlight-escape-sequences help-fns+ golden-ratio gnuplot gitignore-mode github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link gist gh marshal logito pcache ht flyspell-correct-ivy flyspell-correct flycheck-pos-tip flycheck-package flycheck flx find-by-pinyin-dired fill-column-indicator fcitx eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-matchit evil-magit magit magit-popup git-commit with-editor evil-lisp-state smartparens evil-iedit-state iedit evil-escape evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight engine-mode elpy pyvenv highlight-indentation find-file-in-project elisp-slime-nav dumb-jump f discover-my-major makey diminish diff-hl counsel-projectile projectile pkg-info epl counsel-dash helm-dash dash-functional helm helm-core counsel swiper ivy company-statistics company-shell company-emacs-eclim eclim s company column-enforce-mode color-identifiers-mode chinese-pyim chinese-pyim-basedict popup pos-tip calfw google-maps cal-china-x browse-kill-ring bind-map bind-key bbdb-vcard bbdb auto-yasnippet yasnippet auto-highlight-symbol auto-compile packed dash async aggressive-indent adaptive-wrap ace-window ace-pinyin pinyinlib ace-jump-mode ace-link avy quelpa package-build spacemacs-theme)))
 '(smiley-style (quote medium))
 '(term-default-bg-color "#000000")
 '(term-default-fg-color "#dddd00"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-menu-face ((t (:background "Grey10" :foreground "Grey40"))))
 '(ac-selection-face ((t (:background "darkred" :foreground "grey"))))
 '(ac-yasnippet-candidate-face ((t (:background "#191919" :foreground "#878787"))))
 '(ac-yasnippet-menu-face ((t (:background "Grey10" :foreground "Grey40"))))
 '(ac-yasnippet-selection-face ((t (:background "darkgreen" :foreground "Grey"))))
 '(ascii-ascii-face ((((class color) (background dark)) (:background "Black" :foreground "Grey"))))
 '(ascii-non-ascii-face ((((class color) (background dark)) (:background "Black" :foreground "Gold"))))
 '(col-highlight ((t (:background "Grey5"))))
 '(company-preview ((t (:background "gold3" :foreground "black"))))
 '(company-preview-common ((t (:background "gold3" :foreground "grey20"))))
 '(company-preview-search ((t (:background "green4" :foreground "green"))))
 '(company-tooltip ((t (:background "darkred" :foreground "grey"))))
 '(company-tooltip-common ((t (:inherit company-tooltip :foreground "gold"))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :foreground "gold"))))
 '(company-tooltip-selection ((default (:background "red3" :foreground "black")) (((class color) (min-colors 88)) (:background "orange1"))))
 '(completion-tooltip-face ((t (:inherit tooltip :background "grey5" :foreground "khaki1" :family "文泉驿等宽微米黑"))))
 '(completions-common-part ((t (:foreground "Green3"))))
 '(completions-first-difference ((t (:foreground "Grey60"))))
 '(cursor ((t (:background "red"))))
 '(diff-header ((((class color) (min-colors 88) (background dark)) (:background "grey30" :foreground "gold"))))
 '(dired-directory ((t (:inherit font-lock-function-name-face :foreground "DodgerBlue"))))
 '(dired-header ((t (:inherit font-lock-type-face :foreground "gold"))))
 '(dired-ignored ((t (:inherit shadow :foreground "grey50"))))
 '(dired-symlink ((t (:inherit font-lock-keyword-face :foreground "OrangeRed3"))))
 '(eldoc-highlight-function-argument ((t (:inherit bold :foreground "Red"))))
 '(fixme-face ((t (:foreground "orange" :box (:line-width 1 :color "orange") :weight bold))))
 '(fringe ((((class color) (background dark)) (:background "gray3"))))
 '(go-to-char-highlight ((((class color) (background dark)) (:background "Pink" :foreground "Black"))))
 '(highlight ((((class color) (min-colors 88) (background dark)) (:background "DarkRed" :foreground "White"))))
 '(highlight-cl ((t (:foreground "#20ABFC" :underline nil))))
 '(highlight-cl-and-other ((t (:foreground "#20ABFC" :underline nil))))
 '(highlight-cl-macro ((t (:underline nil))))
 '(highlight-symbol-face ((((class color) (background dark)) (:background "grey" :foreground "white"))))
 '(hl-line ((t (:background "grey5"))))
 '(hl-sexp-face ((((class color) (background dark)) (:background "gray2"))))
 '(info-elisp-command-ref-item ((t (:background "Black" :foreground "yellow3"))))
 '(info-elisp-function-ref-item ((t (:background "Black" :foreground "Gold3"))))
 '(info-elisp-macro-ref-item ((t (:background "Black" :foreground "Yellow3"))))
 '(info-elisp-reference-item ((t (:background "Black" :foreground "DarkRed"))))
 '(info-elisp-special-form-ref-item ((t (:background "Black" :foreground "OrangeRed2"))))
 '(info-elisp-syntax-class-item ((t (:background "Black" :foreground "Khaki3"))))
 '(info-elisp-user-option-ref-item ((t (:background "Black" :foreground "LawnGreen"))))
 '(info-elisp-variable-ref-item ((t (:background "Black" :foreground "#0048FF"))))
 '(info-file ((t (:background "Black" :foreground "Blue"))))
 '(info-menu ((t (:foreground "DarkRed"))))
 '(info-menu-header ((t (:inherit variable-pitch :foreground "khaki3" :weight bold))))
 '(info-quoted-name ((t (:foreground "Purple"))))
 '(info-string ((t (:foreground "Grey50"))))
 '(info-title-1 ((t (:inherit info-title-2 :foreground "Gold" :height 1.1))))
 '(info-title-2 ((t (:inherit info-title-3 :foreground "red" :height 1.1))))
 '(info-title-3 ((t (:inherit info-title-4 :foreground "DodgerBlue" :height 1.1))))
 '(info-title-4 ((t (:inherit variable-pitch :foreground "Green" :weight bold))))
 '(isearch ((((class color) (min-colors 88) (background dark)) (:background "brown" :foreground "white"))))
 '(isearch-fail ((((class color) (min-colors 88) (background dark)) (:background "red4" :foreground "white"))))
 '(italic ((t (:underline nil :slant normal))))
 '(match ((((class color) (min-colors 88) (background dark)) (:background "Black" :foreground "Grey70" :weight extra-bold))))
 '(message-header-subject ((t (:foreground "gold" :weight bold))))
 '(message-header-to ((t (:foreground "DarkRed" :weight bold))))
 '(minibuffer-prompt ((((background dark)) (:foreground "green"))))
 '(org-date ((((class color) (background dark)) (:foreground "ivory4" :underline t))))
 '(org-ellipsis ((((class color) (background dark)) (:background "black" :foreground "Cyan" :strike-through nil))))
 '(org-hide ((((background dark)) (:foreground "black"))))
 '(org-level-3 ((t (:inherit outline-3 :foreground "DeepSkyBlue"))))
 '(org-level-5 ((t (:inherit outline-5 :foreground "VioletRed3"))))
 '(org-level-6 ((t (:inherit outline-6 :foreground "violet"))))
 '(org-level-7 ((t (:inherit outline-7 :foreground "khaki3"))))
 '(org-level-8 ((t (:inherit outline-8 :foreground "DarkSeaGreen"))))
 '(org-link ((((class color) (background dark)) (:foreground "Cyan"))))
 '(org-mode-line-clock ((t (:foreground "red" :box (:line-width -1 :style released-button)))) t)
 '(org-special-keyword ((((class color) (min-colors 16) (background dark)) (:foreground "rosybrown1"))))
 '(org-todo ((t (:foreground "Red" :weight bold))))
 '(region ((((class color) (min-colors 88) (background dark)) (:background "green4" :foreground "black"))))
 '(secondary-selection ((((class color) (min-colors 88) (background dark)) (:background "Black"))))
 '(show-paren-match ((((class color) (background dark)) (:background "green" :foreground "black"))))
 '(show-paren-mismatch ((((class color)) (:background "red" :foreground "white"))))
 '(showtip-face ((((class color)) (:inherit tooltip :background "#730D0D" :foreground "White" :height 1.0 :family "文泉驿等宽微米黑"))))
 '(tooltip ((((class color)) (:inherit variable-pitch :background "DarkRed" :foreground "White" :family "文泉驿等宽微米黑"))))
 '(which-func ((((class color) (min-colors 88) (background dark)) (:foreground "Yellow"))))
 '(whitespace-highlight ((((class color) (background dark)) (:background "yellow2" :foreground "black"))))
 '(yas/field-highlight-face ((t (:background "grey20" :foreground "gold"))))
 '(yas/mirror-highlight-face ((t (:background "brown" :foreground "white")))))