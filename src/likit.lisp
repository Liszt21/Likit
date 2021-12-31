(defpackage likit
  (:use :cl)
  (:export
   ;; path
   :filep :folderp :folder-exists :path :map-child
   ;; system
   :shell :command-exists-p :toggle-feature))
