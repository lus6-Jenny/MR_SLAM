;; Auto-generated. Do not edit!


(when (boundp 'slam_msg::Keyframe)
  (if (not (find-package "SLAM_MSG"))
    (make-package "SLAM_MSG"))
  (shadow 'Keyframe (find-package "SLAM_MSG")))
(unless (find-package "SLAM_MSG::KEYFRAME")
  (make-package "SLAM_MSG::KEYFRAME"))

(in-package "ROS")
;;//! \htmlinclude Keyframe.msg.html


(defclass slam_msg::Keyframe
  :super ros::object
  :slots (_id _position _rotation ))

(defmethod slam_msg::Keyframe
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:rotation __rotation) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position __position)
   (setq _rotation __rotation)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:rotation
   (&optional __rotation)
   (if __rotation (setq _rotation __rotation)) _rotation)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float64[3] _position
    (* 8    3)
    ;; float32[4] _rotation
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float64[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float32[4] _rotation
     (dotimes (i 4)
       (sys::poke (elt _rotation i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float32[4] _rotation
   (dotimes (i (length _rotation))
     (setf (elt _rotation i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get slam_msg::Keyframe :md5sum-) "7ace3b589326bfcbd3ee9253849bfdab")
(setf (get slam_msg::Keyframe :datatype-) "slam_msg/Keyframe")
(setf (get slam_msg::Keyframe :definition-)
      "int32 id
float64[3] position
float32[4] rotation

")



(provide :slam_msg/Keyframe "7ace3b589326bfcbd3ee9253849bfdab")


