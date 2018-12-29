#!/usr/bin/env python

import rospy
from std_msgs.msg import String
#from std_msgs.msg import Float64
from auto_navi.msg import try1, try3
from std_msgs.msg import Int32
#def callback(data):
#    rospy.loginfo(rospy.get_caller_id() + " %s", data.data)
pub= rospy.Publisher("turning_cmd", Int32, queue_size=10)
def callback1(data):
    rospy.loginfo("cX : %f, cY: %f" % (data.X, data.Y))
    
    calc(data.X,data.Y)

def calc(x,y):
    # angle measurement
    dist = 40
    msg= Int32()
    
    if dist> 0 :
     #if y<350:
            
       MOTOR_SPEED= 50
       msg.data= MOTOR_SPEED
       print "forward"
       #print cY
       pub.publish(msg)

    if dist>0: 
     if y>=350:
       MOTOR_SPEED= 0
       msg.data= MOTOR_SPEED
       print "STop"
       #print cY
       pub.publish(msg)
       
 



def listener():

    rospy.init_node('test_1', anonymous=True)
    #rospy.loginfo("Obstacle Detection Initiated!!")
#    rospy.Subscriber("trying1", String, callback)
    rospy.Subscriber("coordinates1", try3, callback1)


if __name__ == '__main__':
    print "Started"
    listener()

    rospy.spin()
