; Auto-generated. Do not edit!


(cl:in-package pyslam_msgs-msg)


;//! \htmlinclude SubMap.msg.html

(cl:defclass <SubMap> (roslisp-msg-protocol:ros-message)
  ((submap
    :reader submap
    :initarg :submap
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (keyframePC
    :reader keyframePC
    :initarg :keyframePC
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (orthoImage
    :reader orthoImage
    :initarg :orthoImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SubMap (<SubMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SubMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SubMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pyslam_msgs-msg:<SubMap> is deprecated: use pyslam_msgs-msg:SubMap instead.")))

(cl:ensure-generic-function 'submap-val :lambda-list '(m))
(cl:defmethod submap-val ((m <SubMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pyslam_msgs-msg:submap-val is deprecated.  Use pyslam_msgs-msg:submap instead.")
  (submap m))

(cl:ensure-generic-function 'keyframePC-val :lambda-list '(m))
(cl:defmethod keyframePC-val ((m <SubMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pyslam_msgs-msg:keyframePC-val is deprecated.  Use pyslam_msgs-msg:keyframePC instead.")
  (keyframePC m))

(cl:ensure-generic-function 'orthoImage-val :lambda-list '(m))
(cl:defmethod orthoImage-val ((m <SubMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pyslam_msgs-msg:orthoImage-val is deprecated.  Use pyslam_msgs-msg:orthoImage instead.")
  (orthoImage m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SubMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pyslam_msgs-msg:pose-val is deprecated.  Use pyslam_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SubMap>) ostream)
  "Serializes a message object of type '<SubMap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'submap) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'keyframePC) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orthoImage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SubMap>) istream)
  "Deserializes a message object of type '<SubMap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'submap) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'keyframePC) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orthoImage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SubMap>)))
  "Returns string type for a message object of type '<SubMap>"
  "pyslam_msgs/SubMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SubMap)))
  "Returns string type for a message object of type 'SubMap"
  "pyslam_msgs/SubMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SubMap>)))
  "Returns md5sum for a message object of type '<SubMap>"
  "a8f4d32838c028357c1260b3cf28a86d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SubMap)))
  "Returns md5sum for a message object of type 'SubMap"
  "a8f4d32838c028357c1260b3cf28a86d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SubMap>)))
  "Returns full string definition for message of type '<SubMap>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 submap~%sensor_msgs/PointCloud2 keyframePC~%sensor_msgs/Image orthoImage~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SubMap)))
  "Returns full string definition for message of type 'SubMap"
  (cl:format cl:nil "sensor_msgs/PointCloud2 submap~%sensor_msgs/PointCloud2 keyframePC~%sensor_msgs/Image orthoImage~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SubMap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'submap))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'keyframePC))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orthoImage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SubMap>))
  "Converts a ROS message object to a list"
  (cl:list 'SubMap
    (cl:cons ':submap (submap msg))
    (cl:cons ':keyframePC (keyframePC msg))
    (cl:cons ':orthoImage (orthoImage msg))
    (cl:cons ':pose (pose msg))
))
