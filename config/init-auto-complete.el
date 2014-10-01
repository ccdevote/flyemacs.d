(require-package 'auto-complete)

(require 'auto-complete-config)

(add-to-list 'ac-dictionary-directories (expand-file-name "elpa/dict" user-emacs-directory))

(ac-config-default)
(setq ac-use-quick-help nil)

(setq-default
 ac-sources
 '(
   ac-source-yasnippet
   ac-source-imenu
   ac-source-abbrev
   ac-source-words-in-same-mode-buffers
   ac-source-files-in-current-dir
   ac-source-filename
   ))

(provide 'init-auto-complete)
