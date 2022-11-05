;; Auto-generated. Do not edit!


(when (boundp 'dislam_msgs::Loops)
  (if (not (find-package "DISLAM_MSGS"))
    (make-package "DISLAM_MSGS"))
  (shadow 'Loops (find-package "DISLAM_MSGS")))
(unless (find-package "DISLAM_MSGS::LOOPS")
  (make-package "DISLAM_MSGS::LOOPS"))

(in-package "ROS")
;;//! \htmlinclude Loops.msg.html


(defclass dislam_msgs::Loops
  :super ros::object
  :slots (_Loops ))

(defmethod dislam_msgs::Loops
  (:init
   (&key
    ((:Loops __Loops) (let (r) (dotimes (i 0) (push (instance dislam_msgs::Loop :init) r)) r))
    )
   (send-super :init)
   (setq _Loops __Loops)
   self)
  (:Loops
   (&rest __Loops)
   (if (keywordp (car __Loops))
       (send* _Loops __Loops)
     (progn
       (if __Loops (setq _Loops (car __Loops)))
       _Loops)))
  (:serialization-length
   ()
   (+
    ;; dislam_msgs/Loop[] _Loops
    (apply #'+ (send-all _Loops :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dislam_msgs/Loop[] _Loops
     (write-long (length _Loops) s)
     (dolist (elem _Loops)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dislam_msgs/Loop[] _Loops
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Loops (let (r) (dotimes (i n) (push (instance dislam_msgs::Loop :init) r)) r))
     (dolist (elem- _Loops)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dislam_msgs::Loops :md5sum-) "98d0c6cc3ee49f9066dc90163982613f")
(setf (get dislam_msgs::Loops :datatype-) "dislam_msgs/Loops")
(setf (get dislam_msgs::Loops :definition-)
      "Loop[] Loops
================================================================================
MSG: dislam_msgs/Loop
int64 id0
int64 id1
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :dislam_msgs/Loops "98d0c6cc3ee49f9066dc90163982613f")


