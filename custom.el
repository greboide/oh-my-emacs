;;; This file contains some temporary code snippets, it will be loaded after
;;; various oh-my-emacs modules. When you just want to test some code snippets
;;; and don't want to bother with the huge ome.*org files, you can put things
;;; here.

;; For example, oh-my-emacs disables menu-bar-mode by default. If you want it
;; back, just put following code here.
(menu-bar-mode t)

;;; You email address
(setq user-mail-address "glauber.prado83@gmail.com")

;;; Calendar settings
;; you can use M-x sunrise-sunset to get the sun time
(setq calendar-latitude -23.266757)
(setq calendar-longitude -45.94698339)
(setq calendar-location-name "Jacarei, Brasil")
;;; Time related settings
;; show time in 24hours format
(setq display-time-24hr-format t)
;; show time and date
(setq display-time-and-date t)
;; time change interval
(setq display-time-interval 10)
;; show time
(display-time-mode t)

;;; Some tiny tool functions
(defun replace-all-chinese-quote ()
  (interactive)
  (save-excursion
    (mark-whole-buffer)
    (replace-regexp  "”\\|“" "\"")
    (mark-whole-buffer)
    (replace-regexp "’\\|‘" "'")))

;; Comment function for GAS assembly language
(defun gas-comment-region (start end)
  "Comment region for AT&T syntax assembly language The default
comment-char for gas is ';', we need '#' instead"
  (interactive "r")
  (setq end (copy-marker end t))
  (save-excursion
    (goto-char start)
    (while (< (point) end)
      (beginning-of-line)
      (insert "# ")
      (next-line))
    (goto-char end)))

(defun gas-uncomment-region (start end)
  "Uncomment region for AT&T syntax assembly language the
inversion of gas-comment-region"
  (interactive "r")
  (setq end (copy-marker end t))
  (save-excursion
    (goto-char start)
    (while (< (point) end)
      (beginning-of-line)
      (if (equal (char-after) ?#)
          (delete-char 1))
      (next-line))
    (goto-char end)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-url-browser-function (quote browse-url-firefox))
 '(circe-default-nick "gla")
 '(circe-reduce-lurker-spam t)
 '(custom-safe-themes
   (quote
    ("1b1e54d9e0b607010937d697556cd5ea66ec9c01e555bb7acea776471da59055" "90e4b4a339776e635a78d398118cb782c87810cb384f1d1223da82b612338046" "d9b9fe2ce66ddde133488cb544e643fd0eba4f89af513953eff5d65454b1cacc" default)))
 '(dictem-default-database "*")
 '(dictem-default-strategy ".")
 '(flycheck-checkers
   (quote
    (irony ada-gnat asciidoc cfengine chef-foodcritic coffee coffee-coffeelint coq css-csslint d-dmd elixir emacs-lisp erlang eruby-erubis fortran-gfortran go-gofmt go-golint go-vet go-build go-test go-errcheck haml handlebars haskell-ghc haskell-hlint html-tidy javascript-jshint javascript-eslint javascript-gjslint json-jsonlint less lua perl perl-perlcritic php php-phpmd php-phpcs puppet-parser puppet-lint python-flake8 python-pylint python-pycompile r-lintr racket rpm-rpmlint rst rst-sphinx ruby-rubocop ruby-rubylint ruby ruby-jruby rust sass scala scala-scalastyle scss sh-bash sh-posix-dash sh-posix-bash sh-zsh sh-shellcheck slim tex-chktex tex-lacheck texinfo verilog-verilator xml-xmlstarlet xml-xmllint yaml-jsyaml yaml-ruby)))
 '(global-smart-tab-mode nil)
 '(imaxima-use-maxima-mode-flag t)
 '(inf-ruby-default-implementation "pry")
 '(initial-frame-alist
   (quote
    ((vertical-scroll-bars)
     (left-fringe . 8)
     (right-fringe . 8))))
 '(nyan-animation-frame-interval 0.1)
 '(nyan-mode t)
 '(nyan-wavy-trail t)
 '(omnisharp-imenu-support t)
 '(omnisharp-server-executable-path
   "/home/glauber/work/OmniSharpServer/OmniSharp/bin/Debug/OmniSharp.exe")
 '(x-select-enable-primary t)
 '(yascroll:delay-to-hide nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#000000" :foreground "#ffffff" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight bold :height 168 :width normal :foundry "PfEd" :family "Fantasque Sans Mono"))))
 '(ac-emacs-eclim-candidate-face ((t (:inherit ac-candidate-face))))
 '(ac-emacs-eclim-selection-face ((t (:inherit ac-selection-face))))
 '(show-paren-match ((t (:background "#222222"))))
 '(sp-show-pair-match-face ((t (:background "grey33")))))
