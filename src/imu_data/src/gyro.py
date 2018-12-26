#!/usr/bin/env python
import rospy
from sensor_msgs.msg import Imu


def callback(data):
    rospy.loginfo(rospy.get_caller_id() + "\nangular_velocity:\nx: [{}]\ny: [{}]\nz: [{}]".
    format(data.angular_velocity.x, data.angular_velocity.y, data.angular_velocity.z))


def gyros():
    print "ads"
    rospy.init_node('gyros', anonymous=True)
    rospy.Subscriber("/mavros/imu/data", Imu, callback)
 
    rospy.spin()
    


if __name__ == '__main__':
    print "started!!"
    gyros()

