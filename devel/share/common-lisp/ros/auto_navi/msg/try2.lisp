; Auto-generated. Do not edit!


(cl:in-package auto_navi-msg)


;//! \htmlinclude try2.msg.html

(cl:defclass <try2> (roslisp-msg-protocol:ros-message)
  ((forward_speed
    :reader forward_speed
    :initarg :forward_speed
    :type cl:integer
    :initform 0)
   (backward_speed
    :reader backward_speed
    :initarg :backward_speed
    :type cl:integer
    :initform 0)
   (turning_right
    :reader turning_right
    :initarg :turning_right
    :type cl:integer
    :initform 0)
   (turning_left
    :reader turning_left
    :initarg :turning_left
    :type cl:integer
    :initform 0))
)

(cl:defclass try2 (<try2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <try2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'try2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_navi-msg:<try2> is deprecated: use auto_navi-msg:try2 instead.")))

(cl:ensure-generic-function 'forward_speed-val :lambda-list '(m))
(cl:defmethod forward_speed-val ((m <try2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_navi-msg:forward_speed-val is deprecated.  Use auto_navi-msg:forward_speed instead.")
  (forward_speed m))

(cl:ensure-generic-function 'backward_speed-val :lambda-list '(m))
(cl:defmethod backward_speed-val ((m <try2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_navi-msg:backward_speed-val is deprecated.  Use auto_navi-msg:backward_speed instead.")
  (backward_speed m))

(cl:ensure-generic-function 'turning_right-val :lambda-list '(m))
(cl:defmethod turning_right-val ((m <try2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_navi-msg:turning_right-val is deprecated.  Use auto_navi-msg:turning_right instead.")
  (turning_right m))

(cl:ensure-generic-function 'turning_left-val :lambda-list '(m))
(cl:defmethod turning_left-val ((m <try2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_navi-msg:turning_left-val is deprecated.  Use auto_navi-msg:turning_left instead.")
  (turning_left m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <try2>) ostream)
  "Serializes a message object of type '<try2>"
  (cl:let* ((signed (cl:slot-value msg 'forward_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'backward_speed)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'turning_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'turning_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <try2>) istream)
  "Deserializes a message object of type '<try2>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'forward_speed) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'backward_speed) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turning_right) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turning_left) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<try2>)))
  "Returns string type for a message object of type '<try2>"
  "auto_navi/try2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'try2)))
  "Returns string type for a message object of type 'try2"
  "auto_navi/try2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<try2>)))
  "Returns md5sum for a message object of type '<try2>"
  "892f64bf0a5492a565a4134ba1936c83")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'try2)))
  "Returns md5sum for a message object of type 'try2"
  "892f64bf0a5492a565a4134ba1936c83")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<try2>)))
  "Returns full string definition for message of type '<try2>"
  (cl:format cl:nil "int64 forward_speed~%int64 backward_speed~%int64 turning_right~%int64 turning_left~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'try2)))
  "Returns full string definition for message of type 'try2"
  (cl:format cl:nil "int64 forward_speed~%int64 backward_speed~%int64 turning_right~%int64 turning_left~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <try2>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <try2>))
  "Converts a ROS message object to a list"
  (cl:list 'try2
    (cl:cons ':forward_speed (forward_speed msg))
    (cl:cons ':backward_speed (backward_speed msg))
    (cl:cons ':turning_right (turning_right msg))
    (cl:cons ':turning_left (turning_left msg))
))
