(in-package :likit)

(defun shell (string &rest arguments)
  (third
   (multiple-value-list
    (uiop:run-program
     (apply #'format
            (cons nil
                  (cons (format nil
                                "~A~A"
                                #+os-windows "powershell $OLDPWD=pwd;"
                                #-os-windows "" string)
                        arguments)))
     :ignore-error-status t
     :output :interactive
     :input :interactive
     :error-output :interactive))))

;; (defun get-ros)

(defun update-roswell-local-projects (&optional user repo)
  ())
