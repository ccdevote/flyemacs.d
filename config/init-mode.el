;;; ### auto-mode-alist ###

;;; --- 绑定扩展名到特定的模式
(dolist (elt-cons '(
		    ("\\.wiki" . confluence-mode)
                    ("\\.markdown" . markdown-mode)
                    ("\\.md" . markdown-mode)
                    ("\\.coffee$" . coffee-mode)
                    ("\\.iced$" . coffee-mode)
                    ("Cakefile" . coffee-mode)
                    ("\\.stumpwmrc\\'" . lisp-mode)
                    ("\\.[hg]s\\'" . haskell-mode)
                    ("\\.hi\\'" . haskell-mode)
                    ("\\.hs-boot\\'" . haskell-mode)
                    ("\\.chs\\'" . haskell-mode)
                    ("\\.l[hg]s\\'" . literate-haskell-mode)
                    ("\\.inc\\'" . asm-mode)
                    ("\\.max\\'" . maxima-mode)
                    ("\\.lrc\\'" . emms-lyrics-mode)
                    ("\\.org\\'" . org-mode)
                    ("\\.cron\\(tab\\)?\\'" . crontab-mode)
                    ("cron\\(tab\\)?\\." . crontab-mode)
                    ("\\.a90\\'" . intel-hex-mode)
                    ("\\.hex\\'" . intel-hex-mode)
                    ("SConstruct". python-mode)
                    ("\\.ml\\'" . tuareg-mode)
                    ("\\.mli\\'" . tuareg-mode)
                    ("\\.mly\\'" . tuareg-mode)
                    ("\\.mll\\'" . tuareg-mode)
                    ("\\.mlp\\'" . tuareg-mode)
                    ("\\.qml\\'" . qml-mode)
                    ("\\.jl\\'" . lisp-mode)
                    ("\\.asdf\\'" . lisp-mode)
                    ("CMakeLists\\.txt\\'" . cmake-mode)
                    ("\\.cmake\\'" . cmake-mode)
                    ("\\.php\\'" . php-mode)
                    ("\\.blade\\.php\\'" . web-mode)
                    ("\\.phtml\\'" . web-mode)
                    ("\\.tpl\\.php\\'" . web-mode)
                    ("\\.jsp\\'" . web-mode)
                    ("\\.as[cp]x\\'" . web-mode)
                    ("\\.erb\\'" . web-mode)
                    ("\\.mustache\\'" . web-mode)
                    ("\\.djhtml\\'" . web-mode)
                    ("\\.html?\\'" . web-mode)
                    ("\\.coffee\\'" . coffee-mode)
                    ("\\.iced\\'" . coffee-mode)
                    ("\\.css\\'" . css-mode)
                    ("Cakefile\\'" . coffee-mode)
                    ("\\.styl$" . sws-mode)
                    ("\\.jade" . jade-mode)
                    ("\\.rb$" . enh-ruby-mode)
                    ("\\.go$" . go-mode)
                    ))
  (add-to-list 'auto-mode-alist elt-cons))

(add-to-list 'interpreter-mode-alist '("coffee" . coffee-mode))


;;; Mode load.
(autoload 'cmake-mode "cmake-mode")
(autoload 'qml-mode "qml-mode")
(autoload 'markdown-mode "markdown-mode")
(autoload 'php-mode "php-mode")
(autoload 'web-mode "init-web-mode")
(autoload 'coffee-mode "init-coffee-mode")
(autoload 'sws-mode "sws-mode")
(autoload 'jade-mode "jade-mode")
(autoload 'css-mode "init-css-mode")
(autoload 'enh-ruby-mode "init-ruby")
(autoload 'go-mode "init-golang")
(autoload 'java-mode "init-java")

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))
(add-hook
 'c-mode-common-hook
 '(lambda ()
    (require-package 'google-c-style)
    (google-set-c-style)
    (google-make-newline-indent)
    (require-package 'c-eldoc)
    (c-turn-on-eldoc-mode)
    
    (require 'flymake-clang)
    (flymake-clang-load)
    ))
(add-hook
 'org-mode-hook
 '(lambda ()
    (require 'init-org)
    (org-jekyll-mode 1)			;开启org-mode时开启jekyll-mode
    ))
;;; ### Auto-fill ###
;;; --- 自动换行
(setq default-fill-column 100)          ;默认显示 100列就换行
(dolist (hook (list
               'after-text-mode-hook
               'message-mode-hook
               'org-mode-hook
               ))
  (add-hook hook '(lambda () (auto-fill-mode 1))))

(electric-indent-mode t)		;开启自动对齐
(provide 'init-mode)

;;; init-mode.el ends here
