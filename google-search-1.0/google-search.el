;;; google-search.el --- Use current selection or enter string as Google query.

;; Copyright (C) 2001 Erik Arneson

;; Author:     Erik Arneson
;; Maintainer: erik@aarg.net, qkbeyond <at> gmail.com
;; Created:    Jun-06-2001
;; Modified:   Sun May 13 10:10:13 2012
;; Version:    1.0
;; Keywords:   extensions, web, search, google

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation; either version 2, or (at your
;; option) any later version.
;;
;; This file is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this file; see the file COPYING.  If not, write to the
;; Free Software Foundation, 59 Temple Place - Suite 330, Boston, MA
;; 02111-1307, USA.

;;; Commentary:

;; Map this to a global key.  I use `C-c g'.  Highlight something in
;; Emacs, hit this key sequence, and the highlighted region will be
;; sent to Google.

;;; Changelog (sort of)
;;
;; I hacked this a bit, created google-it and made it interactive.
;; Removed XEmacs-isms - buf was bound to (current-buffer) and passed
;; to region-{beginning,end} and buffer-substring, but those use
;; the current buffer by default (and in Emacs, they can't use others).
;; Also conditionalised use of region-exists-p.
;; --Magnus Henoch

;;; Code:

(require 'url)

(defvar google-search-maxlen 50
  "Maximum string length of search term.  This prevents you from accidentally
sending a five megabyte query string to Netscape.")

;;;###autoload
(defun google-it ()
  "Search for SEARCH-STRING on google."
  (interactive)
  (let ((search-string (if mark-active
			   (buffer-substring-no-properties (region-beginning) (region-end))
			 (current-word nil t))))
    (setq search-string (read-string (format "Google Searching for (default %s): " search-string)
				     nil nil search-string))
    (if (> (length search-string) google-search-maxlen)
	(setq search-string (substring-no-properties search-string 0 google-search-maxlen)))
    (message "%s" (concat "Google Searching: " search-string))
    (browse-url (concat "http://www.google.com/search?client=emacs&q="
			(url-hexify-string
			 (encode-coding-string search-string 'utf-8))))))

(require 'net-utils)

(defun trim-string (string)
  "Remove white spaces in beginning and ending of STRING.
White space here is any of: space, tab, emacs newline (line feed, ASCII 10)."
(replace-regexp-in-string "\\`[ \t\n]*" "" (replace-regexp-in-string "[ \t\n]*\\'" "" string))
)

;;;###autoload
(defun ip138 (ipadd)
  (interactive
   (list (read-from-minibuffer "ip138 host(localhost): " (net-utils-machine-at-point))))
  (let* (
	 (ipadd (if (string= "" (trim-string ipadd))
		    (trim-string (shell-command-to-string "curl -s whatismyip.akamai.com")) ;为空则查询本机ip
		  (trim-string ipadd)
		  ))
	 (url (concat "http://ip138.com/ips138.asp?ip=" ipadd))
	 (cmd (format "curl -s  %s" url))
	 )
    (with-temp-buffer
      
      (call-process-shell-command cmd nil t) ;将下面语句的注释掉可以在当前缓冲光标处得到此函数里命令执行后的返回值 方便测试

      (goto-char (point-min))
      (if (re-search-forward		    ; if返回正常的<rsp stat="ok"> 页面
      	   "<li>\\(.*\\)<\\/li>"
      	   nil t 1)
      	  (let ((s (concat "*" ipadd "* - ip138.com\n"   (mapconcat 'identity  (split-string (match-string 1) "</li><li>") "\n"))))
      	    ;;	    (kill-new s)
      	    (message s)
      	    (kill-buffer (current-buffer)))
      	(message "CheckIP failed.")))))

(provide 'google-search)

;;; google-search.el ends here
