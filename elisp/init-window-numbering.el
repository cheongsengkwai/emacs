(require 'window-numbering)
(window-numbering-mode 1)

(winner-mode 1)
(global-set-key (kbd "C-x 4 u") 'winner-undo)
(global-set-key (kbd "C-x 4 r") 'winner-redo)

(provide 'init-window-numbering)
