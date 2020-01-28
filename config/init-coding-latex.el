
(use-package yasnippet
  :ensure t
  :hook (latex-mode . yas-minor-mode)
  :config (setq yas-triggers-in-field t))
(add-hook 'yas-minor-mode-hook 'yas-reload-all)
(add-hook 'latex-mode-hook (lambda () (linum-mode t)))
(add-hook 'latex-mode-hook (lambda () (electric-indent-local-mode -1)))

(setq matches '(( "(" . ")"  )
		( "[" . "]"  )
		( "|" . "|"  )
		( "\|" . "\|")
		( "\{" . "\}")
		( "." . "|"  )
		( "\langle" . "\rangle")
		( "\lfloor" . "\rfloor")
		( "\lceil" . "\rceil")))
(defun match-or-duplicate (str)
  (if (assoc str matches)
      (cdr (assoc str matches))
      str))
