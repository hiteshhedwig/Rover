#!/usr/bin/env python

import rospy
import tf
#from kuka_arm.srv import *
#from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
#from geometry_msgs.msg import Pose
from mpmath import *
from sympy import *
import numpy as np
import math 
from std_msgs.msg import Float64 
from cmath import *
from numpy import matrix
from numpy import linalg


def handle_calculate_IK(req):

		      if req>1 :
			# IK code starts here
			#joint_trajectory_point = JointTrajectoryPoint()
                        X = float(input("Enter the value x:"))#req.poses[x].position.x
			Y = float(input("Enter the value y:"))#req.poses[x].position.y
			Z = float(input("Enter the value z:"))#req.poses[x].position.z
                        a1= 5
                        a2=15
                        a3=15
                        theta1 = math.atan(float(Y/X))
                        theta1= math.degrees(theta1)
                        r3 = math.sqrt(X*X + Y*Y + (Z-a1)*(Z-a1))

                        theta2= ((atan((Z-a1)/(sqrt(X*X + Y*Y))) - acos((a2*a2 + r3*r3 - a3*a3)/(2*a2*r3))))*180/pi

                        theta3= (pi- acos((a1*a1 + a2*a2 - r3*r3)/(2*a1*a2)))*180/pi	
		        
                        theta=[theta1.real,theta2.real, theta3.real]

                        print theta[0]
                        print theta[1]
                        print theta[2]

                        pub.publish(theta)


if __name__ == "__main__":
	
	rospy.init_node('IK_server')
        pub = rospy.Publisher('control', Float64, queue_size=10)

	print "Inverse Kinematics :"
        handle_calculate_IK(2)
	rospy.spin()


