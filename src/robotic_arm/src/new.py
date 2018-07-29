#!/usr/bin/env python

import rospy
from std_msgs.msg import Float64
import RPi.GPIO as GPIO
from cmath import *
from math import *
servo  = 36

servo2 = 29

servo3 = 31

servo4 = 33

servo5 = 35

servo6 = 37


GPIO.setwarnings(False)

GPIO.setmode(GPIO.BOARD)

#GPIO servos setup
GPIO.setup(servo,GPIO.OUT)

GPIO.setup(servo2,GPIO.OUT)

GPIO.setup(servo3,GPIO.OUT)

GPIO.setup(servo4,GPIO.OUT)

GPIO.setup(servo5,GPIO.OUT)

GPIO.setup(servo6,GPIO.OUT)



p0=GPIO.PWM(servo,50)# 50hz frequency

p1=GPIO.PWM(servo2,50)

p2=GPIO.PWM(servo3,50)

p3=GPIO.PWM(servo4,50)

p4=GPIO.PWM(servo5,50)

p5=GPIO.PWM(servo6,50)


p =(p0,p1,p2,p3,p4,p5)


for i in range(3):

    p[i].start(0)




def callback(msg):
    rospy.loginfo(msg.data)
    X= msg.data[0]
    Y= msg.data[1]
    Z= msg.data[2]
    r= msg.data[3]
    p= msg.data[4]
    y= msg.data[5]
    
    

def move() :
    rospy.Subscriber("processed", Float64, callback)
    
    angle=theta(X,Y,Z,r,p,y)
    
    Move_Arm(angle)
    
    

    rospy.spin()


 

def theta(X,Y,Z,r,p,y):

    

    a1=5

    a2=15

    a3=15

 

    theta1=(math.atan(Y/X))*180/pi

    r3 = math.sqrt(X*X + Y*Y + (Z-a1)*(Z-a1))

    theta2 = (atan((Z-a1)/(sqrt(X*X+Y*Y)))-acos((a2*a2 + r3*r3-a3*a3)/(2*a2*r3)))*180/pi

    theta3 = (pi- acos((a3*a3 + a2*a2 - r3*r3)/(2*a2*a3)))*180/pi


    angle=[theta1.real,theta2.real,theta3.real]

        

    return angle





def Duty(x):

    y = x/18 + 2

    if (y<=100 and y>=0):

        return y   

    elif(y<=0):

        y=(180-x)/18 + 2

        return y

    else:

        print("duty cycle out of range")




def Move_Arm(angle):        

    for i in range(3):

        p[i].ChangeDutyCycle(Duty(angle[i]));

        if(i<=3):

          print(angle[i])




if __name__ == '__main__':  
   
    rospy.init_node('new')
    move()



