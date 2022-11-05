; Auto-generated. Do not edit!


(cl:in-package dislam_msgs-msg)


;//! \htmlinclude InterPRs.msg.html

(cl:defclass <InterPRs> (roslisp-msg-protocol:ros-message)
  ((seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (InterPRs
    :reader InterPRs
    :initarg :InterPRs
    :type (cl:vector dislam_msgs-msg:InterPR)
   :initform (cl:make-array 0 :element-type 'dislam_msgs-msg:InterPR :initial-element (cl:make-instance 'dislam_msgs-msg:InterPR))))
)

(cl:defclass InterPRs (<InterPRs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterPRs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterPRs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dislam_msgs-msg:<InterPRs> is deprecated: use dislam_msgs-msg:InterPRs instead.")))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <InterPRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:seq-val is deprecated.  Use dislam_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'InterPRs-val :lambda-list '(m))
(cl:defmethod InterPRs-val ((m <InterPRs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:InterPRs-val is deprecated.  Use dislam_msgs-msg:InterPRs instead.")
  (InterPRs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterPRs>) ostream)
  "Serializes a message object of type '<InterPRs>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'InterPRs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'InterPRs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterPRs>) istream)
  "Deserializes a message object of type '<InterPRs>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'InterPRs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'InterPRs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dislam_msgs-msg:InterPR))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterPRs>)))
  "Returns string type for a message object of type '<InterPRs>"
  "dislam_msgs/InterPRs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterPRs)))
  "Returns string type for a message object of type 'InterPRs"
  "dislam_msgs/InterPRs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterPRs>)))
  "Returns md5sum for a message object of type '<InterPRs>"
  "526823748d66ee65dc49e2e597f3ca63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterPRs)))
  "Returns md5sum for a message object of type 'InterPRs"
  "526823748d66ee65dc49e2e597f3ca63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterPRs>)))
  "Returns full string definition for message of type '<InterPRs>"
  (cl:format cl:nil "uint32 seq~%InterPR[] InterPRs~%================================================================================~%MSG: dislam_msgs/InterPR~%int64 id0~%int64 id1~%bool isAerial~%bool isChecked~%geometry_msgs/Pose id0Pose~%geometry_msgs/Pose factorPose~%sensor_msgs/PointCloud2 keyframe~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterPRs)))
  "Returns full string definition for message of type 'InterPRs"
  (cl:format cl:nil "uint32 seq~%InterPR[] InterPRs~%================================================================================~%MSG: dislam_msgs/InterPR~%int64 id0~%int64 id1~%bool isAerial~%bool isChecked~%geometry_msgs/Pose id0Pose~%geometry_msgs/Pose factorPose~%sensor_msgs/PointCloud2 keyframe~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterPRs>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'InterPRs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterPRs>))
  "Converts a ROS message object to a list"
  (cl:list 'InterPRs
    (cl:cons ':seq (seq msg))
    (cl:cons ':InterPRs (InterPRs msg))
))
