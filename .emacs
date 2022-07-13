
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 
(require 'auto-complete)
(require 'auto-complete-config)


;; Enable plantuml-mode for PlantUML files
;;https://git.2li.ch/emacs/plantuml-mode
;;the with-eval-after-load function is important
;;M-x plantul-download-jar
;;customize-variables -> org-plantuml-jar-path -> set the path to the jar
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
(with-eval-after-load "org"
  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml)))
(org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))

; Org-Cycle in Evil normal mode
;(evil-define-key 'normal org-mode-map (kbd "Tab") #'org-cycle)
;; add support for yasnippet (part of autocompletion)
;(require 'yasnippet)
;(require 'lsp-jedi)
;Rebind C-n C-p etc to hjkl
;(global-set-key (kbd "j") 'next-line)
;(global-set-key (kbd "k") 'previous-line)
;(global-set-key (kbd "h") 'barward-char)
;(global-set-key (kbd "l") 'forward-char)
;(setq inhibit-startup-message t)
;;(setq initial-buffer-choice "/home/andy/.emacs.d/startuptext.txt")
;;(treemacs)



(evil-mode)
(add-hook 'prog-mode-hook 'global-display-line-numbers-mode)
(electric-pair-mode 1)
;Tempo Mode
;;Basic Example
(require 'tempo)
(setq tempo-interactive t)
;; Startup template for org files; title,author,desc,date
(tempo-define-template "startorg1"
           '("#+TITLE:" (p "TITLE:" title) > n>
            "#+AUTHOR:" (p "AUTHOR:" author) > n>
            "#+DESCRIPTION:" (p "DESCRIPTION:" description) > n>
            "#+DATE:" 
           )
)

(tempo-define-template "plant1"
           '(
              "#+begin_src plantuml :file " (p "filename" filename) > n> n>
                 "#+end_src" >n >n

             )
)
(tempo-define-template "centertables"
           '(
              "#+HTML_HEAD_EXTRA: <style type="text/css">table {margin-left:auto; margin-right:auto;}</style>"
             )
)
(ac-config-default)

;(yas-global-mode 1)
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
 '(custom-enabled-themes '(the-matrix))
 '(custom-safe-themes
   '("19759a26a033dcb680aa11ee08677e3146ba547f1e8a83514a1671e0d36d626c" "58c6711a3b568437bab07a30385d34aacf64156cc5137ea20e799984f4227265" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "e9776d12e4ccb722a2a732c6e80423331bcb93f02e089ba2a4b02e85de1cf00e" "72a81c54c97b9e5efcc3ea214382615649ebb539cb4f2fe3a46cd12af72c7607" "b3775ba758e7d31f3bb849e7c9e48ff60929a792961a2d536edec8f68c671ca5" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" "c48551a5fb7b9fc019bf3f61ebf14cf7c9cdca79bcb2a4219195371c02268f11" "3cd28471e80be3bd2657ca3f03fbb2884ab669662271794360866ab60b6cb6e6" "96998f6f11ef9f551b427b8853d947a7857ea5a578c75aa9c4e7c73fe04d10b4" "3d5ef3d7ed58c9ad321f05360ad8a6b24585b9c49abcee67bdcbb0fe583a6950" "9b59e147dbbde5e638ea1cde5ec0a358d5f269d27bd2b893a0947c4a867e14c1" default))
 '(ispell-dictionary nil)
 '(linum-format " %7i ")
 '(org-plantuml-jar-path "/home/andy/plantuml.jar")
 '(package-selected-packages
   '(acme-theme afternoon-theme calmer-forest-theme chyla-theme green-is-the-new-black-theme green-phosphor-theme green-screen-theme the-matrix-theme plantuml-mode lsp-latex lsp-pyright ein cmake-mode use-package treemacs format-all evil auto-complete-clang-async auto-complete-clang auto-complete-c-headers ac-clang ac-c-headers)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
