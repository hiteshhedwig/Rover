#!/usr/bin/env python
import cv2
import numpy as np
import math
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

def Webcam_frame():
 cv2.namedWindow("webcam1")
 vc = cv2.VideoCapture(3)

 if vc.isOpened(): # try to get the first frame
    rval, frame = vc.read()
 else:
    rval = False

 while rval:
    cv2.imshow("webcam1", frame)
    rval, frame = vc.read()
    key = cv2.waitKey(20)
    if key == 27: # exit on ESC
        break
 cv2.destroyWindow("webcam1")

if __name__ == "__main__" :

 rospy.init_node('webcam1',anonymous=True)

 #print "processing the frame"
 br = CvBridge()
 Webcam_frame()
 rospy.spin()
