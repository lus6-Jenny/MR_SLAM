;; Auto-generated. Do not edit!


(when (boundp 'slam_msg::Keyframes)
  (if (not (find-package "SLAM_MSG"))
    (make-package "SLAM_MSG"))
  (shadow 'Keyframes (find-package "SLAM_MSG")))
(unless (find-package "SLAM_MSG::KEYFRAMES")
  (make-package "SLAM_MSG::KEYFRAMES"))

(in-package "ROS")
;;//! \htmlinclude Keyframes.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass slam_msg::Keyframes
  :super ros::object
  :slots (_header _keyframes ))

(defmethod slam_msg::Keyframes
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:keyframes __keyframes) (let (r) (dotimes (i 0) (push (instance slam_msg::Keyframe :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _keyframes __keyframes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:keyframes
   (&rest __keyframes)
   (if (keywordp (car __keyframes))
       (send* _keyframes __keyframes)
     (progn
       (if __keyframes (setq _keyframes (car __keyframes)))
       _keyframes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; slam_msg/Keyframe[] _keyframes
    (apply #'+ (send-all _keyframes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; slam_msg/Keyframe[] _keyframes
     (write-long (length _keyframes) s)
     (dolist (elem _keyframes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; slam_msg/Keyframe[] _keyframes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _keyframes (let (r) (dotimes (i n) (push (instance slam_msg::Keyframe :init) r)) r))
     (dolist (elem- _keyframes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get slam_msg::Keyframes :md5sum-) "a4a320307c3c27d6044230b27f893913")
(setf (get slam_msg::Keyframes :datatype-) "slam_msg/Keyframes")
(setf (get slam_msg::Keyframes :definition-)
      "Header header
Keyframe[] keyframes

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: slam_msg/Keyframe
int32 id
float64[3] position
float32[4] rotation

")



(provide :slam_msg/Keyframes "a4a320307c3c27d6044230b27f893913")


