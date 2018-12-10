#!/usr/bin/env python
import cv2
import numpy as np
import math
import rospy
from auto_navi.msg import try1


def callback(data):

 global cX
 global cY
 cX = data.cX
 cY= data.cY
 calc(cX,cY)
 #print cX
 #print cY

def calc(cX,cY):
    # angle measurement
 
        if cX in range (90,488):

                # angle measurement
            if cY>= 350: 
                if cX >= 244:
                 angR= math.atan2((cY-478),(cX-488))
  		#making it positive
                 angle= math.fabs(math.degrees(angR))
                 print 'pixel location of contour,  X : ', cX, ' Y :', cY
                 print 'angle :', angle
                 steer_ang= angle - 90
                 steer(steer_ang)
               #in reference to relative frame
                if cX< 244:
                 angL= math.atan2((cY-478),(cX-90))
                 angle= math.fabs(math.degrees(angL))
                 print 'pixel location of contour,  X : ', cX, ' Y :', cY
                 print 'angle :', angle
                 steer_ang= 90 - angle
                 steer(steer_ang)

def steer(a):
  if cX in range (90,244):
     #msg sent to arduino via ROS
     print ("command to steer right by angle:", a)

  if cX in range (244, 488):

     print ("command to steer left by angle:" ,a)

  return 0

def calcu():

    rospy.init_node('calc12', anonymous=True)
    #rospy.loginfo("Obstacle Detection Initiated!!")
#    rospy.Subscriber("trying1", String, callback)
    rospy.Subscriber("trying2", try1, callback)
    
if __name__ == '__main__':
    calcu()
    print "started"
    rospy.spin()
