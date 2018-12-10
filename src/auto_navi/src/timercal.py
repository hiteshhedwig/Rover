#!/usr/bin/env python
import rospy
import time
import sys

def timersc():

 time_start = time.time()
 seconds = 0
 minutes = 0

 while True:
    try:
        sys.stdout.write("\r{minutes} Minutes {seconds} Seconds".format(minutes=minutes, seconds=seconds))
        sys.stdout.flush()
        time.sleep(1)
        seconds = int(time.time() - time_start) - minutes * 60
        if seconds >= 60:
            minutes += 1
            seconds = 0
    except KeyboardInterrupt, e:
        break

if __name__ == "__main__" :

 rospy.init_node('time_current')
 rospy.loginfo("TIME: ")
 timersc()
 rospy.spin()
