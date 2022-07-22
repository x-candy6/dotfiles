;••••••••••••••••••••••••••••••••••••••••••••••;
;░█▀▀░█▄█░█▀█░█▀▀░█▀▀░░░█▀▀░█▀█░█▀█░█▀▀░▀█▀░█▀▀
;░█▀▀░█░█░█▀█░█░░░▀▀█░░░█░░░█░█░█░█░█▀▀░░█░░█░█
;░▀▀▀░▀░▀░▀░▀░▀▀▀░▀▀▀░░░▀▀▀░▀▀▀░▀░▀░▀░░░▀▀▀░▀▀▀
;••••••••••••••••••••••••••••••••••••••••••••••;
;Created by AndrewC
;Last updated: <2022-07-21 Thu>
;•••••••••••••••••••••••••••••••••;
;░█▀█░█░█░▀█▀░█▀█░█░░░█▀█░█▀█░█▀▄
;░█▀█░█░█░░█░░█░█░█░░░█░█░█▀█░█░█
;░▀░▀░▀▀▀░░▀░░▀▀▀░▀▀▀░▀▀▀░▀░▀░▀▀░
;•••••••••••••••••••••••••••••••••;
;tags: autoload auto
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 
(require 'auto-complete)
(require 'auto-complete-config)

;(use-package all-the-icons)
;(require 'treemacs-all-the-icons)

;; Enable plantuml-mode for PlantUML files
;;https://git.2li.ch/emacs/plantuml-mode
;;the with-eval-after-load function is important
;;M-x plantul-download-jar
;;customize-variables -> org-plantuml-jar-path -> set the path to the jar
(add-to-list 'auto-mode-alist '("\\.plantuml\\'" . plantuml-mode))
(with-eval-after-load "org"
  (add-to-list 'org-src-lang-modes '("plantuml" . plantuml)))
(org-babel-do-load-languages 'org-babel-load-languages '((plantuml . t)))

;••••••••••••••••••••••••••••••••••••;
;░█▀▀░█░█░▀█▀░█░░░░░░░█▄█░█▀█░█▀▄░█▀▀
;░█▀▀░▀▄▀░░█░░█░░░▄▄▄░█░█░█░█░█░█░█▀▀
;░▀▀▀░░▀░░▀▀▀░▀▀▀░░░░░▀░▀░▀▀▀░▀▀░░▀▀▀
;••••••••••••••••••••••••••••••••••••;
;tags: evil
(evil-mode)
; Org-Cycle in Evil normal mode
;(evil-define-key 'normal org-mode-map (kbd "Tab") #'org-cycle)
;; add support for yasnippet (part of autocompletion)
;(require 'yasnippet)
;(require 'lsp-jedi)
;Rebind C-n C-p etc to hjkl
;••••••••••••••••••••••••••••••••••••;
;░▀█▀░█▀▄░█▀▀░█▀▀░█▄█░█▀█░█▀▀░█▀▀
;░░█░░█▀▄░█▀▀░█▀▀░█░█░█▀█░█░░░▀▀█
;░░▀░░▀░▀░▀▀▀░▀▀▀░▀░▀░▀░▀░▀▀▀░▀▀▀
;••••••••••••••••••••••••••••••••••••;
;tags: tree treemacs

(global-set-key (kbd "C-n") (lambda () (interactive) (treemacs)))

;(use-package treemacs-icons-dired
;  :hook (dired-mode . treemacs-icons-dired-enable-once)
;  :ensure t)
;(all-the-icons-insert-icons-for 'alltheicon)   ;; Prints all the icons for `alltheicon' font set

;(all-the-icons-insert-icons-for 'octicon 10)   ;; Prints all the icons for the `octicon' family
                                               ;; and makes the icons height 10

;(all-the-icons-insert-icons-for 'faicon 1 0.5) ;; Prints all the icons for the `faicon' family 
                                               ;; and also waits 0.5s between printing each one

(use-package treemacs-evil
  :after (treemacs evil)
  :ensure t)


(evil-define-state treemacs
  "Treemacs state"
  :cursor '(bar . 0)
  :enable (motion))

(evil-set-initial-state 'treemacs-mode 'treemacs)
                     
(define-key evil-treemacs-state-map (kbd "u")   #'treemacs-root-up)
(define-key evil-treemacs-state-map (kbd "U")   #'treemacs-root-down)
(evil-define-key 'treemacs treemacs-mode-map [down-mouse-1] #'treemacs-leftclick-action)

(define-key evil-treemacs-state-map (kbd "th")  #'treemacs-toggle-show-dotfiles)
(define-key evil-treemacs-state-map (kbd ">")   #'treemacs-increase-width)
(define-key evil-treemacs-state-map (kbd "<")   #'treemacs-decrease-width)
;•••••••••••••••••••••••••••••••••••••••••••;
;░█▀▀░▀█▀░█▀█░█▀▄░▀█▀░█░█░█▀█░░░█▄█░█▀▀░█▀▀
;░▀▀█░░█░░█▀█░█▀▄░░█░░█░█░█▀▀░░░█░█░▀▀█░█░█
;░▀▀▀░░▀░░▀░▀░▀░▀░░▀░░▀▀▀░▀░░░░░▀░▀░▀▀▀░▀▀▀
;•••••••••••••••••••••••••••••••••••••••••••;
;tags: startup start
;;Start menu options
;(setq inhibit-startup-echo-area-message "USERNAME")
;;(setq initial-buffer-choice "/home/andy/.emacs.d/start.txt")

;(setq inhibit-startup-message t)
;;(setq initial-buffer-choice "/home/andy/.emacs.d/startuptext.txt")

(defun display-startup-echo-area-message ()
  (message "•🐱EMACS V27.1 🐱•                         Type C-h C-a for help"))

;••••••••••••••••••••••••••••••••••••••••••••••••••••••••••;
;░█▀▀░█▀▀░█▀█░█▀▀░█▀▄░█▀█░█░░░░░█▀█░█▀█░▀█▀░▀█▀░█▀█░█▀█░█▀▀
;░█░█░█▀▀░█░█░█▀▀░█▀▄░█▀█░█░░░░░█░█░█▀▀░░█░░░█░░█░█░█░█░▀▀█
;░▀▀▀░▀▀▀░▀░▀░▀▀▀░▀░▀░▀░▀░▀▀▀░░░▀▀▀░▀░░░░▀░░▀▀▀░▀▀▀░▀░▀░▀▀▀
;••••••••••••••••••••••••••••••••••••••••••••••••••••••••••;
;tags: general options option keybinds
(add-hook 'prog-mode-hook 'global-display-line-numbers-mode)
(electric-pair-mode 1)
(ac-config-default)
;General Keybinds; Plugin-specific keybinds will be under their own category
;(global-set-key (kbd "C-j") 'next-line)
;(global-set-key (kbd "C-k") 'previous-line)
;(global-set-key (kbd "C-h") 'backward-char)
;(global-set-key (kbd "C-l") 'forward-char)



;••••••••••••••••••••••••••••••••••••••••••••••••••••••••••;
;░▀█▀░█▀▀░█▄█░█▀█░█▀█░░░▀█▀░█▀▀░█▄█░█▀█░█░░░█▀█░▀█▀░█▀▀░█▀▀
;░░█░░█▀▀░█░█░█▀▀░█░█░░░░█░░█▀▀░█░█░█▀▀░█░░░█▀█░░█░░█▀▀░▀▀█
;░░▀░░▀▀▀░▀░▀░▀░░░▀▀▀░░░░▀░░▀▀▀░▀░▀░▀░░░▀▀▀░▀░▀░░▀░░▀▀▀░▀▀▀
;••••••••••••••••••••••••••••••••••••••••••••••••••••••••••;
;tags: tempo
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
;; Import PlantUML
(tempo-define-template "plant1"
           '(
              "#+begin_src plantuml :file " (p "filename" filename) > n> n>
                 "#+end_src" >n >n

             )
)
;; Center org-mode tables
(tempo-define-template "centertables"
           '(
              "#+HTML_HEAD_EXTRA: <style type="text/css">table {margin-left:auto; margin-right:auto;}</style>"
             )
)
;; Import style.css
(tempo-define-template "css-file"
           '(
              "#+HTML_HEAD_EXTRA: <link rel='stylesheet' href='style.css' media='all'>"
             )
)


;(yas-global-mode 1)
;;define a function which initis auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/local/include")
  (add-to-list 'achead:include-directories '"/usr/include/c++/11"))
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

;••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••;
;░█▀▀░█░█░█▀▀░▀█▀░█▀█░█▄█░░░█░█░█▀█░█▀▄░▀█▀░█▀█░█▀▄░█░░░█▀▀░█▀▀
;░█░░░█░█░▀▀█░░█░░█░█░█░█░░░▀▄▀░█▀█░█▀▄░░█░░█▀█░█▀▄░█░░░█▀▀░▀▀█
;░▀▀▀░▀▀▀░▀▀▀░░▀░░▀▀▀░▀░▀░░░░▀░░▀░▀░▀░▀░▀▀▀░▀░▀░▀▀░░▀▀▀░▀▀▀░▀▀▀
;••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••;
;tags: custom variables variable
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
 '(initial-scratch-message
   ";; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with \\[find-file] and enter text in its buffer.

")
 '(ispell-dictionary nil)
 '(linum-format " %7i ")
 '(org-plantuml-jar-path "/home/andy/plantuml.jar")
 '(package-selected-packages
   '(all-the-icons treemacs-all-the-icons treemacs-evil acme-theme afternoon-theme calmer-forest-theme chyla-theme green-is-the-new-black-theme green-phosphor-theme green-screen-theme the-matrix-theme plantuml-mode lsp-latex lsp-pyright ein cmake-mode use-package treemacs format-all evil auto-complete-clang-async auto-complete-clang auto-complete-c-headers ac-clang ac-c-headers)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
