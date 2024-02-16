;;; org-preview-html-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-preview-html" "org-preview-html.el" (0
;;;;;;  0 0 0))
;;; Generated autoloads from org-preview-html.el

(autoload 'org-preview-html-mode "org-preview-html" "\
(Optionally) live preview for Org exports to HTML.

This is a minor mode.  If called interactively, toggle the
`org-preview-html mode' mode.  If the prefix argument is
positive, enable the mode, and if it is zero or negative, disable
the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `org-preview-html-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "org-preview-html" '("org-preview-html"))

;;;***

;;;### (autoloads nil nil ("org-preview-html-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-preview-html-autoloads.el ends here
