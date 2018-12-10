#!/usr/bin/env python
import cv2
import numpy as np
import math
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from std_msgs.msg import String
import sys
#from std_msgs.msg import Float64
from auto_navi.msg import try1




def processImage():
   
   # img = br.imgmsg_to_cv2(imgmsg,"bgr8")
   cap= cv2.VideoCapture(0)
   #rospy.loginfo("Detecting....")
 
   '''
   while not rospy.is_shutdown():
     ret, frame = cap.read()
     msg = br.cv2_to_imgmsg(frame, encoding="bgr8")

   if ret:
     rospy.loginfo("Capturing image failed.")
   '''
   pub = rospy.Publisher('trying1', String)
   pub1 = rospy.Publisher('trying2', try1)
   rate = rospy.Rate(10)
   msg= try1()
#setup coloring bounding arrays
   lower_RGB = np.array([0,0,0])
   upper_RGB = np.array([85,85,85])

   while(1):
        # specify image as incoming frame from RPI camera
        ret,image = cap.read()
        rospy.loginfo("Detecting....")
        #retangle marker
        r = cv2.rectangle(image, (90,0), (488,478), (96, 96, 96), 5)
        # conduct color threshold
        mask = cv2.inRange(image,lower_RGB,upper_RGB)

        # find contours (similar to particle analysis)
       	(_,cnts, _) = cv2.findContours(mask, cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)

	hsv=cv2.cvtColor(image,cv2.COLOR_BGR2HSV)

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
	res=cv2.bitwise_and(image,image, mask = red)

	blue=cv2.dilate(blue,kernal)
	res1=cv2.bitwise_and(image,image, mask = blue)

	yellow=cv2.dilate(yellow,kernal)
	res2=cv2.bitwise_and(image, image, mask = yellow)  

	#Tracking the Red Color
	(_,contours,hierarchy)=cv2.findContours(red,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
	fr=0
        fb=0
        fy=0
	for pic, contour in enumerate(contours):
		area = cv2.contourArea(contour)
		if(area>1000):
			fr=fr+1
			x,y,w,h = cv2.boundingRect(contour)	
			img = cv2.rectangle(image,(x,y),(x+w,y+h),(0,0,255),2)
			cv2.putText(image,"Red marker",(x,y),cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0,0,255))
			rospy.loginfo("FOUND RED!")
	#Tracking the Blue Color
	(_,contours,hierarchy)=cv2.findContours(blue,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
	for pic, contour in enumerate(contours):
		area = cv2.contourArea(contour)
		if(area>1000):
                        fb=fb+1
			x,y,w,h = cv2.boundingRect(contour)	
			img = cv2.rectangle(image,(x,y),(x+w,y+h),(255,0,0),2)
			cv2.putText(image,"Blue marker",(x,y),cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255,0,0))
                        rospy.loginfo("FOUND BLUE!")
	#Tracking the yellow Color
	(_,contours,hierarchy)=cv2.findContours(yellow,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)
	for pic, contour in enumerate(contours):
		area = cv2.contourArea(contour)
		if(area>1000):
                        fy=fy+1
			x,y,w,h = cv2.boundingRect(contour)	
			img = cv2.rectangle(image,(x,y),(x+w,y+h),(0,255,0),2)
			cv2.putText(image,"yellow marker",(x,y),cv2.FONT_HERSHEY_SIMPLEX, 1.0, (0,255,0))  
                        rospy.loginfo("FOUND YELLOW!")
           
    	#cv2.imshow("Redcolour",red)
    	cv2.imshow("Markers Tracking",image)
    	#cv2.imshow("red",res) 	
        k = cv2.waitKey(30) & 0xff  


        #retangle marker

   
	# loop over the contours
	for c in cnts:
		# if the contour is too small, ignore it
		if cv2.contourArea(c) < 300:
			continue
                M= cv2.moments(c)
                cX= int(M["m10"]/ M["m00"])
                cY= int(M["m01"]/ M["m00"])
                tup= (cX,cY)
                
		# compute the bounding box for the contour, draw it on the frame,
		# and update the text
                if cX not in range (90,488):
		  (x, y, w, h) = cv2.boundingRect(c)
		  cv2.rectangle(image, (x, y), (x + w, y + h), (255, 255, 255), 1) 
                  cv2.circle(image,(cX, cY), 2, (0,0,255),-1)
                  cv2.putText(image,'co-ordinates: {0}'.format(tup), (cX - 25, cY - 25),cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)
		if cX in range (90,488):
		  (x, y, w, h) = cv2.boundingRect(c)
		  cv2.rectangle(image, (x, y), (x + w, y + h), (0, 0, 255), 1) 
                  cv2.circle(image,(cX, cY), 2, (0,0,255),-1)
                  cv2.putText(image,'co-ordinates: {0}'.format(tup), (cX - 25, cY - 25),cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)
		
                rospy.loginfo("Obstacle DETECTED!!")
                #hello_str = "Obstacle Detected" 
                #pub.publish(hello_str)
                msg.cX= cX
                msg.cY= cY
                pub1.publish(msg)
                
                
                
        cv2.imshow("mask",mask)
        cv2.imshow("img",image)
        
       # termination by pressing 'esc' (escape key)
        k = cv2.waitKey(30) & 0xff
        if k == 27:
            rospy.loginfo("Red box detected : %s", fr)
            rospy.loginfo("Blue bottle detected:  %s", fb)
            rospy.loginfo("Yellow disk  detected:  %s", fy)

            break
        elif k == ord('s'):
            cv2.imwrite('mask.png',mask)
            cv2.imwrite('image.png',image)

       # terminate windows 
   cv2.destroyAllWindows()
   cap.release()


'''
def detect_ob(imgmsg):
   img = br.imgmsg_to_cv2(imgmsg,"bgr8")
#   cap= cv2.VideoCapture(0)

#setup coloring bounding arrays
   lower_RGB = np.array([0,0,0])
   upper_RGB = np.array([85,85,85])

   while(1):
        # specify image as incoming frame from RPI camera
        ret,image = cap.read()

        #retangle marker
        r = cv2.rectangle(image, (90,0), (488,478), (100, 50, 200), 5)
        # conduct color threshold
        mask = cv2.inRange(image,lower_RGB,upper_RGB)

        # find contours (similar to particle analysis)
       	(_,cnts, _) = cv2.findContours(mask, cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)
 
	# loop over the contours
	for c in cnts:
		# if the contour is too small, ignore it
		if cv2.contourArea(c) < 300:
			continue
                M= cv2.moments(c)
                cX= int(M["m10"]/ M["m00"])
                cY= int(M["m01"]/ M["m00"])
                tup= (cX,cY)
		# compute the bounding box for the contour, draw it on the frame,
		# and update the text
		(x, y, w, h) = cv2.boundingRect(c)
		cv2.rectangle(image, (x, y), (x + w, y + h), (0, 0, 255), 2) 
                cv2.circle(image,(cX, cY), 2, (0,0,255),-1)
                cv2.putText(image,'co-ordinates: {0}'.format(tup), (cX - 25, cY - 25),cv2.FONT_HERSHEY_SIMPLEX, 0.5, (255, 255, 255), 2)
		# angle measurement
'''
'''  
              if cY>= 350: 
                     ang= math.atan2((cY-478),(cX-488))
  		#making it positive
   		     angle= math.fabs(math.degrees(ang))
                     print ('pixel location of contour,  X : ', cX, ' Y :', cY)
                     print ('angle :', angle)
               #in reference to relative frame
                     steer_ang= angle - 90
                     steer(steer_ang)

        # show the images
        cv2.imshow("mask",mask)
        cv2.imshow("img",image)
        
        # termination by pressing 'esc' (escape key)
        k = cv2.waitKey(30) & 0xff
        if k == 27:
            break
        elif k == ord('s'):
            cv2.imwrite('mask.png',mask)
            cv2.imwrite('image.png',image)

# terminate windows 
   cv2.destroyAllWindows()
   cap.release()
'''
   
if __name__ == "__main__" :

 rospy.init_node('navi_real',anonymous=True)
 rospy.loginfo("Obstacle Detection Initiated!!")
 #print "processing the frame"
 br = CvBridge()
 processImage()
 rospy.spin()
