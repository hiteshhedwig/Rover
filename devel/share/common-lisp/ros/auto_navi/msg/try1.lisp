; Auto-generated. Do not edit!


(cl:in-package auto_navi-msg)


;//! \htmlinclude try1.msg.html

(cl:defclass <try1> (roslisp-msg-protocol:ros-message)
  ((cX
    :reader cX
    :initarg :cX
    :type cl:float
    :initform 0.0)
   (cY
    :reader cY
    :initarg :cY
    :type cl:float
    :initform 0.0))
)

(cl:defclass try1 (<try1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <try1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'try1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auto_navi-msg:<try1> is deprecated: use auto_navi-msg:try1 instead.")))

(cl:ensure-generic-function 'cX-val :lambda-list '(m))
(cl:defmethod cX-val ((m <try1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_navi-msg:cX-val is deprecated.  Use auto_navi-msg:cX instead.")
  (cX m))

(cl:ensure-generic-function 'cY-val :lambda-list '(m))
(cl:defmethod cY-val ((m <try1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auto_navi-msg:cY-val is deprecated.  Use auto_navi-msg:cY instead.")
  (cY m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <try1>) ostream)
  "Serializes a message object of type '<try1>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <try1>) istream)
  "Deserializes a message object of type '<try1>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cY) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<try1>)))
  "Returns string type for a message object of type '<try1>"
  "auto_navi/try1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'try1)))
  "Returns string type for a message object of type 'try1"
  "auto_navi/try1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<try1>)))
  "Returns md5sum for a message object of type '<try1>"
  "bd466dd2a275f04fea16b85b9a5cea50")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'try1)))
  "Returns md5sum for a message object of type 'try1"
  "bd466dd2a275f04fea16b85b9a5cea50")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<try1>)))
  "Returns full string definition for message of type '<try1>"
  (cl:format cl:nil "float64 cX~%float64 cY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'try1)))
  "Returns full string definition for message of type 'try1"
  (cl:format cl:nil "float64 cX~%float64 cY~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <try1>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <try1>))
  "Converts a ROS message object to a list"
  (cl:list 'try1
    (cl:cons ':cX (cX msg))
    (cl:cons ':cY (cY msg))
))
