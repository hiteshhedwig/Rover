#!/usr/bin/env python
import rospy
from mavros_msgs.msg import ActuatorControl
import time

def motr(a):
    rospy.init_node('motor', anonymous=True)
    pub=rospy.Publisher("/mavros/actuator_control", ActuatorControl,queue_size=10)
    rate= rospy.Rate(10)
    while not rospy.is_shutdown():
     msg= ActuatorControl()
     msg.header.frame_id = "motorcontrol"
     msg.controls = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]
     msg.group_mix = 3
     time.sleep(3)
     print 1

     pub.publish(msg)
     time.sleep(3)


    rospy.spin()

if __name__ == '__main__':
    print "started!!"
    motr(1)


