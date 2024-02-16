(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
;; Installs packages incase they aren't installed already
;; (defvar my-packages '(evil org-bullets org-download))
;; (dolist (pkg my-packages)
;;   (unless (package-installed-p pkg)
;;     (message "Installing package: %s" pkg)
;;     (package-refresh-contents)
;;     (package-install pkg)))
(require 'evil)
(require 'org-bullets)
(require 'org-download)
(setq browse-url-browser-function 'browse-url-firefox)
;Evil
(evil-mode t)
(setq evil-search-module 'evil-search
            evil-want-C-u-scroll t
                  evil-want-C-w-in-emacs-state t)
(global-set-key (kbd "<f9>") 'treemacs)
(set-language-environment "UTF-8")

; Org-Mode
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
;; Drag-and-drop to `dired`
(add-hook 'dired-mode-hook 'org-download-enable)
;; Inline-Images
(setq org-display-inline-images t) (setq org-redisplay-inline-images t) (setq org-startup-with-inline-images "inlineimages")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(the-matrix))
 '(custom-safe-themes
   '("ccdc42b444da0b62c25850da75f59186319ee22ddfd153ffc9f7eb4e59652fc9" default))
 '(ispell-dictionary nil)
 '(package-selected-packages
   '(the-matrix-theme org-bullets org-download evil cmake-mode aircon-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;Startup Screen

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
;; org-mode html themes
(tempo-define-template "rto"
           '(
              "#+SETUPFILE: https://fniessen.github.io/org-html-themes/org/theme-readtheorg.setup"
             )
)
(tempo-define-template "bb"
           '(
              "#+SETUPFILE: https://fniessen.github.io/org-html-themes/org/theme-bigblow.setup"
             )
)
(tempo-define-template "bbi"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/bigblow_inline/bigblow_inline.theme"
             )
)
(tempo-define-template "cil"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/comfy_inline/comfy_inline.theme"
             )
)
(tempo-define-template "ds"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/darksun/darksun.theme"
             )
)
(tempo-define-template "gray"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/gray/gray.theme"
             )
)
(tempo-define-template "imagine_light"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/imagine_light/imagine_light.theme"
             )
)
(tempo-define-template "latexcss"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/latexcss/latexcss.theme"
             )
)
(tempo-define-template "plain"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/plain/plain.theme"
             )
)
(tempo-define-template "rtoi"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/readtheorg_inline/readtheorg_inline.theme"
             )
)
(tempo-define-template "rei"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/rethink_inline/rethink_inline.theme"
             )
)
(tempo-define-template "retd"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/retro_dark/retro_dark.theme"
             )
)
(tempo-define-template "sgray"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/simple_gray/simple_gray.theme"
             )
)
(tempo-define-template "si"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/simple_inline/simple_inline.theme"
             )
)
(tempo-define-template "sw"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/simple_white/simple_white.theme"
             )
)
(tempo-define-template "swb"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/simple_whiteblue/simple_whiteblue.theme"
             )
)
(tempo-define-template "sod"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/solarized_dark/solarized_dark.theme"
             )
)
(tempo-define-template "sold"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/solarized_light/solarized_light.theme"
             )
)
(tempo-define-template "styw"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/stylish_white/stylish_white.theme"
             )
)
(tempo-define-template "wc"
           '(
              "#+SETUPFILE: http://portalsf.surge.sh/static/org-themes/white_clean/white_clean.theme"
             )
)
;; Import style.css
(tempo-define-template "css-file"
           '(
              "#+HTML_HEAD_EXTRA: <link rel='stylesheet' href='style.css' media='all'>"
             )
)

;; Org Rice 01
(tempo-define-template "rice-01"
           '(
              "#+HTML_HEAD_EXTRA: <link rel='stylesheet' href='https://portalsf.surge.sh/templates/style.css' media='all'>"
             )
)
