;; Auto-generated. Do not edit!


(when (boundp 'dislam_msgs::SubMap)
  (if (not (find-package "DISLAM_MSGS"))
    (make-package "DISLAM_MSGS"))
  (shadow 'SubMap (find-package "DISLAM_MSGS")))
(unless (find-package "DISLAM_MSGS::SUBMAP")
  (make-package "DISLAM_MSGS::SUBMAP"))

(in-package "ROS")
;;//! \htmlinclude SubMap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass dislam_msgs::SubMap
  :super ros::object
  :slots (_submap _keyframePC _orthoImage _pose ))

(defmethod dislam_msgs::SubMap
  (:init
   (&key
    ((:submap __submap) (instance sensor_msgs::PointCloud2 :init))
    ((:keyframePC __keyframePC) (instance sensor_msgs::PointCloud2 :init))
    ((:orthoImage __orthoImage) (instance sensor_msgs::Image :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _submap __submap)
   (setq _keyframePC __keyframePC)
   (setq _orthoImage __orthoImage)
   (setq _pose __pose)
   self)
  (:submap
   (&rest __submap)
   (if (keywordp (car __submap))
       (send* _submap __submap)
     (progn
       (if __submap (setq _submap (car __submap)))
       _submap)))
  (:keyframePC
   (&rest __keyframePC)
   (if (keywordp (car __keyframePC))
       (send* _keyframePC __keyframePC)
     (progn
       (if __keyframePC (setq _keyframePC (car __keyframePC)))
       _keyframePC)))
  (:orthoImage
   (&rest __orthoImage)
   (if (keywordp (car __orthoImage))
       (send* _orthoImage __orthoImage)
     (progn
       (if __orthoImage (setq _orthoImage (car __orthoImage)))
       _orthoImage)))
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
    ;; sensor_msgs/PointCloud2 _submap
    (send _submap :serialization-length)
    ;; sensor_msgs/PointCloud2 _keyframePC
    (send _keyframePC :serialization-length)
    ;; sensor_msgs/Image _orthoImage
    (send _orthoImage :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _submap
       (send _submap :serialize s)
     ;; sensor_msgs/PointCloud2 _keyframePC
       (send _keyframePC :serialize s)
     ;; sensor_msgs/Image _orthoImage
       (send _orthoImage :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _submap
     (send _submap :deserialize buf ptr-) (incf ptr- (send _submap :serialization-length))
   ;; sensor_msgs/PointCloud2 _keyframePC
     (send _keyframePC :deserialize buf ptr-) (incf ptr- (send _keyframePC :serialization-length))
   ;; sensor_msgs/Image _orthoImage
     (send _orthoImage :deserialize buf ptr-) (incf ptr- (send _orthoImage :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get dislam_msgs::SubMap :md5sum-) "a8f4d32838c028357c1260b3cf28a86d")
(setf (get dislam_msgs::SubMap :datatype-) "dislam_msgs/SubMap")
(setf (get dislam_msgs::SubMap :definition-)
      "sensor_msgs/PointCloud2 submap
sensor_msgs/PointCloud2 keyframePC
sensor_msgs/Image orthoImage
geometry_msgs/Pose pose

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

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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



(provide :dislam_msgs/SubMap "a8f4d32838c028357c1260b3cf28a86d")


