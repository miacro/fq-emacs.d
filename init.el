;;; init --- Summary
;;; Commentary:
;;; Code:

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;(package-initialize)

(defun add-to-load-path-based-on-current-lisp-file (subdir)
  (add-to-list 'load-path
   (concat
    (file-name-directory load-file-name) subdir)))
(add-to-load-path-based-on-current-lisp-file "lisp")
(add-to-load-path-based-on-current-lisp-file "init-lisp")
(add-to-load-path-based-on-current-lisp-file "init-lisp/company")
(add-to-load-path-based-on-current-lisp-file "init-lisp/package-manager")
(add-to-load-path-based-on-current-lisp-file "init-lisp/utils")
(require 'init-el-get)
(require 'init-melpa)

(when (require 'el-get nil 'noerror)
  (el-get-bundle helm)
  (require 'init-helm)

  (el-get-bundle 2048.el)
  (el-get-bundle color-theme)
  (el-get-bundle color-theme-solarized)

  (el-get-bundle org-mode)
  (el-get-bundle emms)
  (el-get-bundle js2-mode)
  (el-get-bundle s)
  (el-get-bundle f)
  (el-get-bundle let-alist)

  (el-get-bundle slime)
  (require 'init-slime)
  (el-get-bundle yasnippet)
  (require 'init-yasnippet)
  ;;;; auto-complete completion
  ;;(el-get-bundle auto-complete)
  ;;(require 'init-auto-complete)
  ;;(el-get-bundle auto-complete-clang)
  ;;(require 'init-auto-complete-clang)
  ;;(el-get-bundle clang-complete-async)
  ;;(require 'init-auto-complete-clang-async)

  (el-get-bundle emacs-w3m)
  (require 'init-emacs-w3m)
  ;;(el-get-bundle ecb)
  ;;(require 'init-ecb)
  ;;(el-get-bundle smex)
  ;;(require 'init-smex)

  ;;(el-get-bundle elpa:undo-tree)
  (el-get-bundle evil)
  (require 'init-evil)
  (el-get-bundle magit)
  (require 'init-magit)
  (el-get-bundle doxymacs)
  (require 'init-doxymacs)
  (el-get-bundle flycheck)
  (require 'init-flycheck)
  (el-get-bundle google-c-style)
  (require 'init-google-c-style)
  (el-get-bundle slim-mode)
  (require 'init-slim-mode)

  (el-get-bundle company-mode)
  (require 'init-company-mode)
  (el-get-bundle slime-company)
  (require 'init-slime-company)
  ;;(el-get-bundle company-cmake)
  ;;(require 'init-company-cmake)
  (el-get-bundle company-c-headers)
  (require 'init-company-c-headers)
  (el-get-bundle highlight-symbol)
  (require 'init-highlight-symbol)
  ;;;; ycmd completion
  (el-get-bundle emacs-ycmd)
  (require 'init-emacs-ycmd)

  ;;;; irony-mode
  ;;(el-get-bundle irony-mode)
  ;;(require 'init-irony-mode)
  ;;(el-get-bundle company-irony)
  ;;(require 'init-company-irony)
  ;;(el-get-bundle flycheck-irony)
  ;;(require 'init-flycheck-irony)
  ;;(el-get-bundle irony-eldoc)
  ;;(require 'init-irony-eldoc)

  (el-get-bundle clang-format)
  (require 'init-clang-format)
  (el-get-bundle e2wm)
  (require 'init-e2wm)
  (el-get-bundle bison-mode)
  (require 'init-bison-mode)

  ;;(el-get-bundle srefactor)
  ;;(require 'init-srefactor)
  (el-get-bundle ace-jump-mode)
  (el-get-bundle graphviz-dot-mode)

  (require 'fonts)
  (require 'theme)
  (require 'transparent)
  (require 'keybinding)
  (require 'config))

(provide 'init)
;;; init ends here
