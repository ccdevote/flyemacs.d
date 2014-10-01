;;; auto-auto-indent-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (auto-auto-indent-mode) "auto-auto-indent" "auto-auto-indent.el"
;;;;;;  (21548 13854 879762 8000))
;;; Generated autoloads from auto-auto-indent.el

(autoload 'auto-auto-indent-mode "auto-auto-indent" "\
Automatic automatic indentation.\nWorks pretty well for lisp out of the box.\nOther modes might need some tweaking to set up:\nIf you trust the mode's automatic indentation completely, you can add to it's\ninit hook:\n\n(set (make-local-variable 'aai-indent-function)\n     'aai-indent-defun)\n\nor\n\n(set (make-local-variable 'aai-indent-function)\n     'aai-indent-forward)\n\ndepending on whether the language has small and clearly\nidentifiable functions, that `beginning-of-defun' and\n`end-of-defun' can find.\n\nIf on the other hand you don't trust the mode at all, but like\nthe cursor correction and delete-char behaviour,\n\nyou can add\n\n(set (make-local-variable\n      'aai-after-change-indentation) nil)\n\nif the mode indents well in all but a few cases, you can change the\n`aai-indentable-line-p-function'. This is what I have in my php mode setup:\n\n(set (make-local-variable\n      'aai-indentable-line-p-function)\n     (lambda ()\n       (not (or (es-line-matches-p \"EOD\")\n                (es-line-matches-p \"EOT\")))))\n\n(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-auto-indent-pkg.el") (21548 13854
;;;;;;  912911 399000))

;;;***

(provide 'auto-auto-indent-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; auto-auto-indent-autoloads.el ends here
