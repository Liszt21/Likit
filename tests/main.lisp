(defpackage likit/tests
  (:use :cl
        :likit
        :rove))
(in-package :likit/tests)

(deftest test-string
  (testing "test split"
           (ok (equal (split "a b c") '("a" "b" "c")))
           (ok (equal (split "a;b;c" #\;) '("a" "b" "c"))))
  (testing "test join"
           (ok (equal (join " " '("a" "b" "c")) "a b c"))))


(deftest test-path
  (testing "file tester"
           (ok (filep "Makefile"))
           (ng (filep "###"))
           (ng (filep "~")))
  (testing "folder tester"
           (ok (folderp "."))
           (ng (folderp "###"))
           (ng (folderp "Makefile"))))
