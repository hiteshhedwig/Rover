#!/usr/bin/env python
import rospy
#from mavros_msgs.msg import ActuatorControl
from std_msgs.msg import Float64
import time
from auto_navi.msg import try1

def callback(data):
   
   motorcontrol(data.data)

def motorcontrol(speed):

   #motor contorlling using MAVros actuator motor control
   
   #if cY<= 350 STOP MOTORS!
   msg=try1()
   cY=msg.cY
   if cY>=350:
    #stop command publish
    print "stop"
    
   if cY<350:
    

   

def turnws():
   rospy.init_node('turning1', anonymous=True)
   rospy.Subscriber("turning_cmd", Float64, callback)

    

if __name__ == '__main__':
    print "started!!"
    turnws()
    rospy.spin()
