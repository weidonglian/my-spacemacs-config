;;; packages.el --- appleshan-chinese Layer packages File for Spacemacs
;;
;; Copyright (c) 2016-2020 Apple Shan
;;
;; Author: Apple Shan <apple.shan@gmail.com>
;; URL: https://github.com/appleshan/my-spacemacs-config
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq appleshan-chinese-packages
    '(
      cal-china-x
      ; chinese-pyim
      pangu-spacing
      ))

;; List of packages to exclude.
(setq appleshan-chinese-excluded-packages '())

(defun appleshan-chinese/init-cal-china-x ()
  (use-package cal-china-x
    :defer t
    :init (require 'cal-china-x)
    :config
    (progn
      (setq mark-holidays-in-calendar t)
      ;; (setq cal-china-x-important-holidays cal-china-x-chinese-holidays)

      (setq christian-holidays nil) ;; 不显示基督教的节日
      (setq hebrew-holidays nil)    ;; 不显示希伯来人的节日
      (setq islamic-holidays nil)   ;; 不显示伊斯兰教的节日

      (setq holiday-holidays
          '(;;公历节日
            (holiday-fixed 1 1 "元旦")
            (holiday-fixed 2 14 "情人节")
            (holiday-fixed 3 8 "妇女节")
            (holiday-fixed 3 14 "白色情人节")
            (holiday-fixed 4 1 "愚人节")
            (holiday-fixed 5 1 "劳动节")
            (holiday-fixed 5 4 "青年节")
            (holiday-float 5 0 2 "母亲节")
            (holiday-fixed 6 1 "儿童节")
            (holiday-float 6 0 3 "父亲节")
            (holiday-fixed 9 10 "教师节")
            (holiday-fixed 10 1 "国庆节")
            (holiday-fixed 12 25 "圣诞节")
            ;; 农历节日
            (holiday-lunar 1 1 "春节" 0)
            (holiday-lunar 1 2 "春节" 0)
            (holiday-lunar 1 3 "春节" 0)
            (holiday-lunar 1 15 "元宵节 (正月十五)" 0)
            (holiday-solar-term "清明" "清明节")
            (holiday-lunar 5 5 "端午节 (五月初五)" 0)
            (holiday-lunar 7 7 "七夕情人节 (七月初七)" 0)
            (holiday-lunar 8 15 "中秋节 (八月十五)" 0)
            (holiday-lunar 9 9 "重阳节 (九月初九)" 0)
            (holiday-lunar 12 8 "腊八节" 0)
            (holiday-lunar 12 22 "冬至" 0)
            ;; 生日 -- 家人,朋友
            (holiday-fixed 11 18 "女儿生日")
            (holiday-lunar 4 25 "老婆生日" 0)
            (holiday-lunar 7 10 "我的生日" 0)
            ))
      ;; 只显示我定制的节日
      (setq calendar-holidays holiday-holidays))))

;; Pinyin Input Method
; (defun appleshan-chinese/init-chinese-pyim ()
;   (use-package chinese-pyim
;     :ensure nil
;     :init
;     (progn
;       (setq pyim-page-length 10
;             pyim-use-tooltip 'pos-tip   ; 使用 pos-tip 包来绘制选词框（这种选词框比较好看）
;             x-gtk-use-system-tooltips t ; Linux 平台下，emacs 可以使用 GTK 来绘制选词框
;             pyim-directory (concat dotspacemacs-directory "chinese/")
;             pyim-cache-directory (concat dotspacemacs-directory "chinese/cache/")
;             pyim-personal-file (concat pyim-directory "pyim-personal.txt")
;             pyim-property-file (concat pyim-directory "pyim-words-property.txt")
;             default-input-method "chinese-pyim")
;       ; (evilified-state-evilify pyim-dicts-manager-mode pyim-dicts-manager-mode-map)
;       )
;     :config
;     (progn
;       ;; 激活词库
;       (setq pyim-dicts (quote
;         ((:name "pyim-bigdict"
;           :file "~/Dropbox/emacs/pyim-bigdict.pyim"
;           :coding utf-8-unix
;           :dict-type pinyin-dict)
;          ; (:name "pyim-greatdict"
;          ;  :file "~/Dropbox/emacs/pyim-greatdict.pyim"
;          ;  :coding utf-8-unix
;          ;  :dict-type pinyin-dict)
;          )
;         ))
;       ; (use-package chinese-pyim-basedict
;       ;   :ensure nil
;       ;   :init (chinese-pyim-basedict-enable))

;       ; (setq-default pyim-english-input-switch-functions
;       ;               '(pyim-probe-dynamic-english
;       ;                 pyim-probe-isearch-mode
;       ;                 pyim-probe-program-mode
;       ;                 pyim-probe-org-structure-template))

;       ; (setq-default pyim-punctuation-half-width-functions
;       ;               '(pyim-probe-punctuation-line-beginning
;       ;                 pyim-probe-punctuation-after-punctuation))

;       ;; 为 isearch 开启拼音搜索功能
;       (setq pyim-isearch-enable-pinyin-search t)
;       ;; 禁用 dabberv 中文补全
;       (setq pyim-company-complete-chinese-enable nil))
;     :bind (("C-M-j" . pyim-convert-pinyin-at-point)
;            ("C-;" . pyim-delete-word-from-personal-buffer))
;     ))

; (defun appleshan-chinese/post-init-fcitx ()
;   (fcitx-aggressive-setup))

;; 覆盖 Chinese Layer 的 init 方法
(defun appleshan-chinese/init-pangu-spacing ()
  "覆盖 Chinese-layer 中的设置。默认关闭 pangu-spacing，只有在 buffer 比较小的时候才启动，
如果是启动之后再关闭的话就开的太慢了。"
  (use-package pangu-spacing
    :init
    (global-pangu-spacing-mode -1)
    (spacemacs|hide-lighter pangu-spacing-mode)
    ;; Always insert `real' space in org-mode.
    (add-hook 'org-mode-hook
              '(lambda ()
                 (set (make-local-variable 'pangu-spacing-real-insert-separtor) t)))

    (defun enable-pangu-spacing-when-buffer-not-large ()
      "when buffer is not large, turn on it"
      (when (< (buffer-size) *large-buffer-threshold*)
        (pangu-spacing-mode 1)))

    (dolist (i '(prog-mode-hook text-mode-hook))
      (add-hook i 'enable-pangu-spacing-when-buffer-not-large))
    ))

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: nil
;; End:

;;; packages.el ends here
