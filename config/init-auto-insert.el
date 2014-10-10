;;; auto-insert
(setq auto-insert t)			;开启自动插入模式
(setq auto-insert-query nil)		
(setq auto-insert-directory (expand-file-name "template/" user-emacs-directory)) ;设置模板路径
(add-hook 'find-file-hooks 'auto-insert)

;;; c++ mode
(eval-after-load 'autoinsert
  '(define-auto-insert
     '("\\.\\(CC?\\|cc\\|cxx\\|cpp\\|c++\\)\\'" . "C++ skeleton")
     '("Short description: "
       "/*" \n
       (file-name-nondirectory (buffer-file-name))
       " -- " str \n
       " */" > \n \n
       "#include <iostream>" \n \n
       "main() {" \n
       > _ \n
       "}" > \n)))

;;; c-mode
(eval-after-load 'autoinsert
  '(define-auto-insert '("\\.c\\'" . "C skeleton")
     '(
       "Short description: "
       "/**\n * "
       (file-name-nondirectory (buffer-file-name))
       " -- " str \n
       " *" (user-full-name) "<" (user-mail-address) ">"  \n
       " * Written on " (format-time-string "%A, %e %B %Y.") \n
       " */" > \n \n
       "#include <stdio.h>" \n
       "#include \""
       (file-name-sans-extension
        (file-name-nondirectory (buffer-file-name)))
       ".h\"" \n \n
       "int main() {" \n
       > _ \n
       "}" > \n)))

(defun autoinsert-yas-expand()
  "Replace text in yasnippet template."
  (yas/expand-snippet (buffer-string) (point-min) (point-max))
)

(custom-set-variables
     '(auto-insert 'other)
     '(auto-insert-directory (expand-file-name "template/" user-emacs-directory))
     '(auto-insert-alist '((("\\.\\([Hh]\\|hh\\|hpp\\)\\'" . "C / C++ header") . ["template.h" c++-mode autoinsert-yas-expand])
                           (("\\.\\([C]\\|cc\\|cpp\\)\\'" . "C++ source") . ["template.cc" autoinsert-yas-expand])
                           (("\\.sh\\'" . "Shell script") . ["template.sh" autoinsert-yas-expand])
                           (("\\.el\\'" . "Emacs Lisp") . ["template.el" autoinsert-yas-expand])
                           (("\\.pl\\'" . "Perl script") . ["template.pl" autoinsert-yas-expand])
                           (("\\.pm\\'" . "Perl module") . ["template.pm" autoinsert-yas-expand])
                           (("\\.py\\'" . "Python script") . ["template.py" autoinsert-yas-expand])
			   (("\\.org\\'" . "Org file") . ["template.org" autoinsert-yas-expand])
                           (("[mM]akefile\\'" . "Makefile") . ["Makefile" autoinsert-yas-expand])
                           (("\\.tex\\'" . "TeX/LaTeX") . ["template.tex" autoinsert-yas-expand]))))
(setq user-full-name "Zhiyong Ma")
(setq user-mail-address "zhiyong.ma@qunar.com")
(provide 'init-auto-insert)
