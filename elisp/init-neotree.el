(use-package neotree
  :ensure t
  :init (setq neo-window-fixed-size nil
          neo-theme (if (display-graphic-p) 'icons 'arrow))
  :bind (("C-b" . neotree-toggle)))


 (provide 'init-neotree)
