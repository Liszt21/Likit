(defpackage likit/tests
  (:use :cl
        :likit
        :rove))
(in-package :likit/tests)

(deftest test-string-1
  (testing "test split"
           (ok (equal (split "a b c") '("a" "b" "c")))
           (ok (equal (split "a;b;c" #\;) '("a" "b" "c"))))
  (testing "test join"
           (ok (equal (join " " '("a" "b" "c")) "a b c"))))
