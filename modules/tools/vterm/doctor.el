;;; tools/vterm/doctor.el -*- lexical-binding: t; -*-

(unless (executable-find "vterm-ctrl")
  (warn! "Couldn't find libvterm. Vterm module won't compile."))

(unless (executable-find "make")
  (warn! "Couldn't find make command. Vterm module won't compile."))

(unless (executable-find "cmake")
  (warn! "Couldn't find cmake command. Vterm module won't compile"))

(unless (fboundp 'module-load)
  (warn! "Your emacs don't have MODULES support. Vterm module won't work."))
