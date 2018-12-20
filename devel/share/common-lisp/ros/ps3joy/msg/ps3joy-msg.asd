
(cl:in-package :asdf)

(defsystem "ps3joy-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "try2" :depends-on ("_package_try2"))
    (:file "_package_try2" :depends-on ("_package"))
  ))