(in-package :likit)

(defmacro when-match ((target &key (test #'equal)) &rest forms)
  `(progn ,@(apply #'append
                   (loop for form in forms
                         when (intersection (eval target) (car form) :test test)
                         collect (cdr form)))))

