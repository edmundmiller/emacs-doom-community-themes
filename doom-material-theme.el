;;; doom-material-theme.el
(require 'doom-themes)

;;
(defgroup doom-material-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(defcustom doom-material-brighter-modeline nil
  "If non-nil, more vivid colors will be used to style the mode-line."
  :group 'doom-material-theme
  :type 'boolean)

(defcustom doom-material-brighter-comments nil
  "If non-nil, comments will be highlighted in more vivid colors."
  :group 'doom-material-theme
  :type 'boolean)

(defcustom doom-material-comment-bg doom-material-brighter-comments
  "If non-nil, comments will have a subtle, darker background. Enhancing their
legibility."
  :group 'doom-material-theme
  :type 'boolean)

(defcustom doom-material-padded-modeline nil
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-material-theme
  :type '(or integer boolean))

;;
(def-doom-theme doom-material
  "Doom material theme"

  ;; name        default   256       16
  ((bg         '("#0F111A" nil       nil            ))
   (bg-alt     '("#202438" nil       nil            ))
   (base0      '("#0d0d0d" "black"   "black"        ))
   (base1      '("#1b1b1b" "#1b1b1b"                ))
   (base2      '("#212122" "#1e1e1e"                ))
   (base3      '("#292b2b" "#292929" "brightblack"  ))
   (base4      '("#3f4040" "#3f3f3f" "brightblack"  ))
   (base5      '("#5c5e5e" "#525252" "brightblack"  ))
   (base6      '("#757878" "#6b6b6b" "brightblack"  ))
   (base7      '("#969896" "#979797" "brightblack"  ))
   (base8      '("#ffffff" "#ffffff" "white"        ))
   (fg         '("#c5c8c6" "#c5c5c5" "white"  ))
   (fg-alt         (doom-darken fg 0.6))

   (grey       '("#5a5b5a" "#5a5a5a" "brightblack"  ))
   (red        '("#FF5370" "#FF5F5F" "red"          ))
   (orange     '("#FF8F6E" "#FF875F" "brightred"    ))
   (green      '("#A3DB4F" "#AFD75F" "green"        ))
   (teal       '("#C3E88D" "#AFD787" "brightgreen"  ))
   (yellow     '("#FFCB6B" "#FFD75F" "yellow"       ))
   (blue       '("#82AAFF" "#87AFFF" "brightblue"   ))
   (dark-blue  '("#3575FF" "#5F87FF" "blue"         ))
   (magenta    '("#A652DE" "#AF5FD7" "magenta"      ))
   (violet     '("#C792EA" "#D787D7" "brightmagenta"))
   (cyan       '("#89DDFF" "#87DDFF" "brightcyan"   ))
   (dark-cyan  '("#3BC7FF" "#5FD7FF" "cyan"         ))

   ;; face categories -- required for all themes
   (highlight      blue)
   (vertical-bar   (doom-lighten bg 0.05))
   (selection      dark-blue)
   (builtin        blue)
   (comments       grey)
   (doc-comments   (doom-lighten grey 0.25))
   (constants      red)
   (functions      yellow)
   (keywords       blue)
   (methods        cyan)
   (operators      blue)
   (type           yellow)
   (strings        teal)
   (variables      cyan)
   (numbers        magenta)
   (region         dark-blue)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    orange)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (hidden     `(,(car bg) "black" "black"))
   (-modeline-bright doom-material-brighter-modeline)
   (-modeline-pad
    (when doom-material-padded-modeline
      (if (integerp doom-material-padded-modeline) doom-material-padded-modeline 4)))

   (modeline-fg     nil)
   (modeline-fg-alt base5)

   (modeline-bg
    (if -modeline-bright
        base3
        `(,(doom-darken (car bg) 0.15) ,@(cdr base0))))
   (modeline-bg-l
    (if -modeline-bright
        base3
        `(,(doom-darken (car bg) 0.1) ,@(cdr base0))))
   (modeline-bg-inactive   (doom-darken bg 0.1))
   (modeline-bg-inactive-l `(,(car bg) ,@(cdr base1))))


  ;; --- extra faces ------------------------
  ((elscreen-tab-other-screen-face :background "#353a42" :foreground "#1e2022")

   ((line-number &override) :foreground grey)
   ((line-number-current-line &override) :foreground blue)
   ;;((line-number &override) :background (doom-darken bg 0.025))

   ;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground violet)
   (rainbow-delimiters-depth-2-face :foreground blue)
   (rainbow-delimiters-depth-3-face :foreground orange)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground magenta)
   (rainbow-delimiters-depth-6-face :foreground yellow)
   (rainbow-delimiters-depth-7-face :foreground teal)

   (font-lock-comment-face
    :foreground comments
    :background (if doom-material-comment-bg (doom-lighten bg 0.05)))
   (font-lock-doc-face
    :inherit 'font-lock-comment-face
    :foreground doc-comments)

   (doom-modeline-bar :background (if -modeline-bright modeline-bg highlight))

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-inactive :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive)))
   (mode-line-emphasis
    :foreground (if -modeline-bright base8 highlight))
   (mode-line-buffer-id
    :foreground highlight)

   (solaire-mode-line-face
    :inherit 'mode-line
    :background modeline-bg-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-l)))
   (solaire-mode-line-inactive-face
    :inherit 'mode-line-inactive
    :background modeline-bg-inactive-l
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-inactive-l)))

   (telephone-line-accent-active
    :inherit 'mode-line
    :background (doom-lighten bg 0.2))
   (telephone-line-accent-inactive
    :inherit 'mode-line
    :background (doom-lighten bg 0.05))

   ;; --- major-mode faces -------------------
   ;; css-mode / scss-mode
   (css-proprietary-property :foreground red)
   (css-property             :foreground orange)
   (css-selector             :foreground blue)

   ;; markdown-mode
   (markdown-markup-face :foreground base5)
   (markdown-header-face :inherit 'bold :foreground red)
   (markdown-code-face :background (doom-lighten base3 0.05))

   ;; org-mode
   (org-hide :foreground hidden)
   (org-block :background base2)
   (org-block-begin-line :background base2 :foreground comments)
   (solaire-org-hide-face :foreground hidden))


  ;; --- extra variables ---------------------
  ;; ()
  )

;;; doom-material-theme.el ends here
