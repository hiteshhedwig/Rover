;; Auto-generated. Do not edit!


(when (boundp 'auto_navi::try3)
  (if (not (find-package "AUTO_NAVI"))
    (make-package "AUTO_NAVI"))
  (shadow 'try3 (find-package "AUTO_NAVI")))
(unless (find-package "AUTO_NAVI::TRY3")
  (make-package "AUTO_NAVI::TRY3"))

(in-package "ROS")
;;//! \htmlinclude try3.msg.html


(defclass auto_navi::try3
  :super ros::object
  :slots (_lat _long _X _Y ))

(defmethod auto_navi::try3
  (:init
   (&key
    ((:lat __lat) 0.0)
    ((:long __long) 0.0)
    ((:X __X) 0.0)
    ((:Y __Y) 0.0)
    )
   (send-super :init)
   (setq _lat (float __lat))
   (setq _long (float __long))
   (setq _X (float __X))
   (setq _Y (float __Y))
   self)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:long
   (&optional __long)
   (if __long (setq _long __long)) _long)
  (:X
   (&optional __X)
   (if __X (setq _X __X)) _X)
  (:Y
   (&optional __Y)
   (if __Y (setq _Y __Y)) _Y)
  (:serialization-length
   ()
   (+
    ;; float64 _lat
    8
    ;; float64 _long
    8
    ;; float64 _X
    8
    ;; float64 _Y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _long
       (sys::poke _long (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _X
       (sys::poke _X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Y
       (sys::poke _Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _long
     (setq _long (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _X
     (setq _X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Y
     (setq _Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get auto_navi::try3 :md5sum-) "d1aba966ad6a1f4a1f3e7976f86d20de")
(setf (get auto_navi::try3 :datatype-) "auto_navi/try3")
(setf (get auto_navi::try3 :definition-)
      "float64 lat
float64 long
float64 X
float64 Y

")



(provide :auto_navi/try3 "d1aba966ad6a1f4a1f3e7976f86d20de")


