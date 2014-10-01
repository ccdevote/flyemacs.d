;;; auto-indent-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (auto-indent-global-mode auto-indent-mode-on auto-indent-mode
;;;;;;  auto-indent-eol-char-newline auto-indent-eol-newline) "auto-indent-mode"
;;;;;;  "auto-indent-mode.el" (21548 14419 795781 639000))
;;; Generated autoloads from auto-indent-mode.el

(autoload 'auto-indent-eol-newline "auto-indent-mode" "\
Auto-indent function for `end-of-line' and then newline.\n\n(fn)" t nil)

(autoload 'auto-indent-eol-char-newline "auto-indent-mode" "\
Auto-indent function for `end-of-line', insert `auto-indent-eol-char', and then newline.\n\n(fn)" t nil)

(autoload 'auto-indent-mode "auto-indent-mode" "\
Auto Indent minor mode.\n\nWith no argument, this command toggles the mode.\npositive prefix argument turns on the mode.\nNegative prefix argument turns off the mode.\n\nWhen auto-indent-mode minor mode is enabled, yanking or pasting automatically indents\n\nFall back to default, non-indented yanking by preceding the yanking commands with C-u.\n\nBased on auto-indentation posts, slightly redefined to allow it to be a minor mode\n\nhttp://www.emacswiki.org/emacs/AutoIndentation\n\n(fn &optional ARG)" t nil)

(autoload 'auto-indent-mode-on "auto-indent-mode" "\
Turn on auto-indent minor mode.\n\n(fn)" t nil)

(defvar auto-indent-global-mode nil "\
Non-nil if Auto-Indent-Global mode is enabled.\nSee the command `auto-indent-global-mode' for a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `auto-indent-global-mode'.")

(custom-autoload 'auto-indent-global-mode "auto-indent-mode" nil)

(autoload 'auto-indent-global-mode "auto-indent-mode" "\
Toggle Auto-Indent mode in all buffers.\nWith prefix ARG, enable Auto-Indent-Global mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nAuto-Indent mode is enabled in all buffers where\n`auto-indent-mode-on' would do it.\nSee `auto-indent-mode' for more information on Auto-Indent mode.\n\n(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("auto-indent-mode-pkg.el") (21548 14419
;;;;;;  820776 983000))

;;;***

(provide 'auto-indent-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; auto-indent-mode-autoloads.el ends here
