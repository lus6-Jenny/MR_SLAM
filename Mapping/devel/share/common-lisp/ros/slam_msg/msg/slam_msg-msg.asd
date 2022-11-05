
(cl:in-package :asdf)

(defsystem "slam_msg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Keyframe" :depends-on ("_package_Keyframe"))
    (:file "_package_Keyframe" :depends-on ("_package"))
    (:file "Keyframes" :depends-on ("_package_Keyframes"))
    (:file "_package_Keyframes" :depends-on ("_package"))
  ))