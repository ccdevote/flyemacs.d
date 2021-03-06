;;; 版本校验
(let ((minver 24))
  (unless (>= emacs-major-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))

;;; 加载配置文件 .emacs.d/config/
(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'theme)
(require 'init-startup)
(require 'init-package)

(require 'init-tabbar)
(require 'init-paredit)
(require 'init-keys)
(require 'highlight-parentheses)
(require 'init-auto-complete)
(require 'init-site-lisp)
(require 'smex)
;;(require 'init-ido)

(require 'init-generic)
(require 'init-linum)
(require 'init-mode)
(require 'init-auto-insert)
(require 'init-yasnippet)
;; 可以延后加载的
(run-with-idle-timer
 1 t
 #'(lambda ()
     ;需要延迟加载的放在这里
     ))

(provide 'init)
