;; Auto-generated. Do not edit!


(when (boundp 'katana_msgs::GripperControllerState)
  (if (not (find-package "KATANA_MSGS"))
    (make-package "KATANA_MSGS"))
  (shadow 'GripperControllerState (find-package "KATANA_MSGS")))
(unless (find-package "KATANA_MSGS::GRIPPERCONTROLLERSTATE")
  (make-package "KATANA_MSGS::GRIPPERCONTROLLERSTATE"))

(in-package "ROS")
;;//! \htmlinclude GripperControllerState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass katana_msgs::GripperControllerState
  :super ros::object
  :slots (_header _name _actual _desired _error ))

(defmethod katana_msgs::GripperControllerState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:actual __actual) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:desired __desired) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:error __error) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _name __name)
   (setq _actual __actual)
   (setq _desired __desired)
   (setq _error __error)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:actual
   (&optional __actual)
   (if __actual (setq _actual __actual)) _actual)
  (:desired
   (&optional __desired)
   (if __desired (setq _desired __desired)) _desired)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; float64[] _actual
    (* 8    (length _actual)) 4
    ;; float64[] _desired
    (* 8    (length _desired)) 4
    ;; float64[] _error
    (* 8    (length _error)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _actual
     (write-long (length _actual) s)
     (dotimes (i (length _actual))
       (sys::poke (elt _actual i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _desired
     (write-long (length _desired) s)
     (dotimes (i (length _desired))
       (sys::poke (elt _desired i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _error
     (write-long (length _error) s)
     (dotimes (i (length _error))
       (sys::poke (elt _error i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _actual
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actual (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _actual i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _desired
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _desired (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _desired i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _error
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _error (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _error i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get katana_msgs::GripperControllerState :md5sum-) "57ba9ed166f48062eddf3c6e509f2dc0")
(setf (get katana_msgs::GripperControllerState :datatype-) "katana_msgs/GripperControllerState")
(setf (get katana_msgs::GripperControllerState :definition-)
      "# The actual and desired angles (in radian) of the gripper joints, 
# and the error between actual and desired.
#
# Each joint is uniquely identified by its name.
#
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
#
# All arrays in this message should have the same size.
# This is the only way to uniquely associate the joint name with the correct
# states.
Header header

string[] name
float64[] actual
float64[] desired
float64[] error

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :katana_msgs/GripperControllerState "57ba9ed166f48062eddf3c6e509f2dc0")


