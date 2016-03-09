;; Emacs file

;paren matching
(show-paren-mode 1)

;indent with spaces
;doesn't quite work yet..
(setq tab-width 4)
(setq tab-stop-list (number-sequence 4 200 4))
(setq-default indent-tabs-mode nil)

;stuff with key mappings
;(setq keymap (make-sparse-keymap))
;(define-key keymap "\e[1;5C" [(control right)])
;(define-key keymap "\e[1;5D" [(control left)])
;(define-key keymap "\e[1;5A" [(control up)])
;(define-key keymap "\e[1;5B" [(control down)])
(define-key input-decode-map "\e[C" [(control right)])
(define-key input-decode-map "\e[D" [(control left)])
(define-key input-decode-map "\e[B" [(control down)])
(define-key input-decode-map "\e[A" [(control up)])
(define-key global-map [select] 'end-of-line)

; Add scrolling the view by just one line with these functions
(defun gcm-scroll-down ()
  (interactive)
  (scroll-up 1))

(defun gcm-scroll-up ()
  (interactive)
  (scroll-down 1))

(global-set-key [(control down)] 'gcm-scroll-down)
(global-set-key [(control up)]   'gcm-scroll-up)

; set line numbers
(global-linum-mode 1)
(setq linum-format "%d ")

(setq vc-follow-symlinks t)
