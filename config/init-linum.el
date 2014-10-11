(dolist (hook (list
               'c-mode-hook
	       'org-mode-hook
               'emacs-lisp-mode-hook
               'lisp-interaction-mode-hook
               'lisp-mode-hook
               'emms-playlist-mode-hook
               'java-mode-hook
               'asm-mode-hook
               'haskell-mode-hook
               'rcirc-mode-hook
               'emms-lyrics-mode-hook
               'erc-mode-hook
               'sh-mode-hook
               'makefile-gmake-mode-hook
               'python-mode-hook
               'js2-mode-hook
               'js-mode-hook
               'html-mode-hook
               'css-mode-hook
               'apt-utils-mode-hook
               'tuareg-mode-hook
               'go-mode-hook
               'coffee-mode-hook
               'qml-mode-hook
               'markdown-mode-hook
               'slime-repl-mode-hook
               'package-menu-mode-hook
               'cmake-mode-hook
               'php-mode-hook
               'web-mode-hook
               'coffee-mode-hook
               'sws-mode-hook
               'jade-mode-hook
               'enh-ruby-mode-hook
               ))
  (add-hook hook (lambda () (linum-mode 1))))

(provide 'init-linum)
