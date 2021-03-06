(require 'lazy-set-key)
;;; full screen
(global-set-key [f11] 'full-screen) ;; 启动全屏的快捷键

;;; tabbar
(lazy-set-key
 '(
   ("s-b" . tabbar-backward-tab)              ;移动到后一个标签
   ("s-f" . tabbar-forward-tab)               ;移动到前一个标签
   ("s->" . tabbar-backward-group)            ;移动到后一个标签组
   ("s-<" . tabbar-forward-group)             ;移动到前一个标签组
   ("<C-tab>" . tabbar-backward-tab)          ;移动到后一个标签
   ("<C-S-iso-lefttab>" . tabbar-forward-tab) ;移动到前一个标签
   ))

(lazy-set-autoload-key
 '(
   ("C-s-b" . tabbar-backward-tab-other-window) ;向前移动其他窗口的标签
   ("C-s-f" . tabbar-forward-tab-other-window)  ;向后移动其他窗口的标签
   ("M-s-l" . tabbar-select-beg-tab)          ;移动到最左边的标签
   ("M-s-r" . tabbar-select-end-tab)          ;移动到最右边的标签
   )
 "tabbar-extension")

;;; indent
(lazy-set-key
 '(
   ("<C-S-return>" . indent-region) 	;格式化当前代码
   ))

;;; smex
(lazy-set-key
 '(
   ("M-x" . smex)
   ("M-x" . smex-major-mode-commands)
   ("C-c C-c M-x" . execute-extended-command)
   ))

;;; flymake
(lazy-set-key
 '(
   ("<C-c n>" . flymake-goto-next-error)
   )
 )

(provide 'init-keys)
