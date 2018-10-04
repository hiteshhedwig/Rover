#INFERNO 2018
#object detection
#markers detection: Blue bottle, red box, yellow disc



import cv2
import numpy as np

img = cv2.imread("box_6.jpg")
# Convert BGR to HSV
hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)

# define range of blue/red/yellow color in HSV

lower_blue = np.array([90,50,50], np.uint8)
upper_blue = np.array([130,255,255], np.uint8)

lower_red = np.array([100,20,50], np.uint8)
upper_red = np.array([190,255,255], np.uint8)

lower_yellow = np.array([20,100,100], np.uint8)
upper_yellow= np.array([30, 255, 255], np.uint8)
# Threshold the HSV image to get only blue colors
blue = cv2.inRange(hsv, lower_blue, upper_blue)

red = cv2.inRange(hsv, lower_red, upper_red)

yellow = cv2.inRange(hsv, lower_yellow, upper_yellow)

# Bitwise-AND mask and original image
#res = cv2.bitwise_and(img,img, mask= mask)


#cv2.imshow('res',res)

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

#storing the contour values that is no. of them, position in frame and all using the findcontours() functions 

(_,contours, _) = cv2.findContours(red, cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)

#bounding for red detected portion

for pic, contour in enumerate(contours):
	area = cv2.contourArea(contour)
	if(area>300): #eliminating the chances of enclosing the small contours in a rectangle
			
		 x,y,w,h = cv2.boundingRect(contour)	#rect. all 4 coordinate
		 img = cv2.rectangle(img,(x,y),(x+w,y+h),(0,0,255),2)    #drawing rectangle using the 4 coordinate
                 cv2.putText(img,"RED color",(x,y),cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0,0,255))


(_,contours,hierarchy)=cv2.findContours(blue,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)

#bounding for blue detected portion

for pic, contour in enumerate(contours):
		area = cv2.contourArea(contour) 
		if(area>300):  #eliminating the chances of enclosing the small contours in a rectangle
			x,y,w,h = cv2.boundingRect(contour)	#rect. all 4 coordinate
			img = cv2.rectangle(img,(x,y),(x+w,y+h),(255,0,0),2)   #drawing rectangle using the 4 coordinate
                        cv2.putText(img,"Blue color",(x,y),cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255,0,0)) 

(_,contours,hierarchy)=cv2.findContours(yellow,cv2.RETR_TREE,cv2.CHAIN_APPROX_SIMPLE)


#bounding for yellow detected portion

for pic, contour in enumerate(contours):
		area = cv2.contourArea(contour)
		if(area>300):
			x,y,w,h = cv2.boundingRect(contour)	
			img = cv2.rectangle(img,(x,y),(x+w,y+h),(0,255,0),2)
                        cv2.putText(img,"yellow  color",(x,y),cv2.FONT_HERSHEY_SIMPLEX, 1.0, (255,255,0))  


'''
for c in cnts:
		# if the contour is too small, ignore it
 if cv2.contourArea(c) < 300:
	continue
 
		# compute the bounding box for the contour, draw it on the frame,
		# and update the text
 (x, y, w, h) = cv2.boundingRect(c)
 cv2.rectangle(img, (x, y), (x + w, y + h), (0, 0, 255), 2) 
 cv2.putText(img,"Red BOTTLE",(x,y),cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0,0,255))
'''
cv2.imshow("img",img)

cv2.waitKey(0)
cv2.destroyAllWindows()
