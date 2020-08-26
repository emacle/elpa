;;; sis-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "sis" "sis.el" (0 0 0 0))
;;; Generated autoloads from sis.el

(defvar sis-log-mode nil "\
Non-nil if Sis-Log mode is enabled.
See the `sis-log-mode' command
for a description of this minor mode.")

(custom-autoload 'sis-log-mode "sis" nil)

(autoload 'sis-log-mode "sis" "\
Log the execution of this package.

If called interactively, enable Sis-Log mode if ARG is positive,
and disable it if ARG is zero or negative.  If called from Lisp,
also enable the mode if ARG is omitted or nil, and toggle it if
ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'sis-get "sis" "\
Get input source." t nil)

(autoload 'sis-set-english "sis" "\
Command to set input source to `english'." t nil)

(autoload 'sis-set-other "sis" "\
Command to set input source to `other'." t nil)

(autoload 'sis-switch "sis" "\
Switch input source between english and other." t nil)

(autoload 'sis-ism-lazyman-config "sis" "\
Config ism for lazy man.

Run after the modes may have no effect.
ENGLISH-SOURCE: ENGLISH input source, nil means default,
                ignored by ISM-TYPE of 'fcitx, 'fcitx5, 'native.
OTHER-SOURCE: OTHER language input source, nil means default,
              ignored by ISM-TYPE of 'fcitx, 'fcitx5.
TYPE: TYPE can be 'native, 'emp, 'macism, 'im-select, 'fcitx, 'fcitx5, 'ibus.
      nil TYPE fits both 'emp and 'macism.

\(fn ENGLISH-SOURCE OTHER-SOURCE &optional ISM-TYPE)" t nil)

(defvar sis-auto-refresh-mode nil "\
Non-nil if Sis-Auto-Refresh mode is enabled.
See the `sis-auto-refresh-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sis-auto-refresh-mode'.")

(custom-autoload 'sis-auto-refresh-mode "sis" nil)

(autoload 'sis-auto-refresh-mode "sis" "\
Automaticly refresh input source.

If called interactively, enable Sis-Auto-Refresh mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(defvar sis-global-cursor-color-mode nil "\
Non-nil if Sis-Global-Cursor-Color mode is enabled.
See the `sis-global-cursor-color-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sis-global-cursor-color-mode'.")

(custom-autoload 'sis-global-cursor-color-mode "sis" nil)

(autoload 'sis-global-cursor-color-mode "sis" "\
Automaticly change cursor color according to input source.

If called interactively, enable Sis-Global-Cursor-Color mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(autoload 'sis-prefix-override-buffer-disable "sis" "\
Disable prefix override in current buffer." t nil)

(autoload 'sis-prefix-override-buffer-enable "sis" "\
Disable prefix override in current buffer." t nil)

(defvar sis-global-respect-mode nil "\
Non-nil if Sis-Global-Respect mode is enabled.
See the `sis-global-respect-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sis-global-respect-mode'.")

(custom-autoload 'sis-global-respect-mode "sis" nil)

(autoload 'sis-global-respect-mode "sis" "\
Respect buffer/mode by proper input source.

If called interactively, enable Sis-Global-Respect mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

- Respect start: start this mode with specific input source.
- Respect ~evil~: switch to English when leaving ~evil~ ~insert~ mode.
- Respect prefix key: switch to English for ~C-c~/ ~C-x~/ ~C-h~.
- Respect buffer: restore buffer input source when it regain focus.

\(fn &optional ARG)" t nil)

(autoload 'sis-follow-context-mode "sis" "\
Switch input source smartly according to context.

If called interactively, enable Sis-Follow-Context mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(put 'sis-global-follow-context-mode 'globalized-minor-mode t)

(defvar sis-global-follow-context-mode nil "\
Non-nil if Sis-Global-Follow-Context mode is enabled.
See the `sis-global-follow-context-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sis-global-follow-context-mode'.")

(custom-autoload 'sis-global-follow-context-mode "sis" nil)

(autoload 'sis-global-follow-context-mode "sis" "\
Toggle Sis-Follow-Context mode in all buffers.
With prefix ARG, enable Sis-Global-Follow-Context mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Sis-Follow-Context mode is enabled in all buffers where
`sis-follow-context-mode' would do it.
See `sis-follow-context-mode' for more information on Sis-Follow-Context mode.

\(fn &optional ARG)" t nil)

(autoload 'sis-follow-context "sis" "\
Follow the context to switch input source." nil nil)

(autoload 'sis-inline-mode "sis" "\
English overlay mode for mixed language editing.

If called interactively, enable Sis-Inline mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(put 'sis-global-inline-mode 'globalized-minor-mode t)

(defvar sis-global-inline-mode nil "\
Non-nil if Sis-Global-Inline mode is enabled.
See the `sis-global-inline-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `sis-global-inline-mode'.")

(custom-autoload 'sis-global-inline-mode "sis" nil)

(autoload 'sis-global-inline-mode "sis" "\
Toggle Sis-Inline mode in all buffers.
With prefix ARG, enable Sis-Global-Inline mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Sis-Inline mode is enabled in all buffers where
`sis-inline-mode' would do it.
See `sis-inline-mode' for more information on Sis-Inline mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "sis" '("sis-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; sis-autoloads.el ends here
