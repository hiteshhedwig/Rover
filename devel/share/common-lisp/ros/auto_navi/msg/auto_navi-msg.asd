
(cl:in-package :asdf)

(defsystem "auto_navi-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gps_data" :depends-on ("_package_gps_data"))
    (:file "_package_gps_data" :depends-on ("_package"))
  ))