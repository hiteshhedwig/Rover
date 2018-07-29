#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "robotic_arm/ghusa.h"
#include <sstream>
#include <iostream>
using namespace std;
using namespace ros;
geometry_msgs::Twist receive;
robotic_arm::ghusa bhej;
int i=0;

void callback(geometry_msgs::Twist msg)
{receive=msg;
}
int main(int argc, char **argv)
{
	ros::init(argc, argv, "Test");
	ros::NodeHandle nh;

Subscriber subtel = nh.subscribe("cmd_vel_mux/input/teleop", 1000, &callback) ;
Publisher pub=nh.advertise<robotic_arm::ghusa>("bhejdia",1000);
Publisher pub1=nh.advertise<geometry_msgs::Twist>("bhejdi",1000);
Rate rate(10);

while (ok())
{


  if (receive.linear.x == 0.1)
	{ bhej.x++;
    cout<<bhej.x<<endl;
	}

	else if (receive.linear.x== -0.2 &&  receive.angular.z == -1.0)
	{
		bhej.x--;

	}

	else if (receive.linear.x == 0.2 && receive.angular.z == 0.1) {
		bhej.y++ ;
	}

	else if (receive.linear.x == 0.2 && receive.angular.z == -1.0)
{
bhej.y--;
}
  else if (receive.angular.z== 1.0)
	{
		bhej.z++;
	}

	else if(receive.angular.z == -1.0)

{
	bhej.z-- ;
}

 pub.publish(bhej);
 pub1.publish(receive);
	spinOnce();
	rate.sleep();
}

	return 0;

}
