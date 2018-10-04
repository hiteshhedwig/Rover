#INFERNO 2018
#obstacle detection image processing code

#from picamera.array import PiRGBArray
#from picamera import PiCamera
import argparse
import time
import cv2
import numpy as np

# choosing image to be processed
img = cv2.imread("mars9.jpg")
'''
width = 599
height = 346
dim = (width, height)
 
# resize image
img = cv2.resize(img, dim, interpolation = cv2.INTER_AREA) 
'''
'''
#setup args
ap = argparse.ArgumentParser()
ap.add_argument("-v", "--video", help="path to the video file")
ap.add_argument("-a", "--min-area", type=int, default=500, help="minimum area size")
args = vars(ap.parse_args())

#pause
time.sleep(0.1)
'''
#setup coloring bounding arrays
lower_RGB = np.array([0,0,0])
upper_RGB = np.array([85,85,85])

# begin looping video and process frame-by-frame
#while(1):
        # specify image as incoming frame from RPI camera
#   ret,image = cap.read()

        # conduct color threshold
mask = cv2.inRange(img,lower_RGB,upper_RGB)

        # find contours (similar to particle analysis)
(_,cnts, _) = cv2.findContours(mask, cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_SIMPLE)
 
	# loop over the contours
for c in cnts:
		# if the contour is too small, ignore it
 if cv2.contourArea(c) < 100:
	continue
 
		# compute the bounding box for the contour, draw it on the frame,
		# and update the text
 (x, y, w, h) = cv2.boundingRect(c)
 cv2.rectangle(img, (x, y), (x + w, y + h), (0, 0, 255), 2) 

        # show the images
 cv2.imshow("mask",mask)
 cv2.imshow("img",img)
        
'''        # termination by pressing 'esc' (escape key)
k = cv2.waitKey(30) & 0xff
if k == 27:
  break
elif k == ord('s'):
  cv2.imwrite('mask.png',mask)
  cv2.imwrite('image.png',img)
'''
# terminate windows
cv2.waitKey(0) 
cv2.destroyAllWindows()



