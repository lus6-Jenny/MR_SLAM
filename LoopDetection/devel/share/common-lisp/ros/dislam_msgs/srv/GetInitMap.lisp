; Auto-generated. Do not edit!


(cl:in-package dislam_msgs-srv)


;//! \htmlinclude GetInitMap-request.msg.html

(cl:defclass <GetInitMap-request> (roslisp-msg-protocol:ros-message)
  ((initState
    :reader initState
    :initarg :initState
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass GetInitMap-request (<GetInitMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInitMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInitMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dislam_msgs-srv:<GetInitMap-request> is deprecated: use dislam_msgs-srv:GetInitMap-request instead.")))

(cl:ensure-generic-function 'initState-val :lambda-list '(m))
(cl:defmethod initState-val ((m <GetInitMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-srv:initState-val is deprecated.  Use dislam_msgs-srv:initState instead.")
  (initState m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInitMap-request>) ostream)
  "Serializes a message object of type '<GetInitMap-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'initState) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInitMap-request>) istream)
  "Deserializes a message object of type '<GetInitMap-request>"
    (cl:setf (cl:slot-value msg 'initState) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInitMap-request>)))
  "Returns string type for a service object of type '<GetInitMap-request>"
  "dislam_msgs/GetInitMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInitMap-request)))
  "Returns string type for a service object of type 'GetInitMap-request"
  "dislam_msgs/GetInitMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInitMap-request>)))
  "Returns md5sum for a message object of type '<GetInitMap-request>"
  "e9fa119186dfec39a98e0ec6980aefe6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInitMap-request)))
  "Returns md5sum for a message object of type 'GetInitMap-request"
  "e9fa119186dfec39a98e0ec6980aefe6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInitMap-request>)))
  "Returns full string definition for message of type '<GetInitMap-request>"
  (cl:format cl:nil "bool initState~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInitMap-request)))
  "Returns full string definition for message of type 'GetInitMap-request"
  (cl:format cl:nil "bool initState~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInitMap-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInitMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInitMap-request
    (cl:cons ':initState (initState msg))
))
;//! \htmlinclude GetInitMap-response.msg.html

(cl:defclass <GetInitMap-response> (roslisp-msg-protocol:ros-message)
  ((submap
    :reader submap
    :initarg :submap
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass GetInitMap-response (<GetInitMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetInitMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetInitMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dislam_msgs-srv:<GetInitMap-response> is deprecated: use dislam_msgs-srv:GetInitMap-response instead.")))

(cl:ensure-generic-function 'submap-val :lambda-list '(m))
(cl:defmethod submap-val ((m <GetInitMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-srv:submap-val is deprecated.  Use dislam_msgs-srv:submap instead.")
  (submap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetInitMap-response>) ostream)
  "Serializes a message object of type '<GetInitMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'submap) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetInitMap-response>) istream)
  "Deserializes a message object of type '<GetInitMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'submap) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetInitMap-response>)))
  "Returns string type for a service object of type '<GetInitMap-response>"
  "dislam_msgs/GetInitMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInitMap-response)))
  "Returns string type for a service object of type 'GetInitMap-response"
  "dislam_msgs/GetInitMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetInitMap-response>)))
  "Returns md5sum for a message object of type '<GetInitMap-response>"
  "e9fa119186dfec39a98e0ec6980aefe6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetInitMap-response)))
  "Returns md5sum for a message object of type 'GetInitMap-response"
  "e9fa119186dfec39a98e0ec6980aefe6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetInitMap-response>)))
  "Returns full string definition for message of type '<GetInitMap-response>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 submap~%~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetInitMap-response)))
  "Returns full string definition for message of type 'GetInitMap-response"
  (cl:format cl:nil "sensor_msgs/PointCloud2 submap~%~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetInitMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'submap))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetInitMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetInitMap-response
    (cl:cons ':submap (submap msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetInitMap)))
  'GetInitMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetInitMap)))
  'GetInitMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetInitMap)))
  "Returns string type for a service object of type '<GetInitMap>"
  "dislam_msgs/GetInitMap")