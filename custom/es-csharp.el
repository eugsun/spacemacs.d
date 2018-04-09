(require 'csharp-mode)
(require 'omnisharp)

(spacemacs/set-leader-keys-for-major-mode 'csharp-mode "f f" 'omnisharp-code-format-entire-file)

(provide 'es-csharp)
