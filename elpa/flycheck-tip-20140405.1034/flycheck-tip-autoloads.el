;;; flycheck-tip-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (eclim-tip-cycle-reverse eclim-tip-cycle) "eclim-tip"
;;;;;;  "eclim-tip.el" (21560 41028 307445 305000))
;;; Generated autoloads from eclim-tip.el

(autoload 'eclim-tip-cycle "eclim-tip" "\
\n\n(fn &optional REVERSE)" t nil)

(autoload 'eclim-tip-cycle-reverse "eclim-tip" "\
\n\n(fn)" t nil)

;;;***

;;;### (autoloads (flycheck-tip-cycle-reverse flycheck-tip-cycle)
;;;;;;  "flycheck-tip" "flycheck-tip.el" (21560 41028 291445 304000))
;;; Generated autoloads from flycheck-tip.el

(autoload 'flycheck-tip-cycle "flycheck-tip" "\
Move to next error if it's exists.\nIf it wasn't exists then move to previous error.\nMove to previous error if REVERSE is non-nil.\n\n(fn &optional REVERSE)" t nil)

(autoload 'flycheck-tip-cycle-reverse "flycheck-tip" "\
Do `flycheck-tip-cycle by reverse order.\n\n(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("error-tip.el" "flycheck-tip-pkg.el" "flymake-tip.el")
;;;;;;  (21560 41028 325336 281000))

;;;***

(provide 'flycheck-tip-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; flycheck-tip-autoloads.el ends here
