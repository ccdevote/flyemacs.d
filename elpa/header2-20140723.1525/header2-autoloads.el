;;; header2-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (update-file-header make-box-comment make-divider
;;;;;;  make-revision make-header) "header2" "header2.el" (21557
;;;;;;  2826 349829 360000))
;;; Generated autoloads from header2.el

(autoload 'make-header "header2" "\
Insert (mode-dependent) header comment at beginning of file.\nA header is composed of a mode line, a body, and an end line.  The body is\nconstructed by calling the functions in `make-header-hook'.  The mode line\nand end lines start and terminate block comments.  The body lines continue\nthe comment.\n\n(fn)" t nil)

(autoload 'make-revision "header2" "\
Prepare for a new history revision.  Insert history line if inexistant.\n\n(fn)" t nil)

(autoload 'make-divider "header2" "\
Insert a comment divider line: the comment start, filler, and end.\nEND-COL is the last column of the divider line.\n\n(fn &optional END-COL)" t nil)

(autoload 'make-box-comment "header2" "\
Insert an empty (mode dependent) box comment.\nEND-COL is the last column of the divider line.\n\n(fn &optional END-COL)" t nil)

(autoload 'update-file-header "header2" "\
Update file header.\nSearch the first `header-max' chars in buffer using regexps in\n`file-header-update-alist'.  When a match is found, apply the\ncorresponding function with point located just after the match.\nThe functions can use `match-beginning' and `match-end' to find\nthe strings that cause them to be invoked.\n\n(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("header2-pkg.el") (21557 2826 383310 626000))

;;;***

(provide 'header2-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; header2-autoloads.el ends here
