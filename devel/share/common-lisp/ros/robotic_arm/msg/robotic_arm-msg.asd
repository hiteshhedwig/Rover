
(cl:in-package :asdf)

(defsystem "robotic_arm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ghusa" :depends-on ("_package_ghusa"))
    (:file "_package_ghusa" :depends-on ("_package"))
  ))