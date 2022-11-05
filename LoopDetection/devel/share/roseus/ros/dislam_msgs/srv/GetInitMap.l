;; Auto-generated. Do not edit!


(when (boundp 'dislam_msgs::GetInitMap)
  (if (not (find-package "DISLAM_MSGS"))
    (make-package "DISLAM_MSGS"))
  (shadow 'GetInitMap (find-package "DISLAM_MSGS")))
(unless (find-package "DISLAM_MSGS::GETINITMAP")
  (make-package "DISLAM_MSGS::GETINITMAP"))
(unless (find-package "DISLAM_MSGS::GETINITMAPREQUEST")
  (make-package "DISLAM_MSGS::GETINITMAPREQUEST"))
(unless (find-package "DISLAM_MSGS::GETINITMAPRESPONSE")
  (make-package "DISLAM_MSGS::GETINITMAPRESPONSE"))

(in-package "ROS")



(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass dislam_msgs::GetInitMapRequest
  :super ros::object
  :slots (_initState ))

(defmethod dislam_msgs::GetInitMapRequest
  (:init
   (&key
    ((:initState __initState) nil)
    )
   (send-super :init)
   (setq _initState __initState)
   self)
  (:initState
   (&optional __initState)
   (if __initState (setq _initState __initState)) _initState)
  (:serialization-length
   ()
   (+
    ;; bool _initState
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _initState
       (if _initState (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _initState
     (setq _initState (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass dislam_msgs::GetInitMapResponse
  :super ros::object
  :slots (_submap ))

(defmethod dislam_msgs::GetInitMapResponse
  (:init
   (&key
    ((:submap __submap) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _submap __submap)
   self)
  (:submap
   (&rest __submap)
   (if (keywordp (car __submap))
       (send* _submap __submap)
     (progn
       (if __submap (setq _submap (car __submap)))
       _submap)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _submap
    (send _submap :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _submap
       (send _submap :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _submap
     (send _submap :deserialize buf ptr-) (incf ptr- (send _submap :serialization-length))
   ;;
   self)
  )

(defclass dislam_msgs::GetInitMap
  :super ros::object
  :slots ())

(setf (get dislam_msgs::GetInitMap :md5sum-) "e9fa119186dfec39a98e0ec6980aefe6")
(setf (get dislam_msgs::GetInitMap :datatype-) "dislam_msgs/GetInitMap")
(setf (get dislam_msgs::GetInitMap :request) dislam_msgs::GetInitMapRequest)
(setf (get dislam_msgs::GetInitMap :response) dislam_msgs::GetInitMapResponse)

(defmethod dislam_msgs::GetInitMapRequest
  (:response () (instance dislam_msgs::GetInitMapResponse :init)))

(setf (get dislam_msgs::GetInitMapRequest :md5sum-) "e9fa119186dfec39a98e0ec6980aefe6")
(setf (get dislam_msgs::GetInitMapRequest :datatype-) "dislam_msgs/GetInitMapRequest")
(setf (get dislam_msgs::GetInitMapRequest :definition-)
      "bool initState

---
sensor_msgs/PointCloud2 submap



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

(setf (get dislam_msgs::GetInitMapResponse :md5sum-) "e9fa119186dfec39a98e0ec6980aefe6")
(setf (get dislam_msgs::GetInitMapResponse :datatype-) "dislam_msgs/GetInitMapResponse")
(setf (get dislam_msgs::GetInitMapResponse :definition-)
      "bool initState

---
sensor_msgs/PointCloud2 submap



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



(provide :dislam_msgs/GetInitMap "e9fa119186dfec39a98e0ec6980aefe6")


