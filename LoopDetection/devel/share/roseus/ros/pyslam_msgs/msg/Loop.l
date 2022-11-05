;; Auto-generated. Do not edit!


(when (boundp 'pyslam_msgs::Loop)
  (if (not (find-package "PYSLAM_MSGS"))
    (make-package "PYSLAM_MSGS"))
  (shadow 'Loop (find-package "PYSLAM_MSGS")))
(unless (find-package "PYSLAM_MSGS::LOOP")
  (make-package "PYSLAM_MSGS::LOOP"))

(in-package "ROS")
;;//! \htmlinclude Loop.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pyslam_msgs::Loop
  :super ros::object
  :slots (_id0 _id1 _pose ))

(defmethod pyslam_msgs::Loop
  (:init
   (&key
    ((:id0 __id0) (make-array 0 :initial-element 0 :element-type :integer))
    ((:id1 __id1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id0 __id0)
   (setq _id1 __id1)
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
    ;; int64[] _id0
    (* 8    (length _id0)) 4
    ;; int64[] _id1
    (* 8    (length _id1)) 4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64[] _id0
     (write-long (length _id0) s)
     (dotimes (i (length _id0))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _id0 i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _id0 i)) (= (length ((elt _id0 i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _id0 i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _id0 i) . bv) 1) -1) s))
             ((and (class (elt _id0 i)) (= (length ((elt _id0 i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _id0 i) . bv) 0) s)
              (write-long (if (>= (elt _id0 i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _id0 i) s)(write-long (if (>= (elt _id0 i) 0) 0 #xffffffff) s)))
       )
     ;; int64[] _id1
     (write-long (length _id1) s)
     (dotimes (i (length _id1))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _id1 i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _id1 i)) (= (length ((elt _id1 i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _id1 i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _id1 i) . bv) 1) -1) s))
             ((and (class (elt _id1 i)) (= (length ((elt _id1 i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _id1 i) . bv) 0) s)
              (write-long (if (>= (elt _id1 i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _id1 i) s)(write-long (if (>= (elt _id1 i) 0) 0 #xffffffff) s)))
       )
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64[] _id0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id0 (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _id0 i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _id0 i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int64[] _id1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id1 (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _id1 i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _id1 i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get pyslam_msgs::Loop :md5sum-) "36672ea1b2db4ae845d4fdab55058cb8")
(setf (get pyslam_msgs::Loop :datatype-) "pyslam_msgs/Loop")
(setf (get pyslam_msgs::Loop :definition-)
      "int64[]  id0
int64[]  id1
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



(provide :pyslam_msgs/Loop "36672ea1b2db4ae845d4fdab55058cb8")


