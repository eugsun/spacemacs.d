(require 'org)
(require 'markdown-mode)

(add-hook 'org-mode-hook 'olivetti-mode)
(add-hook 'markdown-mode-hook 'olivetti-mode)

(provide 'es-writer)
