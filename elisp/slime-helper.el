;;(ql:quickload "quicklisp-slime-helper")

(add-hook 'lisp-mode-hook (lambda ()
                            (unless (featurep 'slime)
                              (load (expand-file-name "~/.emacs.d/elisp/slime-helper.el"))
                              (require 'slime-autoloads)
                              (normal-mode))))

(setq inferior-lisp-program "sbcl")


 (provide 'slime-helper)
