;;; confluence-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (confluence-search confluence-get-page) "confluence"
;;;;;;  "confluence.el" (21566 155 47705 933000))
;;; Generated autoloads from confluence.el

(autoload 'confluence-get-page "confluence" "\
Loads a confluence page for the given SPACE-NAME and PAGE-NAME\ninto a buffer (if not already loaded) and switches to it.\nAnalogous to `find-file'.  Every time you navitage to a page with\nthis function (or M-. `confluence-get-page-at-point'), it is\nsaved off into a stack (`confluence-tag-stack') that you can then\npop back out of to return back through your navigation path (with\nM-* `confluence-pop-tag-stack').\n\n(fn &optional PAGE-NAME SPACE-NAME ANCHOR-NAME)" t nil)

(autoload 'confluence-search "confluence" "\
Runs a confluence search for QUERY, optionally restricting the results to\nthe given SPACE-NAME.\n\n(fn &optional QUERY SPACE-NAME)" t nil)

;;;***

;;;### (autoloads nil nil ("confluence-edit.el" "confluence-pkg.el"
;;;;;;  "confluence-xml-edit.el") (21566 155 105016 843000))

;;;***

(provide 'confluence-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; confluence-autoloads.el ends here
