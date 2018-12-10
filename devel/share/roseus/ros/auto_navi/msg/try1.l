;; Auto-generated. Do not edit!


(when (boundp 'auto_navi::try1)
  (if (not (find-package "AUTO_NAVI"))
    (make-package "AUTO_NAVI"))
  (shadow 'try1 (find-package "AUTO_NAVI")))
(unless (find-package "AUTO_NAVI::TRY1")
  (make-package "AUTO_NAVI::TRY1"))

(in-package "ROS")
;;//! \htmlinclude try1.msg.html


(defclass auto_navi::try1
  :super ros::object
  :slots (_cX _cY ))

(defmethod auto_navi::try1
  (:init
   (&key
    ((:cX __cX) 0.0)
    ((:cY __cY) 0.0)
    )
   (send-super :init)
   (setq _cX (float __cX))
   (setq _cY (float __cY))
   self)
  (:cX
   (&optional __cX)
   (if __cX (setq _cX __cX)) _cX)
  (:cY
   (&optional __cY)
   (if __cY (setq _cY __cY)) _cY)
  (:serialization-length
   ()
   (+
    ;; float64 _cX
    8
    ;; float64 _cY
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _cX
       (sys::poke _cX (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cY
       (sys::poke _cY (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _cX
     (setq _cX (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cY
     (setq _cY (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get auto_navi::try1 :md5sum-) "bd466dd2a275f04fea16b85b9a5cea50")
(setf (get auto_navi::try1 :datatype-) "auto_navi/try1")
(setf (get auto_navi::try1 :definition-)
      "float64 cX
float64 cY

")



(provide :auto_navi/try1 "bd466dd2a275f04fea16b85b9a5cea50")


