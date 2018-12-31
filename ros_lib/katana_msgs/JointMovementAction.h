#ifndef _ROS_katana_msgs_JointMovementAction_h
#define _ROS_katana_msgs_JointMovementAction_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "katana_msgs/JointMovementActionGoal.h"
#include "katana_msgs/JointMovementActionResult.h"
#include "katana_msgs/JointMovementActionFeedback.h"

namespace katana_msgs
{

  class JointMovementAction : public ros::Msg
  {
    public:
      typedef katana_msgs::JointMovementActionGoal _action_goal_type;
      _action_goal_type action_goal;
      typedef katana_msgs::JointMovementActionResult _action_result_type;
      _action_result_type action_result;
      typedef katana_msgs::JointMovementActionFeedback _action_feedback_type;
      _action_feedback_type action_feedback;

    JointMovementAction():
      action_goal(),
      action_result(),
      action_feedback()
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->action_goal.serialize(outbuffer + offset);
      offset += this->action_result.serialize(outbuffer + offset);
      offset += this->action_feedback.serialize(outbuffer + offset);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->action_goal.deserialize(inbuffer + offset);
      offset += this->action_result.deserialize(inbuffer + offset);
      offset += this->action_feedback.deserialize(inbuffer + offset);
     return offset;
    }

    const char * getType(){ return "katana_msgs/JointMovementAction"; };
    const char * getMD5(){ return "729d616fa544da9079d58e0ecde6ca21"; };

  };

}
#endif
