(require `org)

(setq org-base "~/Dropbox/Private/org/")
(setq org-agenda-files (file-expand-wildcards
                        (concat org-base "*.org")))
(setq org-default-notes-file (concat org-base "notes.org"))

(setq org-journal-file-format "%Y%m%d.org")
(setq org-journal-dir (concat org-base "journal/"))

(setq org-log-done t)
(setq org-agenda-file-regexp "\\`[^.].*\\.org'\\|[0-9]+")

(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))

(setq org-agenda-custom-commands
      '(("h" "Home View"
         ((tags "PRIORITY=\"A\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "High-Priority Items:")))
          (agenda "")
          (alltodo '(:timestamp))))))

(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "|" "DONE")))

(provide `es-org)
