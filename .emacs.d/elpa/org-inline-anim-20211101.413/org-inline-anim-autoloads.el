;;; org-inline-anim-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "org-inline-anim" "org-inline-anim.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from org-inline-anim.el

(autoload 'org-inline-anim-mode "org-inline-anim" "\
Inline playback of animated GIF/PNG for Org.

This is a minor mode.  If called interactively, toggle the
`Org-Inline-Anim mode' mode.  If the prefix argument is positive,
enable the mode, and if it is zero or negative, disable the mode.

If called from Lisp, toggle the mode if ARG is `toggle'.  Enable
the mode if ARG is nil, omitted, or is a positive number.
Disable the mode if ARG is a negative number.

To check whether the minor mode is enabled in the current buffer,
evaluate `org-inline-anim-mode'.

The mode's hook is called both when the mode is enabled and when
it is disabled.

\(fn &optional ARG)" t nil)

(register-definition-prefixes "org-inline-anim" '("org-inline-anim-"))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; org-inline-anim-autoloads.el ends here
