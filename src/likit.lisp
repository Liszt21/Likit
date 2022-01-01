(defpackage likit
  (:use :cl)
  (:export
   ;;core
   :when-match
   ;; path
   :filep :folderp :folder-exists :path :map-child
   ;; system
   :shell :command-exists-p :toggle-feature))
