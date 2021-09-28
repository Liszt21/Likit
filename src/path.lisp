(in-package :likit)

(defun filep (path)
    (let ((p (and path (probe-file path))))
        (when (and p (pathname-name p )) p)))

(defun folderp (path)
    (let ((p (and path (probe-file path))))
        (when (and p (not (pathname-name p))) p)))