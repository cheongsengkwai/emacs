(use-package nerd-icons
  :custom
  (nerd-icons-font-family "Symbols Nerd Font Mono")
  :ensure t)
(use-package nerd-icons-dired
  :hook
  (dired-mode . nerd-icons-dired-mode))

(provide 'init-nerd-icons)
