;;; flycheck-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (flycheck-define-error-level flycheck-info flycheck-def-option-var
;;;;;;  flycheck-def-config-file-var global-flycheck-mode flycheck-mode)
;;;;;;  "flycheck" "flycheck.el" (21560 41027 279445 269000))
;;; Generated autoloads from flycheck.el

(autoload 'flycheck-mode "flycheck" "\
Minor mode for on-the-fly syntax checking.\n\nWhen called interactively, toggle `flycheck-mode'.  With prefix\nARG, enable `flycheck-mode' if ARG is positive, otherwise disable\nit.\n\nWhen called from Lisp, enable `flycheck-mode' if ARG is omitted,\nnil or positive.  If ARG is `toggle', toggle `flycheck-mode'.\nOtherwise behave as if called interactively.\n\nIn `flycheck-mode' the buffer is automatically syntax-checked\nusing the first suitable syntax checker from `flycheck-checkers'.\nUse `flycheck-select-checker' to select a checker for the current\nbuffer manually.\n\n\\{flycheck-mode-map}\n\n(fn &optional ARG)" t nil)

(defvar global-flycheck-mode nil "\
Non-nil if Global-Flycheck mode is enabled.\nSee the command `global-flycheck-mode' for a description of this minor mode.\nSetting this variable directly does not take effect;\neither customize it (see the info node `Easy Customization')\nor call the function `global-flycheck-mode'.")

(custom-autoload 'global-flycheck-mode "flycheck" nil)

(autoload 'global-flycheck-mode "flycheck" "\
Toggle Flycheck mode in all buffers.\nWith prefix ARG, enable Global-Flycheck mode if ARG is positive;\notherwise, disable it.  If called from Lisp, enable the mode if\nARG is omitted or nil.\n\nFlycheck mode is enabled in all buffers where\n`flycheck-mode-on-safe' would do it.\nSee `flycheck-mode' for more information on Flycheck mode.\n\n(fn &optional ARG)" t nil)

(autoload 'flycheck-def-config-file-var "flycheck" "\
Define SYMBOL as config file variable for CHECKER, with default FILE-NAME.\n\nSYMBOL is declared as customizable, buffer-local variable using\n`defcustom', to provide a configuration file for the given syntax\nCHECKER.  CUSTOM-ARGS are forwarded to `defcustom'.\n\nFILE-NAME is the initial value of the new variable.  If omitted,\nthe default value is nil.\n\nUse this together with the `config-file' form in the `:command'\nargument to `flycheck-define-checker'.\n\n(fn SYMBOL CHECKER &optional FILE-NAME &rest CUSTOM-ARGS)" nil t)

(put 'flycheck-def-config-file-var 'lisp-indent-function '3)

(autoload 'flycheck-def-option-var "flycheck" "\
Define SYMBOL as option variable with INIT-VALUE for CHECKER.\n\nSYMBOL is declared as customizable variable, buffer-local\nvariable using `defcustom', to provide an option for the given\nsyntax CHECKER.  INIT-VALUE is the initial value of the variable,\nand DOCSTRING is its docstring.  CUSTOM-ARGS are forwarded to\n`defcustom'.\n\nUse this together with the `option', `option-list' and\n`option-flag' forms in the `:command' argument to\n`flycheck-define-checker'.\n\n(fn SYMBOL INIT-VALUE CHECKER DOCSTRING &rest CUSTOM-ARGS)" nil t)

(put 'flycheck-def-option-var 'lisp-indent-function '3)

(put 'flycheck-def-option-var 'doc-string-elt '4)

(autoload 'flycheck-info "flycheck" "\
Open the Flycheck manual.\n\n(fn)" t nil)

(autoload 'flycheck-define-error-level "flycheck" "\
Define a new error LEVEL with PROPERTIES.\n\nThe following PROPERTIES constitute an error level:\n\n`:severity SEVERITY'\n     A number denoting the severity of this level.  The higher\n     the number, the more severe is this level compared to other\n     levels.  Defaults to 0.\n\n     The severity is used by `flycheck-error-level-<' to\n     determine the ordering of errors according to their levels.\n\n`:overlay-category CATEGORY'\n     A symbol denoting the overlay category to use for error\n     highlight overlays for this level.  See Info\n     node `(elisp)Overlay Properties' for more information about\n     overlay categories.\n\n     A category for an error level overlay should at least define\n     the `face' property, for error highlighting.  Other useful\n     properties for error level categories are `priority' to\n     influence the stacking of multiple error level overlays, and\n     `help-echo' to define a default error messages for errors\n     without messages.\n\n`:fringe-bitmap BITMAP'\n     A fringe bitmap symbol denoting the bitmap to use for fringe\n     indicators for this level.  See Info node `(elisp)Fringe\n     Bitmaps' for more information about fringe bitmaps,\n     including a list of built-in fringe bitmaps.\n\n`:fringe-face FACE'\n     A face symbol denoting the face to use for fringe indicators\n     for this level.\n\n`:error-list-face FACE'\n     A face symbol denoting the face to use for messages of this\n     level in the error list.  See `flycheck-list-errors'.\n\n(fn LEVEL &rest PROPERTIES)" nil nil)

(put 'flycheck-define-error-level 'lisp-indent-function '1)

;;;***

;;;### (autoloads nil nil ("flycheck-pkg.el") (21560 41027 369723
;;;;;;  772000))

;;;***

(provide 'flycheck-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; flycheck-autoloads.el ends here
