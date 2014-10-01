
(setq ad-redefinition-action 'accept)   ;不要烦人的 redefine warning
(tool-bar-mode -1)                      ;禁用工具栏
(menu-bar-mode -1)                      ;禁用菜单栏
(scroll-bar-mode -1)                    ;禁用滚动条
(defvar emacs-font-name "文泉驿等宽微米黑"
  "The font name of English.")
(defvar emacs-font-size 12
  "The default font size.")
(if (display-grayscale-p)
    (progn
      (set-frame-font (format "%s-%s" (eval emacs-font-name) (eval emacs-font-size)))
      (set-fontset-font (frame-parameter nil 'font) 'unicode (eval emacs-font-name))))

(defun full-screen ()			;全屏
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0))
  )

(defun max-screen ()			;最大化
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
  )
(provide 'init-startup)

;;; init-startup.el ends here
