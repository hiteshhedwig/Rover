#!/usr/bin/env python

from __future__ import print_function

import rospy

from geometry_msgs.msg import Point

import sys, select, termios, tty


msg = """
Reading from the keyboard and Publishing to Twist!
---------------------------------------------------
Moving around :
   w   a    q
   s   d    e 

anything else : stop

w/s : increase/decrease x axis 
a/d : increase/decrease y axis
q/e : increase/decrease  z axis

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

    pub = rospy.Publisher('co_ordinates', Point)
    
    rospy.init_node('keyboard1')
    
    a = 10 ;
    
    b = 20 ;
      	
    c = 30 ;
 
    x = a ;
    
    y = b ;
    
    z = c ;
    
    
    try:
        print(msg)

        while(1):

            key = getKey()

            if(key=='1'):
                MOTOR_SPEED=30
                pub.publish 
            if(key=='2'):
                MOTOR_SPEED=50
                z = z -1
            if(key=='3'):
                MOTOR_SPEED=70
                y = y +1
            if(key=='4'):
                MOTOR_SPEED=90
                y = y -1
            if(key=='5'):
                MOTOR_SPEED=100
                x = x +1
            if(key=='6'):
                MOTOR_SPEED=110
                x = x -1    
            if(key == '\x03'):
                    break
	    print("X=",x ," Y=",y ," Z=",z)

                     
            point = Point()
	
	    #print(x)

            point.x = x;point.y=y;point.z=z;
        
            pub.publish(point)     

    except Exception as e:
        print(e)

    finally:
        point = Point()
        point.x = a; point.linear.y = b; point.linear.z = c
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    rospy.spin()

