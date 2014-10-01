;;; es-lib-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (es-ack-pin-folder es-ack-replace-symbol es-query-replace-symbol-at-point
;;;;;;  es-manage-unsaved-buffers es-ido-like-helm es-comment-dwim
;;;;;;  es-c-expand-region es-mouse-yank-replace-symbol es-mouse-copy-symbol
;;;;;;  es-highlighter es-new-empty-buffer es-jump-line es-push-line
;;;;;;  es-find-function-bound-to es-kill-buffer-dont-ask) "es-lib-core-functions"
;;;;;;  "es-lib-core-functions.el" (21548 13849 939761 837000))
;;; Generated autoloads from es-lib-core-functions.el

(autoload 'es-kill-buffer-dont-ask "es-lib-core-functions" "\
\n\n(fn &optional BUFFER)" t nil)

(autoload 'es-find-function-bound-to "es-lib-core-functions" "\
\n\n(fn KEY-SEQUENCE)" t nil)

(autoload 'es-push-line "es-lib-core-functions" "\
beginning-of-line + open line.\n\n(fn)" t nil)

(autoload 'es-jump-line "es-lib-core-functions" "\
end-of-line + newline.\n\n(fn)" t nil)

(autoload 'es-new-empty-buffer "es-lib-core-functions" "\
\n\n(fn)" t nil)

(autoload 'es-highlighter "es-lib-core-functions" "\
Like `highlight-symbol-at-point', but will also (un)highlight a phrase if the region is active.\n\n(fn)" t nil)

(autoload 'es-mouse-copy-symbol "es-lib-core-functions" "\
\n\n(fn EVENT)" t nil)

(autoload 'es-mouse-yank-replace-symbol "es-lib-core-functions" "\
\n\n(fn EVENT)" t nil)

(autoload 'es-c-expand-region "es-lib-core-functions" "\
A simplee version of expand-region for c-like languages.\nMarks the symbol on first call, then marks the statement.\n\n(fn)" t nil)

(autoload 'es-comment-dwim "es-lib-core-functions" "\
\n\n(fn &optional ARG)" t nil)

(autoload 'es-ido-like-helm "es-lib-core-functions" "\
Choose from a concatenated list of buffers and recent files.\n\n(fn &optional THIS-MODE-ONLY)" t nil)

(autoload 'es-manage-unsaved-buffers "es-lib-core-functions" "\
Similar to what happends when emacs is about to quit.\n\n(fn)" t nil)

(autoload 'es-query-replace-symbol-at-point "es-lib-core-functions" "\
\n\n(fn)" t nil)

(autoload 'es-ack-replace-symbol "es-lib-core-functions" "\
Repalace symbol at point, or region contents in multiple\nfiles.\n\n(fn FROM-SYMBOL-OR-STRING TO-SYMBOL-OR-STRING &key DIRECTORY AUTO-SAVE FINISH-FUNC SILENT)" t nil)

(autoload 'es-ack-pin-folder "es-lib-core-functions" "\
Set ack root directory for one buffer only.\nAck won't prompt for a directory name in that buffer.\n\n(fn FOLDER)" t nil)

;;;***

;;;### (autoloads (es-duplicate-line-or-region) "es-lib-duplicate"
;;;;;;  "es-lib-duplicate.el" (21548 13849 907761 835000))
;;; Generated autoloads from es-lib-duplicate.el

(autoload 'es-duplicate-line-or-region "es-lib-duplicate" "\
\n\n(fn &optional START END ARG)" t nil)

;;;***

;;;### (autoloads (es-decrease-number-at-point es-increase-number-at-point)
;;;;;;  "es-lib-number-at-point" "es-lib-number-at-point.el" (21548
;;;;;;  13849 927761 836000))
;;; Generated autoloads from es-lib-number-at-point.el

(autoload 'es-increase-number-at-point "es-lib-number-at-point" "\
Increases the digit at point.\nThe increment some power of 10, depending on the positon of the cursor. If there\nis no number at point, will try to increment the previous number on the same\nline.\n\n(fn)" t nil)

(autoload 'es-decrease-number-at-point "es-lib-number-at-point" "\
See documentation for `es-increase-number-at-point'.\n\n(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("es-lib-buffer-local-set-key.el" "es-lib-core-macros.el"
;;;;;;  "es-lib-lexical.el" "es-lib-pkg.el" "es-lib-readme-generator.el"
;;;;;;  "es-lib-text-navigate.el" "es-lib-total-line.el" "es-lib.el")
;;;;;;  (21548 13849 950679 309000))

;;;***

(provide 'es-lib-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; es-lib-autoloads.el ends here
