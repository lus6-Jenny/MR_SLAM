; Auto-generated. Do not edit!


(cl:in-package dislam_msgs-msg)


;//! \htmlinclude Loops.msg.html

(cl:defclass <Loops> (roslisp-msg-protocol:ros-message)
  ((Loops
    :reader Loops
    :initarg :Loops
    :type (cl:vector dislam_msgs-msg:Loop)
   :initform (cl:make-array 0 :element-type 'dislam_msgs-msg:Loop :initial-element (cl:make-instance 'dislam_msgs-msg:Loop))))
)

(cl:defclass Loops (<Loops>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Loops>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Loops)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dislam_msgs-msg:<Loops> is deprecated: use dislam_msgs-msg:Loops instead.")))

(cl:ensure-generic-function 'Loops-val :lambda-list '(m))
(cl:defmethod Loops-val ((m <Loops>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dislam_msgs-msg:Loops-val is deprecated.  Use dislam_msgs-msg:Loops instead.")
  (Loops m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Loops>) ostream)
  "Serializes a message object of type '<Loops>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Loops))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Loops))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Loops>) istream)
  "Deserializes a message object of type '<Loops>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Loops) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Loops)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dislam_msgs-msg:Loop))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Loops>)))
  "Returns string type for a message object of type '<Loops>"
  "dislam_msgs/Loops")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Loops)))
  "Returns string type for a message object of type 'Loops"
  "dislam_msgs/Loops")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Loops>)))
  "Returns md5sum for a message object of type '<Loops>"
  "98d0c6cc3ee49f9066dc90163982613f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Loops)))
  "Returns md5sum for a message object of type 'Loops"
  "98d0c6cc3ee49f9066dc90163982613f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Loops>)))
  "Returns full string definition for message of type '<Loops>"
  (cl:format cl:nil "Loop[] Loops~%================================================================================~%MSG: dislam_msgs/Loop~%int64 id0~%int64 id1~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Loops)))
  "Returns full string definition for message of type 'Loops"
  (cl:format cl:nil "Loop[] Loops~%================================================================================~%MSG: dislam_msgs/Loop~%int64 id0~%int64 id1~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Loops>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Loops) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Loops>))
  "Converts a ROS message object to a list"
  (cl:list 'Loops
    (cl:cons ':Loops (Loops msg))
))
