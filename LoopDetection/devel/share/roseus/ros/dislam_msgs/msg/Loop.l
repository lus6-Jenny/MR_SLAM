;; Auto-generated. Do not edit!


(when (boundp 'dislam_msgs::Loop)
  (if (not (find-package "DISLAM_MSGS"))
    (make-package "DISLAM_MSGS"))
  (shadow 'Loop (find-package "DISLAM_MSGS")))
(unless (find-package "DISLAM_MSGS::LOOP")
  (make-package "DISLAM_MSGS::LOOP"))

(in-package "ROS")
;;//! \htmlinclude Loop.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dislam_msgs::Loop
  :super ros::object
  :slots (_id0 _id1 _pose ))

(defmethod dislam_msgs::Loop
  (:init
   (&key
    ((:id0 __id0) 0)
    ((:id1 __id1) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id0 (round __id0))
   (setq _id1 (round __id1))
   (setq _pose __pose)
   self)
  (:id0
   (&optional __id0)
   (if __id0 (setq _id0 __id0)) _id0)
  (:id1
   (&optional __id1)
   (if __id1 (setq _id1 __id1)) _id1)
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
    ;; int64 _id0
    8
    ;; int64 _id1
    8
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _id0
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id0 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id0) (= (length (_id0 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id0 . bv) 0) 0) s)
              (write-long (ash (elt (_id0 . bv) 1) -1) s))
             ((and (class _id0) (= (length (_id0 . bv)) 1)) ;; big1
              (write-long (elt (_id0 . bv) 0) s)
              (write-long (if (>= _id0 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id0 s)(write-long (if (>= _id0 0) 0 #xffffffff) s)))
     ;; int64 _id1
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _id1 (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _id1) (= (length (_id1 . bv)) 2)) ;; bignum
              (write-long (ash (elt (_id1 . bv) 0) 0) s)
              (write-long (ash (elt (_id1 . bv) 1) -1) s))
             ((and (class _id1) (= (length (_id1 . bv)) 1)) ;; big1
              (write-long (elt (_id1 . bv) 0) s)
              (write-long (if (>= _id1 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _id1 s)(write-long (if (>= _id1 0) 0 #xffffffff) s)))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _id0
#+(or :alpha :irix6 :x86_64)
      (setf _id0 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id0 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _id1
#+(or :alpha :irix6 :x86_64)
      (setf _id1 (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _id1 (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get dislam_msgs::Loop :md5sum-) "2a9f0334f830308ab9b1bb7ec33c20af")
(setf (get dislam_msgs::Loop :datatype-) "dislam_msgs/Loop")
(setf (get dislam_msgs::Loop :definition-)
      "int64 id0
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



(provide :dislam_msgs/Loop "2a9f0334f830308ab9b1bb7ec33c20af")


