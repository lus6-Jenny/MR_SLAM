;; Auto-generated. Do not edit!


(when (boundp 'dislam_msgs::InterPRs)
  (if (not (find-package "DISLAM_MSGS"))
    (make-package "DISLAM_MSGS"))
  (shadow 'InterPRs (find-package "DISLAM_MSGS")))
(unless (find-package "DISLAM_MSGS::INTERPRS")
  (make-package "DISLAM_MSGS::INTERPRS"))

(in-package "ROS")
;;//! \htmlinclude InterPRs.msg.html


(defclass dislam_msgs::InterPRs
  :super ros::object
  :slots (_seq _InterPRs ))

(defmethod dislam_msgs::InterPRs
  (:init
   (&key
    ((:seq __seq) 0)
    ((:InterPRs __InterPRs) (let (r) (dotimes (i 0) (push (instance dislam_msgs::InterPR :init) r)) r))
    )
   (send-super :init)
   (setq _seq (round __seq))
   (setq _InterPRs __InterPRs)
   self)
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:InterPRs
   (&rest __InterPRs)
   (if (keywordp (car __InterPRs))
       (send* _InterPRs __InterPRs)
     (progn
       (if __InterPRs (setq _InterPRs (car __InterPRs)))
       _InterPRs)))
  (:serialization-length
   ()
   (+
    ;; uint32 _seq
    4
    ;; dislam_msgs/InterPR[] _InterPRs
    (apply #'+ (send-all _InterPRs :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _seq
       (write-long _seq s)
     ;; dislam_msgs/InterPR[] _InterPRs
     (write-long (length _InterPRs) s)
     (dolist (elem _InterPRs)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; dislam_msgs/InterPR[] _InterPRs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _InterPRs (let (r) (dotimes (i n) (push (instance dislam_msgs::InterPR :init) r)) r))
     (dolist (elem- _InterPRs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dislam_msgs::InterPRs :md5sum-) "526823748d66ee65dc49e2e597f3ca63")
(setf (get dislam_msgs::InterPRs :datatype-) "dislam_msgs/InterPRs")
(setf (get dislam_msgs::InterPRs :definition-)
      "uint32 seq
InterPR[] InterPRs
================================================================================
MSG: dislam_msgs/InterPR
int64 id0
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



(provide :dislam_msgs/InterPRs "526823748d66ee65dc49e2e597f3ca63")


