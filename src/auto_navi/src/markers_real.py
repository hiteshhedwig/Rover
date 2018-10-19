#!/usr/bin/env python
import cv2   
import numpy as np
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from std_msgs.msg import String
import sys
import rospy

def processMarkers():
#capturing video through webcam
 cap=cv2.VideoCapture(0)
 rospy.loginfo("Detecting the markers....")

 while(1):
	_, img = cap.read()
	    
	#converting frame(img i.e BGR) to HSV (hue-saturation-value)
        #rospy.loginfo("Detecting the markers....")
	hsv=cv2.cvtColor(img,cv2.COLOR_BGR2HSV)

	#definig the range of red color
	red_lower=np.array([136,87,111],np.uint8)
	red_upper=np.array([180,255,255],np.uint8)

	#defining the Range of Blue color
	blue_lower=np.array([88,115,150],np.uint8)
	blue_upper=np.array([150,255,255],np.uint8)
	
	#defining the Range of yellow color
	yellow_lower=np.array([22,60,200],np.uint8)
	yellow_upper=np.array([60,255,255],np.uint8)

	#finding the range of red,blue and yellow color in the image
	red=cv2.inRange(hsv, red_lower, red_upper)
	blue=cv2.inRange(hsv,blue_lower,blue_upper)
	yellow=cv2.inRange(hsv,yellow_lower,yellow_upper)
	
	#Morphological transformation, Dilation  	
	kernal = np.ones((5 ,5), "uint8")

        red=cv2.dilate(red, kernal)
	res=cv2.bitwise_and(img, img, mask = red)

	blue=cv2.dilate(blue,kernal)
	res1=cv2.bitwise_and(img, img, mask = blue)

	yellow=cv2.dilate(yellow,kernal)
	res2=cv2.bitwise_and(img, img, mask = yellow)    

        cv2.imshow('res',res)
        cv2.imshow('res1',res1)
        cv2.imshow('res2',res2)

	#Tracking the Red Color
	(_,contours,hierarchy)=cv2.findContours(red,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
	
	for pic, contour in enumerate(contours):
		area = cv2.contourArea(contour)
		if(area>1000):
			
			x,y,w,h = cv2.boundingRect(contour)	
			img = cv2.rectangle(img,(x,y),(x+w,y+h),(0,0,255),2)
			cv2.putText(img,"Red marker",(x,y),cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0,0,255))
			rospy.loginfo("FOUND RED!")
	#Tracking the Blue Color
	(_,contours,hierarchy)=cv2.findContours(blue,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
	for pic, contour in enumerate(contours):
		area = cv2.contourArea(contour)
		if(area>1000):
			x,y,w,h = cv2.boundingRect(contour)	
			img = cv2.rectangle(img,(x,y),(x+w,y+h),(255,0,0),2)
			cv2.putText(img,"Blue marker",(x,y),cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255,0,0))
                        rospy.loginfo("FOUND BLUE!")
	#Tracking the yellow Color
	(_,contours,hierarchy)=cv2.findContours(yellow,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
	for pic, contour in enumerate(contours):
		area = cv2.contourArea(contour)
		if(area>1000):
			x,y,w,h = cv2.boundingRect(contour)	
			img = cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),2)
			cv2.putText(img,"yellow marker",(x,y),cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0,255,0))  
                        rospy.loginfo("FOUND YELLOW!")
           
    	#cv2.imshow("Redcolour",red)
    	cv2.imshow("Markers Tracking",img)
    	#cv2.imshow("red",res) 	
        k = cv2.waitKey(30) & 0xff
        if k == 27:
            break
        elif k == ord('s'):
            cv2.imwrite('mask.png',mask)
            cv2.imwrite('image.png',image)

       # terminate windows 
 cv2.destroyAllWindows()
 cap.release()


if __name__ == "__main__" :

 rospy.init_node('markers_real')
 rospy.loginfo("Markers Detection Initiated!!")
 #print "processing the frame"
 br = CvBridge()
 processMarkers()
 rospy.spin()

