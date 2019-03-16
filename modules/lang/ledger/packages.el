;; -*- no-byte-compile: t; -*-
;;; lang/ledger/packages.el

(package! ledger-mode)

(when (featurep! :feature evil)
  (package! evil-ledger))

(when (featurep! :tools flycheck)
  (package! flycheck-ledger))
