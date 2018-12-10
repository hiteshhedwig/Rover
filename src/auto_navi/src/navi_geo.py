import cv2
import numpy as np
import math

cap= cv2.VideoCapture(0)

#setup coloring bounding arrays
lower_RGB = np.array([0,0,0])
upper_RGB = np.array([85,85,85])

def steer(a):
  if cX in range (90,244):
     #msg sent to arduino via ROS
     print ("command to steer right by angle:", a)

  if cX in range (244, 488):

     print ("command to steer left by angle:" ,a)

  return 0


while(1):
        # specify image as incoming frame from RPI camera
        ret,image = cap.read()

        #retangle marker
        r = cv2.rectangle(image, (90,0), (488,478), (100, 50, 200), 3)
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
		

                



                # angle measurement
                if cY>= 350: 
                     angR= math.atan2((cY-478),(cX-488))
                     angL= math.atan2((cY-478),(cX-90))
  		#making it positive
   		     angleR= math.fabs(math.degrees(angR))
                     angleL= math.fabs(math.degrees(angL))
                     if cX> 244:
                      print 'pixel location of contour,  X : ', cX, ' Y :', cY
                      print 'angle :', angleR
                      angle = angleR
                     if cX< 244:
                      print 'pixel location of contour,  X : ', cX, ' Y :', cY
                      print 'angle :', angleL
                      angle= angleL
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
