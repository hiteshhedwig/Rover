#!/usr/bin/env python
import rospy
from sensor_msgs.msg import Joy 
import os
import time
import sys
import numpy as np
import math
from std_msgs.msg import Int32
from std_msgs.msg import Int64
from auto_navi.msg import try2
#from ps3joy.msg import try2
#from scipy import arange

def callback(data):
    #rospy.loginfo(rospy.get_caller_id() + "\naxes:\n 1: [{}]".
    #format(data.axes[2]))
    val = data.axes[2]
    #print val
    driving_cal(val)

def driving_cal(val):
    pub= rospy.Publisher('rover_drive_forward', Int32)
    pub1= rospy.Publisher('rover_drive_backward', Int64)
    rate= rospy.Rate(10)
   
    #print "begin"
    #for driving forward
    val = val*100
    val =math.floor(val)
    print val
    if (val) > 0:
       #print "khkh"
       if val in np.arange(0,20,1): 
        #motor pwm speed
        MOTOR_SPEED = 30
        
        #print "Mptp"
        rospy.loginfo("Motor speed forward : %s", MOTOR_SPEED)         
        #msg.forward_speed = MOTOR_SPEED
        pub.publish(MOTOR_SPEED)
       if val in np.arange(20,40,1):
        #motor  pwm speed
        MOTOR_SPEED = 50
        #print "Mptp"
        rospy.loginfo("Motor speed forward :%s", MOTOR_SPEED) 
        #msg.forward_speed = MOTOR_SPEED
        pub.publish(MOTOR_SPEED)
       if val in np.arange(40,60, 1):
        #motor pwm speed
        MOTOR_SPEED = 70
        #print "Mptp"
        rospy.loginfo("Motor speed forward : %s", MOTOR_SPEED) 
       # msg.forward_speed = MOTOR_SPEED
        pub.publish(MOTOR_SPEED)
       if val in np.arange(60,80,1):
        #motor pwm speed
        MOTOR_SPEED =  80
        
        rospy.loginfo("Motor speed forward: %s", MOTOR_SPEED) 
        #msg.forward_speed = MOTOR_SPEED
        pub.publish(MOTOR_SPEED)
       if val in np.arange(80,100,1):
        #motor pwm speed
        MOTOR_SPEED =  100
        rospy.loginfo("Motor speed forward: %s", MOTOR_SPEED) 
      #  msg.forward_speed = MOTOR_SPEED
        pub.publish(MOTOR_SPEED)
     #for driving backward
    if val<0:
       val= val*(-1)
       if val in np.arange(0,20,1):
        #motor speed backward
        MOTOR_SPEED = 30
        rospy.loginfo("Motor speed backward : %s", MOTOR_SPEED) 
       # msg.backward_speed = MOTOR_SPEED
        pub1.publish(MOTOR_SPEED)
       if val in np.arange(20,40,1):
        MOTOR_SPEED = 50
        rospy.loginfo("Motor speed backward :%s", MOTOR_SPEED) 
       # msg.backward_speed = MOTOR_SPEED
        pub1.publish(MOTOR_SPEED)
       if val in np.arange(40,60, 1):
        #motor speed backward
        MOTOR_SPEED = 70
        rospy.loginfo("Motor speed backward : %s", MOTOR_SPEED) 
       # msg.backward_speed= MOTOR_SPEED
        pub1.publish(MOTOR_SPEED)  
       if val in np.arange(60,80,1):
        #motor speed backward 
        MOTOR_SPEED = 80
        rospy.loginfo("Motor speed backward : %s", MOTOR_SPEED) 
       # msg.backward_speed = MOTOR_SPEED
        pub1.publish(MOTOR_SPEED)
       if val in np.arange(80,100,1):
        #motor speed backward
        MOTOR_SPEED = 100
        rospy.loginfo("Motor speed backward :%s", MOTOR_SPEED) 
       # msg.backward_speed = MOTOR_SPEED
        pub1.publish(MOTOR_SPEED)

      


def joystic():

  rospy.init_node('ps3joy_node2', anonymous= True)
  rospy.Subscriber("joy", Joy, callback)
  rospy.loginfo("STARTED!")


if __name__ == '__main__':
  joystic()
  rospy.spin()   

