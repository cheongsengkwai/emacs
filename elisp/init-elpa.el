;; init-elpa.el
;; 增加软件包仓库

(require 'package)

(add-to-list 'package-archives '("gnu"   . "http://mirrors.cloud.tencent.com/elpa/gnu/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("org" . "https://raw.githubusercontent.com/d12frosted/elpa-mirror/master/org/") t)

;; 定义require-package函数
(defun require-package (package &optional min-version no-refresh)
  "Install given PACKAGE, optionally requiring MIN-VERSION.
If NO-REFRESH is non-nil, the available package lists will not be
re-downloaded in order to locate PACKAGE."
  (if (package-installed-p package min-version)
      t
    (if (or (assoc package package-archive-contents) no-refresh)
        (package-install package)
      (progn
        (package-refresh-contents)
        (require-package package min-version t)))))
;; 强行提前初始化ELPA。因为默认情况下Emacs在init.el加载完之后才开始初始化ELPA，
;; 而我们把大多数包的初始化函数都放在init.el中，如果不提前初始化ELPA会导致后面的
;; 初始化过程出错（对应的包文件还没有加载进来）。

(package-initialize)
(provide 'init-elpa)

