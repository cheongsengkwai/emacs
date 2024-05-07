(require 'burly)


(use-package tab-bar
  :bind (("C-<left>" . tab-previous)
         ("C-<right>" . tab-next)
         ("C-r" . tab-rename)
         ("C-s" . tab-bar-switch-to-tab)
         ("C-q" . tab-close)
         ("C-n" . tab-new)))

(use-package burly
  :bind (("C-x r w" . burly-bookmark-windows)
         ("C-x r o" . burly-open-bookmark)))



(provide 'init-burly)
