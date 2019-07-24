;;; doom-community-themes.el --- Additional themes from the Doom community -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2019 Free Software Foundation, Inc.
;;
;; Version: 0.6.0
;; Keywords: dark light theme faces
;; Homepage: https://github.com/Emiller88/emacs-doom-community-themes
;; Package-Requires: ((emacs "25.1") (doom-themes "2.1.6"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;; Doom Community Themes is a supplement for Doom Themes providing additional
;; themes developed and maintained by the community.
;;
;;; Code:

(require 'doom-themes)

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-directory load-file-name)))

(provide 'doom-community-themes)
;;; doom-community-themes.el ends here
