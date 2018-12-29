#!/usr/bin/env python
import rospy
from sensor_msgs.msg import NavSatFix
from std_msgs.msg import Int32
import geopy.distance
import math
from auto_navi.msg import try1, try3
import time



pub= rospy.Publisher("turning_cmd", Int32, queue_size=10)

'''
global a


def callback(data):
    #rospy.loginfo(rospy.get_caller_id() + "\nGPS:\nLat: [{}]\nLong: [{}]\nAlti: [{}]".
    #format(data.latitude, data.longitude, data.altitude))
    dist_cal(data.latitude, data.longitude)
def callback1(data1):
   
    #turning_ws(data)
    
    a= data1
    
    return a.data
    #print a.data
     
'''
'''
def turning_ws(data):
    cHDG=data
    return cHDG
'''
'''    

def dist_cal(a,b):
    coords_1 = (a, b)
    coords_2 = (x, y)
    dist= geopy.distance.distance(coords_1, coords_2).m
    #goal heading
    gHDG= math.atan2((x-a),(y-b))
    gHDG= math.degrees(gHDG)
    print gHDG
    #current heading 
    #msg=Float64()
    cHDG= a.data
    print a.data
    #angle to be turn
    if (gHDG-cHDG)>180:
     dHDG= gHDG-360-cHDG
     print dHDG
     pub.publish(dHDG)
    if (gHDG-cHDG)<-180:
     dHDG= 360-cHDG+gHDG
     print dHDG
     pub.publish(dHDG)


    


def gyros():
    rospy.init_node('gpps', anonymous=True)
    rospy.Subscriber("/mavros/global_position/global", NavSatFix, callback)
    rospy.Subscriber("/mavros/global_position/compass_hdg", Float64, callback1)
    pub= rospy.Publisher("turning_cmd", Float64, queue_size=10)
    rospy.spin()
'''
'''
def callback(data):
    #rospy.loginfo(rospy.get_caller_id() + "\nGPS:\nLat: [{}]\nLong: [{}]\nAlti: [{}]".
    #format(data.latitude, data.longitude, data.altitude))
    dist_cal(data.latitude, data.longitude)
    print data.latitude
'''


def callback(data):
    #rospy.loginfo(rospy.get_caller_id() + "\nGPS:\nLat: [{}]\nLong: [{}]\nAlti: [{}]".
    #format(data.latitude, data.longitude, data.altitude))
    dist_cal(data.latitude, data.longitude)


def callback1(data):

    cX=data.X
    cY=data.Y
    transfer(cX,cY)

def transfer(cX,cY):

    X= cX
    Y=cY
    return Y

def dist_cal(a,b):
    coords_1 = (a, b)
    coords_2 = (x, y)
    dist= geopy.distance.distance(coords_1, coords_2).m
    print dist
    #dist = 40
    #msg1= try3()
    #cY=msg1.y

    msg=Int32()
   # print cY
    

    cY = transfer(Y)
    if dist> 0 
      if cY<350:
     #if a in range (90,488):
      #if b in range (0,350):
       #Turn MOTOR FORWARD
       MOTOR_SPEED= 60
       msg.data= MOTOR_SPEED
       print "forward"
       #print cY
       pub.publish(msg)


    if dist> 0 :
           #if a in range (90,488):
      #if b in range (0,350):
       #Turn MOTOR FORWARD
       MOTOR_SPEED= 60
       msg.data= MOTOR_SPEED
       print "forward"
       #print cY
       pub.publish(msg)


    if dist>0:
      #cY = transfer(Y)
      if cY>=350:
       MOTOR_SPEED= 0
       print "stop"
       msg.data= MOTOR_SPEED
       pub.publish(msg) 
 

    if dist<=3 :
      MOTOR_SPEED= 0
      print "stop"
      msg.data= MOTOR_SPEED
      pub.publish(msg) 
 




def gyros():
    rospy.init_node('gpps', anonymous=True)
    rospy.Subscriber("/mavros/global_position/global", NavSatFix, callback)

    #rospy.Subscriber("/mavros/global_position/compass_hdg", Float64, callback1)
    #gps= message_filters.Subscriber("/mavros/global_position/global", NavSatFix)
    rospy.Subscriber("coordinates1", try3,callback1)

    rospy.spin()
    

if __name__ == '__main__':
    print "started!!"
    #pub= rospy.Publisher("turning_cmd", Int32,queue_size=10)
    x = float(raw_input('latitude: '))
    y =float(raw_input('longitude: '))
    gyros()

