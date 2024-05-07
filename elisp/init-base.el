;; 编辑属性设置

;; 设置编码
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)

;;默认不想显示此内容
(setq  initial-scratch-message nil)
;; 关闭Emacs的欢迎界面
(setq inhibit-startup-message t)

;;不显示工具栏
(menu-bar-mode -1)

;; 关闭烦出错时的提示声
(setq visible-bell t)
(setq  ring-bell-function 'ignore)

;;不使用对话框进行（是，否 取消,打开文件） 的选择，而是用minibuffer
(setq-default  use-dialog-box nil)

;; 全局开启行号显示


(use-package display-line-numbers
      :ensure nil
      :init
      (setq display-line-numbers-width-start t)
      (setq display-line-numbers-current-absolute t)
      (setq-default display-line-numbers 'visual)
      :config
      (dolist (mode '(org-mode-hook
                      term-mode-hook
                      eshell-mode-hook
                      vterm-mode-hook
                      which-key-mode-hook
                      helpful-mode-hook
                      speedbar-mode-hook
                      help-mode-hook))
        (add-hook mode (lambda () (display-line-numbers-mode 0)))))




;;设置行号显示列的宽度
(setq linum-format "%4d ")

;; 设置问答为简问答
(fset 'yes-or-no-p 'y-or-n-p)

;; 不生成备份文件
(setq make-backup-files nil)
(setq create-lockfiles nil)

(provide 'init-base)
