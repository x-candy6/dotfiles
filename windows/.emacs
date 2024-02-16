(require 'package)
(require 'evil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;Windows Settings
(setq explicit-shell-file-name "c:\\Program Files\\PowerShell\\7\\pwsh.exe")
  (setq explicit-powershell.exe-args '("-Command" "-" )) ; interactive, but no command prompt
(setq browse-url-browser-function 'browse-url-firefox)
;Evil
(evil-mode t)
(setq evil-search-module 'evil-search
            evil-want-C-u-scroll t
                  evil-want-C-w-in-emacs-state t)
(global-set-key (kbd "<f9>") 'treemacs)
(set-language-environment "UTF-8")

; Org-Mode
(setq org-src-fontify-natively t)
(setq org-latex-pdf-process
      '("pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "pdflatex -shell-escape -interaction nonstopmode -output-directory %o %f"))
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(require 'org-download)
;; Drag-and-drop to `dired`
(add-hook 'dired-mode-hook 'org-download-enable)
;; Inline-Images
(setq org-display-inline-images t) (setq org-redisplay-inline-images t) (setq org-startup-with-inline-images "inlineimages")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(darcula))
 '(custom-safe-themes
   '("3f1dcd824a683e0ab194b3a1daac18a923eed4dba5269eecb050c718ab4d5a26" "4363ac3323e57147141341a629a19f1398ea4c0b25c79a6661f20ffc44fdd2cb" "821c37a78c8ddf7d0e70f0a7ca44d96255da54e613aa82ff861fe5942d3f1efc" "032d5dc72a31ebde5fae25a8c1ef48bac6ba223588a1563d10dbf3a344423879" default))
 '(org-download-screenshot-method "xclip -selection clipboard -t image/png -o > %s")
 '(org-export-backends '(ascii html icalendar latex md odt))
 '(org-export-with-sub-superscripts nil)
 '(package-selected-packages
   '(ranger org-preview-html org-ac org-ai org-beautify-theme org-evil org-pdftools org-download org-bullets darcula-theme treemacs treemacs-all-the-icons treemacs-evil evil)))

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




(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)
