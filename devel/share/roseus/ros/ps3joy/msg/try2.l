;; Auto-generated. Do not edit!


(when (boundp 'ps3joy::try2)
  (if (not (find-package "PS3JOY"))
    (make-package "PS3JOY"))
  (shadow 'try2 (find-package "PS3JOY")))
(unless (find-package "PS3JOY::TRY2")
  (make-package "PS3JOY::TRY2"))

(in-package "ROS")
;;//! \htmlinclude try2.msg.html


(defclass ps3joy::try2
  :super ros::object
  :slots (_forward_speed _backward_speed ))

(defmethod ps3joy::try2
  (:init
   (&key
    ((:forward_speed __forward_speed) 0)
    ((:backward_speed __backward_speed) 0)
    )
   (send-super :init)
   (setq _forward_speed (round __forward_speed))
   (setq _backward_speed (round __backward_speed))
   self)
  (:forward_speed
   (&optional __forward_speed)
   (if __forward_speed (setq _forward_speed __forward_speed)) _forward_speed)
  (:backward_speed
   (&optional __backward_speed)
   (if __backward_speed (setq _backward_speed __backward_speed)) _backward_speed)
  (:serialization-length
   ()
   (+
    ;; int64 _forward_speed
    8
    ;; int64 _backward_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _forward_speed
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _forward_speed (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _forward_speed) (= (length (_forward_speed . bv)) 2)) ;; bignum
              (write-long (ash (elt (_forward_speed . bv) 0) 0) s)
              (write-long (ash (elt (_forward_speed . bv) 1) -1) s))
             ((and (class _forward_speed) (= (length (_forward_speed . bv)) 1)) ;; big1
              (write-long (elt (_forward_speed . bv) 0) s)
              (write-long (if (>= _forward_speed 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _forward_speed s)(write-long (if (>= _forward_speed 0) 0 #xffffffff) s)))
     ;; int64 _backward_speed
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _backward_speed (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _backward_speed) (= (length (_backward_speed . bv)) 2)) ;; bignum
              (write-long (ash (elt (_backward_speed . bv) 0) 0) s)
              (write-long (ash (elt (_backward_speed . bv) 1) -1) s))
             ((and (class _backward_speed) (= (length (_backward_speed . bv)) 1)) ;; big1
              (write-long (elt (_backward_speed . bv) 0) s)
              (write-long (if (>= _backward_speed 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _backward_speed s)(write-long (if (>= _backward_speed 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _forward_speed
#+(or :alpha :irix6 :x86_64)
      (setf _forward_speed (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _forward_speed (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _backward_speed
#+(or :alpha :irix6 :x86_64)
      (setf _backward_speed (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _backward_speed (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get ps3joy::try2 :md5sum-) "a699297f96ff3ce6d6e9694c1dea07b8")
(setf (get ps3joy::try2 :datatype-) "ps3joy/try2")
(setf (get ps3joy::try2 :definition-)
      "int64 forward_speed
int64 backward_speed

")



(provide :ps3joy/try2 "a699297f96ff3ce6d6e9694c1dea07b8")


