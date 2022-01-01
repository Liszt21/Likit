(in-package :likit)

(defmacro when-match ((target &key (test #'equal)) &rest forms)
  `(progn ,@(apply #'append
                   (loop for form in forms
                         when (intersection (eval target) (car form) :test test)
                         collect (cdr form)))))

(defun get-system-info ()
  "Get system revelent infos"
  ;; set features
  (loop for distro in (run/lines "grep -Pho '[a-zA-Z ]*(?= Linux)' /etc/*-release | awk '!a[$0]++{print}'")
        for key = (intern (string-upcase distro) 'keyword)
        do (push key cl:*features*)))

(get-system-info)

