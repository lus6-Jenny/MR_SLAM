; Auto-generated. Do not edit!


(cl:in-package dislam_msgs-msg)


;//! \htmlinclude InterPR.msg.html

(cl:defclass <InterPR> (roslisp-msg-protocol:ros-message)
  ((id0
    :reader id0
    :initarg :id0
    :type cl:integer
    :initform 0)
   (id1
    :reader id1
    :initarg :id1
    :type cl:integer
    :initform 0)
   (isAerial
    :reader isAerial
    :initarg :isAerial
    :type cl:boolean
    :initform cl:nil)
   (isChecked
    :reader isChecked
    :initarg :isChecked
    :type cl:boolean
    :initform cl:nil)
   (id0Pose
    :reader id0Pose
    :initarg :id0Pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (factorPose
    :reader factorPose
    :initarg :factorPose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (keyframe
    :reader keyframe
    :initarg :keyframe
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass InterPR (<InterPR>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterPR>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterPR)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dislam_msgs-msg:<InterPR> is deprecated: use dislam_msgs-msg:InterPR instead.")))

(cl:ensure-generic-function 'id0-val :lambda-list '(m))
(cl:defmethod id0-val ((m <InterPR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:id0-val is deprecated.  Use dislam_msgs-msg:id0 instead.")
  (id0 m))

(cl:ensure-generic-function 'id1-val :lambda-list '(m))
(cl:defmethod id1-val ((m <InterPR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:id1-val is deprecated.  Use dislam_msgs-msg:id1 instead.")
  (id1 m))

(cl:ensure-generic-function 'isAerial-val :lambda-list '(m))
(cl:defmethod isAerial-val ((m <InterPR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:isAerial-val is deprecated.  Use dislam_msgs-msg:isAerial instead.")
  (isAerial m))

(cl:ensure-generic-function 'isChecked-val :lambda-list '(m))
(cl:defmethod isChecked-val ((m <InterPR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:isChecked-val is deprecated.  Use dislam_msgs-msg:isChecked instead.")
  (isChecked m))

(cl:ensure-generic-function 'id0Pose-val :lambda-list '(m))
(cl:defmethod id0Pose-val ((m <InterPR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:id0Pose-val is deprecated.  Use dislam_msgs-msg:id0Pose instead.")
  (id0Pose m))

(cl:ensure-generic-function 'factorPose-val :lambda-list '(m))
(cl:defmethod factorPose-val ((m <InterPR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:factorPose-val is deprecated.  Use dislam_msgs-msg:factorPose instead.")
  (factorPose m))

(cl:ensure-generic-function 'keyframe-val :lambda-list '(m))
(cl:defmethod keyframe-val ((m <InterPR>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:keyframe-val is deprecated.  Use dislam_msgs-msg:keyframe instead.")
  (keyframe m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterPR>) ostream)
  "Serializes a message object of type '<InterPR>"
  (cl:let* ((signed (cl:slot-value msg 'id0)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'id1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isAerial) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isChecked) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'id0Pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'factorPose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'keyframe) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterPR>) istream)
  "Deserializes a message object of type '<InterPR>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id0) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id1) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:slot-value msg 'isAerial) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'isChecked) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'id0Pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'factorPose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'keyframe) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterPR>)))
  "Returns string type for a message object of type '<InterPR>"
  "dislam_msgs/InterPR")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterPR)))
  "Returns string type for a message object of type 'InterPR"
  "dislam_msgs/InterPR")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterPR>)))
  "Returns md5sum for a message object of type '<InterPR>"
  "5b4beb7f05ebd7c0cec036a4e93d3373")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterPR)))
  "Returns md5sum for a message object of type 'InterPR"
  "5b4beb7f05ebd7c0cec036a4e93d3373")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterPR>)))
  "Returns full string definition for message of type '<InterPR>"
  (cl:format cl:nil "int64 id0~%int64 id1~%bool isAerial~%bool isChecked~%geometry_msgs/Pose id0Pose~%geometry_msgs/Pose factorPose~%sensor_msgs/PointCloud2 keyframe~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterPR)))
  "Returns full string definition for message of type 'InterPR"
  (cl:format cl:nil "int64 id0~%int64 id1~%bool isAerial~%bool isChecked~%geometry_msgs/Pose id0Pose~%geometry_msgs/Pose factorPose~%sensor_msgs/PointCloud2 keyframe~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterPR>))
  (cl:+ 0
     8
     8
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'id0Pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'factorPose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'keyframe))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterPR>))
  "Converts a ROS message object to a list"
  (cl:list 'InterPR
    (cl:cons ':id0 (id0 msg))
    (cl:cons ':id1 (id1 msg))
    (cl:cons ':isAerial (isAerial msg))
    (cl:cons ':isChecked (isChecked msg))
    (cl:cons ':id0Pose (id0Pose msg))
    (cl:cons ':factorPose (factorPose msg))
    (cl:cons ':keyframe (keyframe msg))
))
