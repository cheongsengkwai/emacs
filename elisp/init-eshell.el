;;清屏
(defun eshell/clear ()
  (let ((eshell buffer maximum lines 0))
    (eshell-truncate-buffer)))
(provide 'init-eshell)


;;退出Eshell
(add-hook 
 'eshell-mode-hook
 (lambda ()
   (define-key eshell-mode-map (kbd "C-d")
     (lambda (arg)
       "Delete a character or quit eshell if there's nothing to delete."
       (interactive "p")
       (if (and (eolp) (looking-back eshell-prompt-regexp nil))
           (eshell-life-is-too-much)
         (delete-char arg))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; init-eshell.el ends here
