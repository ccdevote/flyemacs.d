;; (emacs-session-restore)                 ;加载窗口布局
(setq
    backup-by-copying t ; 自动备份
    backup-directory-alist
    '(("." . "~/.saves")) ; 自动备份在目录"~/.saves"下
    delete-old-versions t ; 自动删除旧的备份文件
    kept-new-versions 6 ; 保留最近的6个备份文件
    kept-old-versions 2 ; 保留最早的2个备份文件
    version-control t) ; 多次备份

(display-time-mode t)

;; (setq inhibit-startup-screen t)         ;关闭起动时闪屏
;; (setq inhibit-splash-screen t)          ;关闭起动时闪屏
(setq initial-scratch-message nil)      ;禁止在草稿缓存里面显示处始化信息
(fset 'yes-or-no-p 'y-or-n-p)           ;以 y/n代表 yes/no
(blink-cursor-mode -1)                  ;指针不闪动
(transient-mark-mode 1)                 ;标记高亮
(column-number-mode t)                  ;显示列号
(show-paren-mode t)                     ;显示括号匹配
(setq-default comment-style 'indent)    ;设定自动缩进的注释风格
(setq ring-bell-function 'ignore)       ;关闭烦人的出错时的提示声
(setq show-paren-style 'parentheses)    ;括号匹配显示但不是烦人的跳到另一个括号。
(setq blink-matching-paren nil)         ;当插入右括号时不显示匹配的左括号
(setq default-major-mode 'text-mode)    ;设置默认地主模式为TEXT模式
(setq mouse-yank-at-point t)            ;粘贴于光标处,而不是鼠标指针处
(setq x-select-enable-clipboard t)      ;支持emacs和外部程序的粘贴
(setq x-stretch-cursor t)               ;光标在 TAB 字符上会显示为一个大方块
(setq auto-revert-mode 1)               ;自动更新buffer
(setq message-log-max t)                ;设置message记录全部消息, 而不用截去
(setq void-text-area-pointer nil)       ;禁止显示鼠标指针
(setq enable-recursive-minibuffers nil)   ;minibuffer 递归调用命令
(setq history-delete-duplicates t)      ;删除minibuffer的重复历史
(put 'narrow-to-region 'disabled nil)   ;开启变窄区域
(setq print-escape-newlines t)          ;显示字符窗中的换行符为 \n
(setq minibuffer-message-timeout 1)     ;显示消息超时的时间
(setq require-final-newline nil)        ;不自动添加换行符到末尾, 有些情况会出现错误
(setq ediff-window-setup-function (quote ediff-setup-windows-plain)) ;比较窗口设置在同一个frame里
(setq split-width-threshold nil)                                     ;分屏的时候使用上下分屏
(setq one-key-popup-window nil)                                      ;禁止自动弹出窗口
(add-hook 'find-file-hook 'highlight-parentheses-mode t)             ;增强的括号高亮
(global-hl-line-mode 1)                                              ;高亮当前行
(setq smooth-scroll-margin 2)                                        ;触发滚动的行数
(setq isearch-allow-scroll t)                                        ;isearch搜索时是可以滚动屏幕的
(setq byte-compile-warnings
      (quote (
              ;; 显示的警告
              free-vars                 ;不在当前范围的引用变量
              unresolved                ;不知道的函数
              callargs                  ;函数调用的参数和定义的不匹配
              obsolete                  ;荒废的变量和函数
              noruntime                 ;函数没有定义在运行时期
              interactive-only          ;正常不被调用的命令
              make-local                ;调用 `make-variable-buffer-local' 可能会不正确的
              mapcar                    ;`mapcar' 调用
              ;; 抑制的警告
              (not redefine)            ;重新定义的函数 (比如参数数量改变)
              (not cl-functions)        ;`CL' 包中的运行时调用的函数
              )))
(icomplete-mode 1)                      ;minibuffer补全反馈

(setq winpoint-non-restore-buffer-list '("*Group*"))
(setq tramp-default-method "ssh")       ;设置传送文件默认的方法
(ignore-errors (minibuffer-tray-mode 1))

(provide 'init-generic)
