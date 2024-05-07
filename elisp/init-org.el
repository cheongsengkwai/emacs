(require 'org)
(setq org-directory "~/.emacs.d/org-mode")



(setq org-capture-templates
'(("t" "Todo" entry (file+headline "~/Dropbox/org/todo.org" "Todo soon")
"* TODO %? \n %^t")
("i" "Idea" entry (file+headline "~/Dropbox/org/ideas.org" "Ideas")
"* %? \n %U")
("e" "Tweak" entry (file+headline "~/Dropbox/org/tweaks.org" "Tweaks")
"* %? \n %U")
("l" "Learn" entry (file+headline "~/Dropbox/org/learn.org" "Learn")
"* %? \n")
("w" "Work note" entry (file+headline "~/Dropbox/org/work.org" "Work")
"* %? \n")
("m" "Check movie" entry (file+headline "~/Dropbox/org/check.org" "Movies")
"* %? %^g")
("n" "Check book" entry (file+headline "~/Dropbox/org/check.org" "Books")
"* %^{book name} by %^{author} %^g")))



(define-key global-map "\C-cc" 'org-capture)


;;_-----------------




;; Write Blog
(defvar post-dir "~/emacs.d/org-mode/")
(defun blog-post (title)
  (interactive "sEnter title: ")
  (let ((post-file (concat post-dir
                           title
                           ".org")))
    (progn
      (switch-to-buffer (find-file-noselect post-file))
      (insert (concat "#+TITLE:\n"
                      "\n"
                      "* \n"
                      "** \n"
                      "---\n"
                      "layout     : post\n"
                      "title      : \n"
                      "categories : \n"
                      "tags       : \n"
                      "---\n"
                      " \n"))))
  )
(define-key global-map "\C-cp" 'blog-post)
    






;:_----_-------------
(defun open-my-init-file()

(interactive)

(find-file "~/.emacs.d/org-mode"))

(global-set-key (kbd "<f4>") 'open-my-init-file)

(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))


(provide 'init-org)
