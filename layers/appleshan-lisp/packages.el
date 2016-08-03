;;; packages.el --- appleshan-lisp Layer packages File for Spacemacs
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
(setq appleshan-lisp-packages
    '(
      lispy
      ))

(defun appleshan-lisp/init-lispy ()
  "Initialize lispy"
  (use-package lispy
    :defer t
    :diminish (lispy-mode)
    :init
    (progn
      (defun my-lispy-hook ()
        (lispy-mode 1))
      (add-hook 'emacs-lisp-mode-hook 'my-lispy-hook)
      (add-hook 'ielm-mode-hook 'my-lispy-hook)
      (add-hook 'inferior-emacs-lisp-mode-hook 'my-lispy-hook)
      (add-hook 'scheme-mode-hook 'my-lispy-hook))
    :config
    (progn
      (defun conditionally-enable-lispy ()
        (when (eq this-command 'eval-expression)
          (lispy-mode 1)))

      (add-hook 'minibuffer-setup-hook 'conditionally-enable-lispy)

      (define-key lispy-mode-map (kbd "s-1") 'lispy-describe-inline)
      (define-key lispy-mode-map (kbd "s-k") 'lispy-splice)
      (define-key lispy-mode-map (kbd "s-2") 'lispy-arglist-inline))))

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: nil
;; End:

;;; packages.el ends here
