;;; tools/lsp/config.el -*- lexical-binding: t; -*-

(def-package! lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (setq lsp-prefer-flymake nil
        lsp-ui-doc-max-height 8
        lsp-ui-doc-max-width 35
        lsp-ui-sideline-ignore-duplicate t)
  (define-key! lsp-ui-mode-map
    [remap xref-find-definitions] #'lsp-ui-peek-find-definitions
    [remap xref-find-references]  #'lsp-ui-peek-find-references)
  (set-lookup-handlers! 'lsp-ui-mode
    :definition #'lsp-ui-peek-find-definitions
    :references #'lsp-ui-peek-find-references))

(def-package! company-lsp
  :when (featurep! :completion company)
  :after lsp-mode
  :config
  (set-company-backend! 'lsp-mode 'company-lsp))
