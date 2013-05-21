;hide splashscreen
(setq inhibit-startup-screen t)

;set language Japanese
(set-language-environment 'Japanese)
;set encoding utf-8
(prefer-coding-system 'utf-8)
(if window-system (progn 
;font settings
(create-fontset-from-ascii-font "Ricty-17:weight=normal:slant=normal"
								nil "ricty")
(set-fontset-font "fontset-ricty"
	'unicode
	(font-spec :family "Ricty" :size 17)
	nil
	'append)
(add-to-list 'default-frame-alist '(font . "fontset-ricty"))

;colorscheme settings
(load-theme 'wombat t)

;hide toolbar
(tool-bar-mode -1)
;hide scrollbar
(toggle-scroll-bar nil)

;set transparency 90%
(add-to-list 'default-frame-alist '(alpha . 90))

;window size settings
(setq initial-frame-alist '((width . 177) (height . 47)
(top . 0) (left . 0)))

;audio off
(setq visible-bell t)

))

;do not backup
(setq backup-inhibited t)

;show number
(global-linum-mode t)
