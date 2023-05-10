

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(require 'auto-complete)
(require 'auto-complete-config)
;; add support for yasnippet (part of autocompletion)
(require 'yasnippet)
(require 'lsp-jedi)

(treemacs)
(evil-mode)
(global-linum-mode)
(electric-pair-mode 1)


(setq org-time-stamp-formats
      '("<%Y-%m-%d %a>" . "<%Y-%m-%d %a %H:%M:%S>"))
;; jedi for python auto-completion
(add-hook 'python-mode-hook 'jedi:setup)
(use-package lsp-jedi
  :ensure t
  :config
  (with-eval-after-load "lsp-mode"
    (add-to-list 'lsp-disabled-clients 'pyls)
    (add-to-list 'lsp-enabled-clients 'jedi)))


;;add support for c, autocomplet
(setq c-default-style "linux"
      c-basic-offset 4)

(ac-config-default)

(yas-global-mode 1)
;;define a function which initis auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/local/include")
  (add-to-list 'achead:include-directories '"/usr/include/c++/11"))
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)


;;(use-package format-all
;;	     :preface
;;	     (defun ian/format-code ()
;;	       "Auto-format whole buffer."
;;	       (interactive)
;;	       (if (derived-mode-p 'prolog-mode)
;;		   (prolog-indent-buffer)
;;		 (format-all-buffer)))
;;	     :config
;;	     (global-set-key (kbd "M-F") #'ian/format-code)
;;	     (add-hook 'prog-mode-hook #'format-all-ensure-formatter))
;;	

 

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes '(tsdh-dark))
 '(ispell-dictionary nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
