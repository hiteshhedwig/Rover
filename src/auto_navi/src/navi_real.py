#!/usr/bin/env python
import cv2
import numpy as np
import math
import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from std_msgs.msg import String
import sys
'''
def callback(msg):
	#convert ros message to opencv format	
	try:	
		image = bridge.imgmsg_to_cv2(msg,desired_encoding=msg.encoding)
	except CvBridgeError as e:
		print(e)
	processImage()
        
        try:
	        image_message = bridge.cv2_to_imgmsg(edges,"mono8")
	except CvBridgeError as e:
		print(e)
	pub.publish(image_message)
'''	


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
#setup coloring bounding arrays
   lower_RGB = np.array([0,0,0])
   upper_RGB = np.array([85,85,85])

   while(1):
        # specify image as incoming frame from RPI camera
        ret,image = cap.read()
        rospy.loginfo("Detecting....")
        #retangle marker
        #r = cv2.rectangle(image, (90,0), (488,478), (100, 50, 200), 5)
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
	        rospy.loginfo("Obstacle DETECTED!!")
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

 rospy.init_node('navi_real')
 rospy.loginfo("Obstacle Detection Initiated!!")
 #print "processing the frame"
 br = CvBridge()
 processImage()
 rospy.spin()
