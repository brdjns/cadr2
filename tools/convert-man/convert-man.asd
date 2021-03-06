;;; -*- Lisp -*-

(in-package :cl-user)

(defpackage :convert-man.system
  (:use :cl :asdf))

(in-package :convert-man.system)

(defsystem :convert-man
    :description "Convert CADR manual from Bolio format to XML"

    :depends-on (:cxml :cl-ppcre :cl-interpol)

    :components ((:file "package")
                 (:file "config" :depends-on ("package"))
                 (:file "utils" :depends-on ("package"))
                 (:file "xref" :depends-on ("config"))
                 (:file "convert-man" :depends-on ("utils" "xref"))))