
(cl:in-package :asdf)

(defsystem "dislam_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "GetInitMap" :depends-on ("_package_GetInitMap"))
    (:file "_package_GetInitMap" :depends-on ("_package"))
  ))