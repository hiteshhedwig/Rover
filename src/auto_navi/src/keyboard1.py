#!/usr/bin/env python

from __future__ import print_function

import rospy
from std_msgs.msg import Int32
from auto_navi.msg import try2
import time

import sys, select, termios, tty


msg1 = """
Reading from the keyboard and Publishing!
---------------------------------------------------
forward drive :
   q[30] w[50] e[70] r[90] t[100] y[120]
   
backward drive :
   a[30] s[50] d[70] f[90] g[100] h[120]

turning left:
   z[100]

turning right:
   m[100]



 Space : stop

CTRL-C to quit
"""  
   

def getKey():
    tty.setraw(sys.stdin.fileno())
    select.select([sys.stdin], [], [], 0)
    key = sys.stdin.read(1)
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    
    return key

if __name__=="__main__":
    
    settings = termios.tcgetattr(sys.stdin)

    pub = rospy.Publisher('rover_drive', try2, queue_size = 10)
    
    rospy.init_node('keyboard1')
    
    try:
        print (msg1)

        while(1):

            key = getKey()
            msg= try2()
            if(key=='q'):
                MOTOR_SPEED=30
                msg.forward_speed= MOTOR_SPEED
                msg.backward_speed= 0
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)
            if(key=='w'):
                MOTOR_SPEED=50
                msg.forward_speed= MOTOR_SPEED
                msg.backward_speed= 0
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)                
            if(key=='e'):
                MOTOR_SPEED=70
                msg.forward_speed= MOTOR_SPEED
                msg.backward_speed= 0
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)               
            if(key=='r'):
                MOTOR_SPEED=90
                msg.forward_speed= MOTOR_SPEED
                msg.backward_speed= 0
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)                
            if(key=='t'):
                MOTOR_SPEED=100
                msg.forward_speed= MOTOR_SPEED
                msg.backward_speed= 0
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)                
            if(key=='y'):
                MOTOR_SPEED=120
                msg.forward_speed= MOTOR_SPEED
                msg.backward_speed= 0
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)                   

            if(key=='a'):
                MOTOR_SPEED=30
                msg.forward_speed= 0
                msg.backward_speed= MOTOR_SPEED
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)
            if(key=='s'):
                MOTOR_SPEED=50
                msg.forward_speed= 0
                msg.backward_speed= MOTOR_SPEED
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)                
            if(key=='d'):
                MOTOR_SPEED=70
                msg.forward_speed= 0
                msg.backward_speed= MOTOR_SPEED
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)                
            if(key=='f'):
                MOTOR_SPEED=90
                msg.forward_speed= 0
                msg.backward_speed= MOTOR_SPEED
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)                
            if(key=='g'):
                MOTOR_SPEED=100
                msg.forward_speed= 0
                msg.backward_speed= MOTOR_SPEED
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)                
            if(key=='h'):
                MOTOR_SPEED=120
                msg.forward_speed= 0
                msg.backward_speed= MOTOR_SPEED
                msg.turning_left = 0
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)
            if(key=='z'):
                MOTOR_SPEED=100
                msg.forward_speed= 0
                msg.backward_speed= 0
                msg.turning_left = MOTOR_SPEED
                msg.turning_right= 0
                print (MOTOR_SPEED)
                pub.publish(msg)
                time.sleep(0.029)
                msg.forward_speed= 0
                msg.backward_speed= 0
                msg.turning_left = 0
                msg.turning_right= 0
                pub.publish(msg)
                
            if(key=='m'):
                MOTOR_SPEED=100
                msg.forward_speed= 0
                msg.backward_speed= 0
                msg.turning_left = 0
                msg.turning_right= MOTOR_SPEED 
                print (MOTOR_SPEED)
                pub.publish(msg)
                time.sleep(0.029)
                msg.forward_speed= 0
                msg.backward_speed= 0
                msg.turning_left = 0
                msg.turning_right= 0
                pub.publish(msg)

            if(key == ' '):
                MOTOR_SPEED=0
                msg.forward_speed= MOTOR_SPEED
                msg.backward_speed= MOTOR_SPEED
                msg.turning_left = MOTOR_SPEED
                msg.turning_right= MOTOR_SPEED 
                print (MOTOR_SPEED)
                pub.publish(msg)                   

    except Exception as e:
        print(e)

    finally:
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    rospy.spin()

