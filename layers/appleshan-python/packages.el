;;; packages.el --- appleshan-python Layer packages File for Spacemacs
;;
;; Copyright (c) 2016-2020 Apple Shan
;;
;; Author: Apple Shan <apple.shan@gmail.com>
;; URL: https://github.com/appleshan/my-spacemacs-config
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq appleshan-python-packages
    '(
      company
      elpy ; Emacs Lisp Python Environment
      flycheck
      py-autopep8
      ))

;; List of packages to exclude.
(setq appleshan-python-excluded-packages '())

(defun appleshan-python/post-init-company ()
  (with-eval-after-load 'company
    (spacemacs|add-company-hook inferior-python-mode)
    (push 'company-capf company-backends-inferior-python-mode)
    (add-hook 'inferior-python-mode-hook
              (lambda ()
                (setq-local company-minimum-prefix-length 0)
                (setq-local company-idle-delay 0.5)))
  ))

; require
; pip install rope
; pip install jedi
; # flake8 用来检查语法错误
; pip install flake8
; # importmagic 用来自动引入需要的包
; pip install importmagic
; # autopep8 用来检查PEP8规范
; pip install autopep8
; # yapf 用来格式化代码
; pip install yapf
(defun appleshan-python/init-elpy ()
  (use-package elpy
    :defer t
    :init
    (progn
      ;; Elpy removes the modeline lighters. Let's override this
      ; (defun elpy-modules-remove-modeline-lighter (mode-name))

      (setq elpy-modules '(elpy-module-sane-defaults
                           elpy-module-eldoc
                           elpy-module-pyvenv))

      (when (configuration-layer/layer-usedp 'auto-completion)
        (add-to-list 'elpy-modules 'elpy-module-company)
        (add-to-list 'elpy-modules 'elpy-module-yasnippet))

      ; (setq elpy-rpc-python-command "python3")

      (elpy-enable)
      (elpy-use-ipython)
      )))

;; use flycheck not flymake with elpy
(defun appleshan-python/post-init-flycheck ()
  (with-eval-after-load 'flycheck
    (add-hook 'elpy-mode-hook 'flycheck-mode)
  ))

;; enable autopep8 formatting on save
; (require 'py-autopep8)
; (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
(defun appleshan-python/init-py-autopep8 ()
  (use-package py-autopep8
    :defer t
    :config
    (progn
      (setq py-autopep8-options '("--max-line-length=100"))
      (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)
    )))

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: nil
;; End:

;;; packages.el ends here