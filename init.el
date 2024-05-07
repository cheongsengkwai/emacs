;; 添加elisp路径到启动加载路径
(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))
;; 添加elpa路径到启动加载路径，该路径为包管理器elpa所使用
(add-to-list 'load-path (expand-file-name "elpa" user-emacs-directory))
;;----------------------------------------------------------------------------
(require 'init-base) ;; 加载base,编辑属性设置
(require 'init-elpa) ;; 加载ELPA，并定义了require-package函数
(require 'init-wubi)
(require 'init-window-numbering) ;;窗口操作
(require 'init-dired)
(require 'init-eshell)
(require 'init-org)
(require 'init-burly)
(require 'slime-helper)
;;(require 'init-neotree)
;;(require 'init-nerd-icons)
(provide 'init)






(require 'sr-speedbar)
(setq speedbar-show-unknown-files t) 
(setq speedbar-use-images nil) 
(setq speedbar-tag-hierarchy-method nil)
(setq sr-speedbar-right-side nil)
(setq sr-speedbar-width 25)
(setq dframe-update-speed t)
(global-set-key (kbd "<f5>") (lambda()
          (interactive)
          (sr-speedbar-toggle)))

 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-archives
   '(("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/")))
 '(package-selected-packages
   '(rime slime sr-speedbar nerd-icons burly org-modern dired-subtree neotree treemacs window-numbering ##))
 '(warning-suppress-types '((frameset))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
