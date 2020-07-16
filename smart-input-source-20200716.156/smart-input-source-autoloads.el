;;; smart-input-source-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "smart-input-source" "smart-input-source.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from smart-input-source.el

(autoload 'smart-input-source-get "smart-input-source" "\
Get input source.

\(fn)" t nil)

(autoload 'smart-input-source-set-english "smart-input-source" "\
Set input source to `english'.

\(fn)" t nil)

(autoload 'smart-input-source-set-other "smart-input-source" "\
Set input source to `other'.

\(fn)" t nil)

(autoload 'smart-input-source-switch "smart-input-source" "\
Switch input source between english and other.

\(fn)" t nil)

(defvar smart-input-source-global-cursor-color-mode nil "\
Non-nil if Smart-Input-Source-Global-Cursor-Color mode is enabled.
See the `smart-input-source-global-cursor-color-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smart-input-source-global-cursor-color-mode'.")

(custom-autoload 'smart-input-source-global-cursor-color-mode "smart-input-source" nil)

(autoload 'smart-input-source-global-cursor-color-mode "smart-input-source" "\
Automaticly change cursor color according to input source.

\(fn &optional ARG)" t nil)

(defvar smart-input-source-global-respect-mode nil "\
Non-nil if Smart-Input-Source-Global-Respect mode is enabled.
See the `smart-input-source-global-respect-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smart-input-source-global-respect-mode'.")

(custom-autoload 'smart-input-source-global-respect-mode "smart-input-source" nil)

(autoload 'smart-input-source-global-respect-mode "smart-input-source" "\
Respect buffer/mode by proper input source.

- Respect start: start this mode with specific input source.
- Respect ~evil~: switch to English when leaving ~evil~ ~insert~ mode.
- Respect prefix key: switch to English for ~C-c~/ ~C-x~/ ~C-h~.
- Respect buffer: recover buffer input source when it regain focus.

\(fn &optional ARG)" t nil)

(autoload 'smart-input-source-follow-context-mode "smart-input-source" "\
Switch input source smartly according to context.

\(fn &optional ARG)" t nil)

(defvar smart-input-source-global-follow-context-mode nil "\
Non-nil if Smart-Input-Source-Global-Follow-Context mode is enabled.
See the `smart-input-source-global-follow-context-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smart-input-source-global-follow-context-mode'.")

(custom-autoload 'smart-input-source-global-follow-context-mode "smart-input-source" nil)

(autoload 'smart-input-source-global-follow-context-mode "smart-input-source" "\
Toggle Smart-Input-Source-Follow-Context mode in all buffers.
With prefix ARG, enable Smart-Input-Source-Global-Follow-Context mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smart-Input-Source-Follow-Context mode is enabled in all buffers where
`smart-input-source-follow-context-mode' would do it.
See `smart-input-source-follow-context-mode' for more information on Smart-Input-Source-Follow-Context mode.

\(fn &optional ARG)" t nil)

(autoload 'smart-input-source-inline-mode "smart-input-source" "\
English overlay mode for mixed language editing.

\(fn &optional ARG)" t nil)

(defvar smart-input-source-global-inline-mode nil "\
Non-nil if Smart-Input-Source-Global-Inline mode is enabled.
See the `smart-input-source-global-inline-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `smart-input-source-global-inline-mode'.")

(custom-autoload 'smart-input-source-global-inline-mode "smart-input-source" nil)

(autoload 'smart-input-source-global-inline-mode "smart-input-source" "\
Toggle Smart-Input-Source-Inline mode in all buffers.
With prefix ARG, enable Smart-Input-Source-Global-Inline mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Smart-Input-Source-Inline mode is enabled in all buffers where
`smart-input-source-inline-mode' would do it.
See `smart-input-source-inline-mode' for more information on Smart-Input-Source-Inline mode.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; smart-input-source-autoloads.el ends here
