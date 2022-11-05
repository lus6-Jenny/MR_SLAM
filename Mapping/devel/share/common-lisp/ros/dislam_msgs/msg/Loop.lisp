; Auto-generated. Do not edit!


(cl:in-package dislam_msgs-msg)


;//! \htmlinclude Loop.msg.html

(cl:defclass <Loop> (roslisp-msg-protocol:ros-message)
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
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass Loop (<Loop>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Loop>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Loop)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dislam_msgs-msg:<Loop> is deprecated: use dislam_msgs-msg:Loop instead.")))

(cl:ensure-generic-function 'id0-val :lambda-list '(m))
(cl:defmethod id0-val ((m <Loop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:id0-val is deprecated.  Use dislam_msgs-msg:id0 instead.")
  (id0 m))

(cl:ensure-generic-function 'id1-val :lambda-list '(m))
(cl:defmethod id1-val ((m <Loop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:id1-val is deprecated.  Use dislam_msgs-msg:id1 instead.")
  (id1 m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <Loop>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:pose-val is deprecated.  Use dislam_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Loop>) ostream)
  "Serializes a message object of type '<Loop>"
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Loop>) istream)
  "Deserializes a message object of type '<Loop>"
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Loop>)))
  "Returns string type for a message object of type '<Loop>"
  "dislam_msgs/Loop")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Loop)))
  "Returns string type for a message object of type 'Loop"
  "dislam_msgs/Loop")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Loop>)))
  "Returns md5sum for a message object of type '<Loop>"
  "2a9f0334f830308ab9b1bb7ec33c20af")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Loop)))
  "Returns md5sum for a message object of type 'Loop"
  "2a9f0334f830308ab9b1bb7ec33c20af")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Loop>)))
  "Returns full string definition for message of type '<Loop>"
  (cl:format cl:nil "int64 id0~%int64 id1~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Loop)))
  "Returns full string definition for message of type 'Loop"
  (cl:format cl:nil "int64 id0~%int64 id1~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Loop>))
  (cl:+ 0
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Loop>))
  "Converts a ROS message object to a list"
  (cl:list 'Loop
    (cl:cons ':id0 (id0 msg))
    (cl:cons ':id1 (id1 msg))
    (cl:cons ':pose (pose msg))
))
