;; Auto-generated. Do not edit!


(when (boundp 'auto_navi::try2)
  (if (not (find-package "AUTO_NAVI"))
    (make-package "AUTO_NAVI"))
  (shadow 'try2 (find-package "AUTO_NAVI")))
(unless (find-package "AUTO_NAVI::TRY2")
  (make-package "AUTO_NAVI::TRY2"))

(in-package "ROS")
;;//! \htmlinclude try2.msg.html


(defclass auto_navi::try2
  :super ros::object
  :slots (_forward_speed _backward_speed _turning_right _turning_left ))

(defmethod auto_navi::try2
  (:init
   (&key
    ((:forward_speed __forward_speed) 0)
    ((:backward_speed __backward_speed) 0)
    ((:turning_right __turning_right) 0)
    ((:turning_left __turning_left) 0)
    )
   (send-super :init)
   (setq _forward_speed (round __forward_speed))
   (setq _backward_speed (round __backward_speed))
   (setq _turning_right (round __turning_right))
   (setq _turning_left (round __turning_left))
   self)
  (:forward_speed
   (&optional __forward_speed)
   (if __forward_speed (setq _forward_speed __forward_speed)) _forward_speed)
  (:backward_speed
   (&optional __backward_speed)
   (if __backward_speed (setq _backward_speed __backward_speed)) _backward_speed)
  (:turning_right
   (&optional __turning_right)
   (if __turning_right (setq _turning_right __turning_right)) _turning_right)
  (:turning_left
   (&optional __turning_left)
   (if __turning_left (setq _turning_left __turning_left)) _turning_left)
  (:serialization-length
   ()
   (+
    ;; int64 _forward_speed
    8
    ;; int64 _backward_speed
    8
    ;; int64 _turning_right
    8
    ;; int64 _turning_left
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
     ;; int64 _turning_right
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _turning_right (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _turning_right) (= (length (_turning_right . bv)) 2)) ;; bignum
              (write-long (ash (elt (_turning_right . bv) 0) 0) s)
              (write-long (ash (elt (_turning_right . bv) 1) -1) s))
             ((and (class _turning_right) (= (length (_turning_right . bv)) 1)) ;; big1
              (write-long (elt (_turning_right . bv) 0) s)
              (write-long (if (>= _turning_right 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _turning_right s)(write-long (if (>= _turning_right 0) 0 #xffffffff) s)))
     ;; int64 _turning_left
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _turning_left (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _turning_left) (= (length (_turning_left . bv)) 2)) ;; bignum
              (write-long (ash (elt (_turning_left . bv) 0) 0) s)
              (write-long (ash (elt (_turning_left . bv) 1) -1) s))
             ((and (class _turning_left) (= (length (_turning_left . bv)) 1)) ;; big1
              (write-long (elt (_turning_left . bv) 0) s)
              (write-long (if (>= _turning_left 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _turning_left s)(write-long (if (>= _turning_left 0) 0 #xffffffff) s)))
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
   ;; int64 _turning_right
#+(or :alpha :irix6 :x86_64)
      (setf _turning_right (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _turning_right (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _turning_left
#+(or :alpha :irix6 :x86_64)
      (setf _turning_left (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _turning_left (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get auto_navi::try2 :md5sum-) "892f64bf0a5492a565a4134ba1936c83")
(setf (get auto_navi::try2 :datatype-) "auto_navi/try2")
(setf (get auto_navi::try2 :definition-)
      "int64 forward_speed
int64 backward_speed
int64 turning_right
int64 turning_left

")



(provide :auto_navi/try2 "892f64bf0a5492a565a4134ba1936c83")


