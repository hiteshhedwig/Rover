

'''

Created on 09-July-2018

 

@author: SAKSHAM

'''

 

 

import math

from cmath import atan

from cmath import sqrt

from cmath import acos

from cmath import pi

from cmath import cos

from cmath import sin 

from cmath import asin

from numpy import matrix

from numpy import linalg

import time

import RPi.GPIO as GPIO

 

 

servo  = 36

servo2 = 29

servo3 = 31

servo4 = 33

servo5 = 35

servo6 = 37

 

GPIO.setwarnings(False)

 

GPIO.setmode(GPIO.BOARD)

 

 

 

 

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

 

 

 

 

def theta(X,Y,Z,r,p,y):

    

    a1=5

    a2=15

    a3=15

 

    theta1=(math.atan(Y/X))*180/pi

    r3 = math.sqrt(X*X + Y*Y + (Z-a1)*(Z-a1))

    theta2 = (atan((Z-a1)/(sqrt(X*X+Y*Y)))-acos((a2*a2 + r3*r3-a3*a3)/(2*a2*r3)))*180/pi

    theta3 = (pi- acos((a3*a3 + a2*a2 - r3*r3)/(2*a2*a3)))*180/pi

 

    

    #R03 =matrix([[cos(theta1)*cos(theta2-theta3),-cos(theta1)*sin(theta2+theta3),sin(theta1)],

                #[sin(theta1)*cos(theta2+theta3),-sin(theta1)*sin(theta2+theta3),-cos(theta1)],

                #[sin(theta2+theta3),cos(theta2+theta3),0]])

    #R06 =matrix([[cos(p)*cos(y) ,-cos(p)*sin(y), sin(p)],

                #[(sin(r)*sin(p)*cos(y))+(cos(r)+sin(y)),(-sin(r)*sin(p)*sin(y))+(cos(r)+cos(y)),-sin(r)*cos(p)],

                #[(cos(r)*sin(p)*cos(y))+(sin(r)+sin(y)),(cos(r)*sin(p)*sin(y))+(sin(r)+cos(y)), cos(r)*cos(p)]])

   

   

    #inverse = linalg.inv(R03)

    #R36 = inverse*R06

    #print(R36)

    #theta5 = asin(R36[2,2])

    #print (theta5)

    #theta6 = acos(((R36[2,1])/cos(theta5)))

    #theta4 = asin(((R36[1,2])/cos(theta5)))

    

    angle=[theta1.real,theta2.real,theta3.real]

        

    return angle

'''

def keypad() :

    
    MATRIX = [ [1,2,3,'A'],

               [4,5,6,'B'],

               [7,8,9,'C'],

               ['*',0,'#','D']]

 

    ROW = [12,16,18,22]

    COL = [7,11,13,15]

 

    for j in range(4):

        GPIO.setup(COL[j], GPIO.OUT)

        GPIO.output(COL[j], 1)

 

    for i in range (4):

        GPIO.setup(ROW[i], GPIO.IN, pull_up_down = GPIO.PUD_UP)

 

    

    while(1):

        for j in range (4):

            GPIO.output(COL[j],0)

 

            for i in range(4):

                if GPIO.input (ROW[i]) == 0:

                    print(MATRIX[i][j])

                    return MATRIX[i][j]

                while (GPIO.input(ROW[i]) == 0):

                    pass

            GPIO.output(COL[j],1)

                                

            

        continue;
'''
def Duty(x):

    

    

    y = x/18 + 2

    

    if (y<=100 and y>=0):

        

        return y   

    elif(y<=0):

        y=(180-x)/18 + 2

        return y

    else:

        print("duty cycle out of range")



def Reset():

    

    gX = 40

    gY = 0

    gZ = 10

            

    angle = theta(gX,gY,gZ,0,0,0)

            

    print("Resetting ....") 

    co_ordinates();       

    for i in range(3):

        p[i].ChangeDutyCycle(Duty(angle[i]));

        

def Move_Arm(angle):        

    for i in range(3):

        p[i].ChangeDutyCycle(Duty(angle[i]));

        if(i<=3):

          print(angle[i])

          

def co_ordinates():

    

    print(gX,gY,gZ)

                       

 

 

while(1):

    GPIO.setwarnings(False)

    gX = 40

    gY = 0

    gZ = 10

            

    angle = theta(gX,gY,gZ,0,0,0)

            

    print("Set to Initial Position")

    

    time.sleep(1)

    

    co_ordinates();

    

    

    

    for i in range(3):

        p[i].ChangeDutyCycle(Duty(angle[i]));

    

        if(i<=3):

            print(angle[i])

            

    x =int(input("To start press 1"))

    

    

    if (x==1):

       

        while(1):

            time.sleep(0.1)

            

            print("Play..")

            

            y = keypad();

                        

            if (y==1):

                gX=gX+1

                angle = theta(gX,gY,gZ,0,0,0)

                co_ordinates();

                print("Moving ....\n")

                    

                Move_Arm(angle);

                    

                                      

                    

            elif (y==4):

                gX=gX-1

                angle = theta(gX,gY,gZ,0,0,0)

                print("Moving ....\n")

                co_ordinates();

                Move_Arm(angle);        

                            

            elif (y==2):

                gY = gY +1

                angle = theta(gX,gY,gZ,0,0,0)

                print("Moving ....\n")

                co_ordinates();

                Move_Arm(angle);

 

            elif (y==5):

                gY = gY -1

                angle = theta(gX,gY,gZ,0,0,0)

                print("Moving ....\n")

                co_ordinates();

                Move_Arm(angle);

            elif (y==3):

                gZ = gZ +1

                angle = theta(gX,gY,gZ,0,0,0)

                print("Moving ....\n")

                

                Move_Arm(angle);

                co_ordinates();

 

 

            elif (y==6):

                gZ = gZ -1 

                angle = theta(gX,gY,gZ,0,0,0)

                print("Moving ....\n")

                

                Move_Arm(angle);

                co_ordinates();

                    

            elif(y=='D'):

                Reset();    

            

            elif (y==None):

                time.sleep(1)

                z=keypad();

                print(z);

                break ;
