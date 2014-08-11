(setq mine-directory (concat user-emacs-directory "mine"))
(add-to-list 'load-path mine-directory)
(add-to-list 'custom-theme-load-path mine-directory)

(require 'mine-builtin)
(require 'mine-defuns)
(require 'mine-advice)
(require 'mine-bindings)
(require 'mine-desktop)
(require 'mine-pretty)
(require 'mine-packages)
(require 'mine-eshell)
(require 'mine-org)
(require 'mine-irc)
(require 'mine-jabber)
(require 'mine-mode-line)

(when (eq system-type 'darwin) (require 'mine-osx))
(when (eq system-type 'gnu/linux) (require 'mine-linux))

(load-theme 'mine-color t)

(setq mine-custom-dir (concat user-emacs-directory "/custom/"))
(when (file-exists-p mine-custom-dir)
  (let ((custom-files (directory-files mine-custom-dir t "\.el$")))
    (mapcar 'load-file custom-files)))

(cd (getenv "HOME"))
(server-start)
