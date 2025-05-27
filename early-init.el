;; early-init.el -*- lexical-binding: t; -*-

(setq frame-resize-pixelwise t
      frame-inhibit-implied-resize t
      frame-title-format '("%b")
      debug-on-error t
      ring-bell-function 'ignore
      use-file-dialog nil
      use-short-answers t
      inhibit-startup-screen t
      inhibit-x-resources t
      inhibit-startup-echo-area-message user-login-name
      inhibit-startup-buffer-menu t)

(push '(fullscreen . maximized) default-frame-alist)

(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(let ((gc-cons-threshold most-positive-fixnum)
      (gc-cons-percentage 0.6))

  (add-hook 'emacs-startup-hook
            (lambda ()
              (setq gc-cons-threshold (* 50 1000 1000))
              (setq gc-cons-percentage 0.1))))

(setq package-enable-at-startup nil)

(setq load-prefer-newer t)

;; Local Variables:
;; no-byte-compile: t
;; no-native-compile: t
;; no-update-autoloads: t
;; End:
