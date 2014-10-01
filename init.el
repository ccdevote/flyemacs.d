(let ((minver 24))
  (unless (>= emacs-major-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))

(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'theme)
(require 'init-startup)

(require 'init-tabbar)
(require 'init-paredit)
(require 'init-keys)
(require 'highlight-parentheses)
(require 'init-auto-complete)

(require 'init-generic)
(require 'init-linum)

;; 可以延后加载的
(run-with-idle-timer
 1 t
 #'(lambda ()
     (require 'init-package)
     ))

(provide 'init)


