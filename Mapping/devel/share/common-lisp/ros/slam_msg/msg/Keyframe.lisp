; Auto-generated. Do not edit!


(cl:in-package slam_msg-msg)


;//! \htmlinclude Keyframe.msg.html

(cl:defclass <Keyframe> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (rotation
    :reader rotation
    :initarg :rotation
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Keyframe (<Keyframe>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Keyframe>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Keyframe)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name slam_msg-msg:<Keyframe> is deprecated: use slam_msg-msg:Keyframe instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Keyframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msg-msg:id-val is deprecated.  Use slam_msg-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <Keyframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msg-msg:position-val is deprecated.  Use slam_msg-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'rotation-val :lambda-list '(m))
(cl:defmethod rotation-val ((m <Keyframe>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader slam_msg-msg:rotation-val is deprecated.  Use slam_msg-msg:rotation instead.")
  (rotation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Keyframe>) ostream)
  "Serializes a message object of type '<Keyframe>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'rotation))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Keyframe>) istream)
  "Deserializes a message object of type '<Keyframe>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'rotation) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'rotation)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Keyframe>)))
  "Returns string type for a message object of type '<Keyframe>"
  "slam_msg/Keyframe")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Keyframe)))
  "Returns string type for a message object of type 'Keyframe"
  "slam_msg/Keyframe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Keyframe>)))
  "Returns md5sum for a message object of type '<Keyframe>"
  "7ace3b589326bfcbd3ee9253849bfdab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Keyframe)))
  "Returns md5sum for a message object of type 'Keyframe"
  "7ace3b589326bfcbd3ee9253849bfdab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Keyframe>)))
  "Returns full string definition for message of type '<Keyframe>"
  (cl:format cl:nil "int32 id~%float64[3] position~%float32[4] rotation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Keyframe)))
  "Returns full string definition for message of type 'Keyframe"
  (cl:format cl:nil "int32 id~%float64[3] position~%float32[4] rotation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Keyframe>))
  (cl:+ 0
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'rotation) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Keyframe>))
  "Converts a ROS message object to a list"
  (cl:list 'Keyframe
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':rotation (rotation msg))
))
