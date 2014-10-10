;;; init-yasnippet.el --- config yasnippet

;; Copyright (C) 2014  Zhiyong Ma

;; Author: Zhiyong Ma <zhiyong.ma@qunar.com>
;; Keywords: lisp

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; config yasnippet

(require-package 'yasnippet)

;;; Code:
(add-to-list `yas/root-directory (expand-file-name "snappets/" user-emacs-directory))
(yas-global-mode 1)


;; Disable yasnippet mode on some mode.
(dolist (hook (list
               'term-mode-hook
               ))
  (add-hook hook '(lambda () (yas-minor-mode -1))))

(provide 'init-yasnippet)
;;; init-yasnippet.el ends here
