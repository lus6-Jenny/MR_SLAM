;; Auto-generated. Do not edit!


(when (boundp 'dislam_msgs::DiSCO)
  (if (not (find-package "DISLAM_MSGS"))
    (make-package "DISLAM_MSGS"))
  (shadow 'DiSCO (find-package "DISLAM_MSGS")))
(unless (find-package "DISLAM_MSGS::DISCO")
  (make-package "DISLAM_MSGS::DISCO"))

(in-package "ROS")
;;//! \htmlinclude DiSCO.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dislam_msgs::DiSCO
  :super ros::object
  :slots (_stamp _fftr _ffti _signature _pose ))

(defmethod dislam_msgs::DiSCO
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:fftr __fftr) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:ffti __ffti) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:signature __signature) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _fftr __fftr)
   (setq _ffti __ffti)
   (setq _signature __signature)
   (setq _pose __pose)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:fftr
   (&optional __fftr)
   (if __fftr (setq _fftr __fftr)) _fftr)
  (:ffti
   (&optional __ffti)
   (if __ffti (setq _ffti __ffti)) _ffti)
  (:signature
   (&optional __signature)
   (if __signature (setq _signature __signature)) _signature)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; float32[] _fftr
    (* 4    (length _fftr)) 4
    ;; float32[] _ffti
    (* 4    (length _ffti)) 4
    ;; float32[] _signature
    (* 4    (length _signature)) 4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float32[] _fftr
     (write-long (length _fftr) s)
     (dotimes (i (length _fftr))
       (sys::poke (elt _fftr i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _ffti
     (write-long (length _ffti) s)
     (dotimes (i (length _ffti))
       (sys::poke (elt _ffti i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _signature
     (write-long (length _signature) s)
     (dotimes (i (length _signature))
       (sys::poke (elt _signature i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _fftr
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _fftr (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _fftr i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _ffti
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ffti (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ffti i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _signature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _signature (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _signature i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get dislam_msgs::DiSCO :md5sum-) "d3b54ec90639aa0f312784272d40b050")
(setf (get dislam_msgs::DiSCO :datatype-) "dislam_msgs/DiSCO")
(setf (get dislam_msgs::DiSCO :definition-)
      "time stamp
float32[] fftr 
float32[] ffti 
float32[] signature
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



(provide :dislam_msgs/DiSCO "d3b54ec90639aa0f312784272d40b050")


