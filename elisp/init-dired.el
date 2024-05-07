(add-to-list 'load-path "~/.emacs.d/elpa/dired-hacks")
(require 'dired-ranger)

(use-package dired-ranger
  :ensure t
  :bind (:map dired-mode-map
              ("W" . dired-ranger-copy)
              ("X" . dired-ranger-move)
              ("Y" . dired-ranger-paste)))





(add-hook 'dired-mode-hook 
#'dired-hide-details-mode)

(provide 'init-dired)
