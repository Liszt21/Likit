(in-package :likit)

(defun join (str list)
  (if (null list)
      ""
    (let ((result (first list)))
      (dolist (item (cdr list))
        (setf result (concatenate 'string result str item)))
      result)))

(defun split (string &optional (separator #\Space))
  "Return a list from a string splited at each separators"
  (loop for i = 0 then (1+ j)
        as j = (position separator string :start i)
        as sub = (subseq string i j)
        unless (string= sub "") collect sub
        while j))