;; Auto-generated. Do not edit!


(when (boundp 'dislam_msgs::InterPR)
  (if (not (find-package "DISLAM_MSGS"))
    (make-package "DISLAM_MSGS"))
  (shadow 'InterPR (find-package "DISLAM_MSGS")))
(unless (find-package "DISLAM_MSGS::INTERPR")
  (make-package "DISLAM_MSGS::INTERPR"))

(in-package "ROS")
;;//! \htmlinclude InterPR.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass dislam_msgs::InterPR
  :super ros::object
  :slots (_id0 _id1 _isAerial _isChecked _id0Pose _factorPose _keyframe ))

(defmethod dislam_msgs::InterPR
  (:init
   (&key
    ((:id0 __id0) 0)
    ((:id1 __id1) 0)
    ((:isAerial __isAerial) nil)
    ((:isChecked __isChecked) nil)
    ((:id0Pose __id0Pose) (instance geometry_msgs::Pose :init))
    ((:factorPose __factorPose) (instance geometry_msgs::Pose :init))
    ((:keyframe __keyframe) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _id0 (round __id0))
   (setq _id1 (round __id1))
   (setq _isAerial __isAerial)
   (setq _isChecked __isChecked)
   (setq _id0Pose __id0Pose)
   (setq _factorPose __factorPose)
   (setq _keyframe __keyframe)
   self)
  (:id0
   (&optional __id0)
   (if __id0 (setq _id0 __id0)) _id0)
  (:id1
   (&optional __id1)
   (if __id1 (setq _id1 __id1)) _id1)
  (:isAerial
   (&optional __isAerial)
   (if __isAerial (setq _isAerial __isAerial)) _isAerial)
  (:isChecked
   (&optional __isChecked)
   (if __isChecked (setq _isChecked __isChecked)) _isChecked)
  (:id0Pose
   (&rest __id0Pose)
   (if (keywordp (car __id0Pose))
       (send* _id0Pose __id0Pose)
     (progn
       (if __id0Pose (setq _id0Pose (car __id0Pose)))
       _id0Pose)))
  (:factorPose
   (&rest __factorPose)
   (if (keywordp (car __factorPose))
       (send* _factorPose __factorPose)
     (progn
       (if __factorPose (setq _factorPose (car __factorPose)))
       _factorPose)))
  (:keyframe
   (&rest __keyframe)
   (if (keywordp (car __keyframe))
       (send* _keyframe __keyframe)
     (progn
       (if __keyframe (setq _keyframe (car __keyframe)))
       _keyframe)))
  (:serialization-length
   ()
   (+
    ;; int64 _id0
    8
    ;; int64 _id1
    8
    ;; bool _isAerial
    1
    ;; bool _isChecked
    1
    ;; geometry_msgs/Pose _id0Pose
    (send _id0Pose :serialization-length)
    ;; geometry_msgs/Pose _factorPose
    (send _factorPose :serialization-length)
    ;; sensor_msgs/PointCloud2 _keyframe
    (send _keyframe :serialization-length)
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
     ;; bool _isAerial
       (if _isAerial (write-byte -1 s) (write-byte 0 s))
     ;; bool _isChecked
       (if _isChecked (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _id0Pose
       (send _id0Pose :serialize s)
     ;; geometry_msgs/Pose _factorPose
       (send _factorPose :serialize s)
     ;; sensor_msgs/PointCloud2 _keyframe
       (send _keyframe :serialize s)
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
   ;; bool _isAerial
     (setq _isAerial (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _isChecked
     (setq _isChecked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _id0Pose
     (send _id0Pose :deserialize buf ptr-) (incf ptr- (send _id0Pose :serialization-length))
   ;; geometry_msgs/Pose _factorPose
     (send _factorPose :deserialize buf ptr-) (incf ptr- (send _factorPose :serialization-length))
   ;; sensor_msgs/PointCloud2 _keyframe
     (send _keyframe :deserialize buf ptr-) (incf ptr- (send _keyframe :serialization-length))
   ;;
   self)
  )

(setf (get dislam_msgs::InterPR :md5sum-) "5b4beb7f05ebd7c0cec036a4e93d3373")
(setf (get dislam_msgs::InterPR :datatype-) "dislam_msgs/InterPR")
(setf (get dislam_msgs::InterPR :definition-)
      "int64 id0
int64 id1
bool isAerial
bool isChecked
geometry_msgs/Pose id0Pose
geometry_msgs/Pose factorPose
sensor_msgs/PointCloud2 keyframe
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

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

")



(provide :dislam_msgs/InterPR "5b4beb7f05ebd7c0cec036a4e93d3373")


