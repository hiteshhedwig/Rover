#!/usr/bin/env python

import rospy
from std_msgs.msg import String
#from std_msgs.msg import Float64
from auto_navi.msg import try1
#def callback(data):
#    rospy.loginfo(rospy.get_caller_id() + " %s", data.data)

def callback1(data):
    rospy.loginfo("cX : %f, cY: %f" % (data.cX, data.cY))
   # calc(cX,cY)
'''
def calc(cX,cY):
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
       if cX<= 244:
         print 'pixel location of contour,  X : ', cX, ' Y :', cY
         print 'angle :', angleL
         angle= angleL
        #in reference to relative frame
         steer_ang= angle - 90
         steer(steer_ang)

def steer(a):
  if cX in range (90,244):
     #msg sent to arduino via ROS
     print ("command to steer right by angle:", a)

  if cX in range (244, 488):

     print ("command to steer left by angle:" ,a)

  return 0
'''


def listener():

    rospy.init_node('test_1', anonymous=True)
    #rospy.loginfo("Obstacle Detection Initiated!!")
#    rospy.Subscriber("trying1", String, callback)
    rospy.Subscriber("trying2", try1, callback1)

if __name__ == '__main__':
    listener()
    rospy.spin()
