#!/usr/bin/env python

import rospy
from std_msgs.msg import String
#from std_msgs.msg import Float64
from auto_navi.msg import try1, try3
import math
global cX
global cY
#def callback(data):
#    rospy.loginfo(rospy.get_caller_id() + " %s", data.data)


def callback1(data):
    rospy.loginfo("cX : %f, cY: %f" % (data.cX, data.cY))
    cX=data.cX
    cY=data.cY
    calc(cX,cY)

def calc(cX,cY):
    pub= rospy.Publisher("coordinates1", try3, queue_size= 10)
    msg=try3()   
    # angle measurement
    if cY<350:
     if cX in range (90,488):
     #msg sent to arduino via ROS
    
        msg.X=cX
        msg.Y=cY
        pub.publish(msg)

 
     
    if cY>= 350: 
     if cX in range (90,488):
     #msg sent to arduino via ROS
    
        msg.X=cX
        msg.Y=cY
        pub.publish(msg)

    #print ("command to steer right by angle:", a)


'''

def steer(cX,cY):
 
  if cX in range (90,244):
     #msg sent to arduino via ROS
    
    msg.X=cX
    msg.Y=cY
    pub.publish(msg)

    #print ("command to steer right by angle:", a)

  if cX in range (244, 488):

    msg.X=cX
    msg.Y=cY
    pub.publish(msg)

    #print ("command to steer left by angle:" ,a)

  return 0
'''
 


def listener():

    rospy.init_node('test_1', anonymous=True)
    #rospy.loginfo("Obstacle Detection Initiated!!")
#    rospy.Subscriber("trying1", String, callback)
    rospy.Subscriber("trying2", try1, callback1)

if __name__ == '__main__':
    print "started"
    listener()
    rospy.spin()

