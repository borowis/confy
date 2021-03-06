;initialize packages 
(require 'package)
(package-initialize)

;add package repo
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)

;
(add-to-list 'load-path "~/.emacs.d")
(load "init")

;SML mode setup
;(load "/usr/share/smlnj/sml-mode-5.0/sml-mode-startup")
;(setenv "PATH" (concat "/usr/share/smlnj/bin:" (getenv "PATH")))
;(setq exec-path (cons "/usr/share/smlnj/bin" exec-path))

;Interactive Do Things (enable by default)
(require 'ido)
(ido-mode t)

;; load jde mode
(add-to-list 'load-path "~/.emacs.d/jdee-2.4.1/lisp")
(load "jde")

;; load jad decompiler plugin
(add-to-list 'load-path "~/.emacs.d/jdc1.0")
(require 'jdc)

;Python mode setup
(setq py-install-directory "~/.emacs.d/python-mode.el-6.1.0")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

;use IPython
(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")

; use the wx backend, for both mayavi and matplotlib
(setq py-python-command-args
  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
(setq py-force-py-shell-name-p t)

; switch to the interpreter after executing code
;(setq py-shell-switch-buffers-on-execute-p t)
;(setq py-switch-buffers-on-execute-p t)
;(setq py-split-windows-on-execute-p nil) ; don't split windowsmode
;(setq py-smart-indentation t) ; try to automagically figure out indentation
