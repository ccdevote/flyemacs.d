(require-package 'auto-indent-mode)

(dolist (hook (list
               'web-mode-hook
               'qml-mode-hook
               'emacs-lisp-mode-hook
	       'c-mode-hook
	       'java-mode-hook
	       'org-mode-hook
               ))
  (add-hook hook (lambda ()
                   (require 'auto-indent-mode)
                   (auto-indent-mode-on))))
(provide 'init-auto-indent)
