;;
;; Copyright 2015-2017 Harmonic Software Systems Ltd

;; Author : Ed Liversidge, Harmonic Software Systems Ltd
;; URL:
;; Version: 0.1
;; Package-Requires:

;; This program is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free Software
;; Foundation; either version 2, or (at your option) any later version.

;; This program is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
;; FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
;; details.

;; You should have received a copy of the GNU General Public License along with
;; GNU Emacs; see the file COPYING.  If not, write to the Free Software
;; Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
;;

;; ABOUT
;;
;; converts the environment output for VxWorks from a generated text file to a
;; emacs elisp file to set the environment variables for vxWorks. This is necessary
;; to get all the paths and environment variables into spacemacs, to build VxWorks
;; images and projects from Spacemacs.
;;
;; To use:
;;  1. Generate the basic environment file
;;
;;   cd <your windriver install>  e.g. cd C:\WindRiver_vxw6.9
;;   wrenv -p vxworks-6.9 -f bat -o print_env > vxworks6env.el
;;
;;  2. Open vxworks6env.el in spacemacs
;;
;;  3. Run the function below to convert to emacs elisp code
;;
;;   SPC : convert-file-to-emacs-env
;; 

(defun convert-line-to-emacs-env ()
  "Converts the current line to an emacs setenv string"

  ;; first, change:
  ;;    set Path=C:\WindRiver_vx to (setenv "PATH" "C:\...)
  ;;

  (beginning-of-line)
  (if (search-forward "set" nil t)
      (progn 
        (backward-char 3)
        (insert "(")
        (forward-char 3)
        (insert "env")
        (forward-char 1)
        (insert "\"")
        (search-forward "=" nil t)
        (backward-char 1)
        (delete-char 1)
        (insert "\" \"")
        (end-of-line)
        (insert "\")"))))


(defun convert-file-to-emacs-env ()
  "Converts the output from wrenv to emacs setenv format"
  (interactive)
  (with-current-buffer "vxworks6env.el"
    (goto-char (point-min))
    (convert-line-to-emacs-env)
    (while (= 0 (forward-line 1))
      (convert-line-to-emacs-env))

    ;; replace \ with /
    (goto-char (point-min))
    (while (search-forward "\\" nil t)
        (progn
          (backward-char 1)
          (delete-char 1)
          (insert "/")))

    ;; replace 'Path' with 'PATH'
    (goto-char (point-min))
    (search-forward "Path" nil t)
    (replace-match "PATH")

    (save-buffer)))

