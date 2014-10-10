;;; org-jekyll-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (org-jekyll-mode org-jekyll/publish-project org-jekyll/new-post)
;;;;;;  "org-jekyll-mode" "org-jekyll-mode.el" (21558 6911 236248
;;;;;;  676000))
;;; Generated autoloads from org-jekyll-mode.el

(autoload 'org-jekyll/new-post "org-jekyll-mode" "\
Create an org-mode file in org-jekyll/org-mode-project-root.\nIf you want to create the post in a new sub directory, you can \nuse / to seprate the subdirectory and file name. e.g: I want to\ncreate a file named hello-world and put it in subdirectory '2013',\nthen I will input like below:\n2013/hello-world\n\nIf you don't setting the org-jekyll/org-mode-project-root, then\nit will failed.\n\n(fn &optional WITH-DATE-PREFIX)" t nil)

(autoload 'org-jekyll/publish-project "org-jekyll-mode" "\
\n\n(fn)" t nil)

(autoload 'org-jekyll-mode "org-jekyll-mode" "\
An emacs minor mode for creating and publishing org-mode files to jekyll standard post\n\n(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("org-jekyll-mode-pkg.el") (21558 6911
;;;;;;  274054 868000))

;;;***

(provide 'org-jekyll-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-jekyll-mode-autoloads.el ends here
