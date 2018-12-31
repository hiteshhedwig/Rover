#ifndef _ROS_auto_navi_try2_h
#define _ROS_auto_navi_try2_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace auto_navi
{

  class try2 : public ros::Msg
  {
    public:
      typedef int64_t _forward_speed_type;
      _forward_speed_type forward_speed;
      typedef int64_t _backward_speed_type;
      _backward_speed_type backward_speed;
      typedef int64_t _turning_right_type;
      _turning_right_type turning_right;
      typedef int64_t _turning_left_type;
      _turning_left_type turning_left;

    try2():
      forward_speed(0),
      backward_speed(0),
      turning_right(0),
      turning_left(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      union {
        int64_t real;
        uint64_t base;
      } u_forward_speed;
      u_forward_speed.real = this->forward_speed;
      *(outbuffer + offset + 0) = (u_forward_speed.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_forward_speed.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_forward_speed.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_forward_speed.base >> (8 * 3)) & 0xFF;
      *(outbuffer + offset + 4) = (u_forward_speed.base >> (8 * 4)) & 0xFF;
      *(outbuffer + offset + 5) = (u_forward_speed.base >> (8 * 5)) & 0xFF;
      *(outbuffer + offset + 6) = (u_forward_speed.base >> (8 * 6)) & 0xFF;
      *(outbuffer + offset + 7) = (u_forward_speed.base >> (8 * 7)) & 0xFF;
      offset += sizeof(this->forward_speed);
      union {
        int64_t real;
        uint64_t base;
      } u_backward_speed;
      u_backward_speed.real = this->backward_speed;
      *(outbuffer + offset + 0) = (u_backward_speed.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_backward_speed.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_backward_speed.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_backward_speed.base >> (8 * 3)) & 0xFF;
      *(outbuffer + offset + 4) = (u_backward_speed.base >> (8 * 4)) & 0xFF;
      *(outbuffer + offset + 5) = (u_backward_speed.base >> (8 * 5)) & 0xFF;
      *(outbuffer + offset + 6) = (u_backward_speed.base >> (8 * 6)) & 0xFF;
      *(outbuffer + offset + 7) = (u_backward_speed.base >> (8 * 7)) & 0xFF;
      offset += sizeof(this->backward_speed);
      union {
        int64_t real;
        uint64_t base;
      } u_turning_right;
      u_turning_right.real = this->turning_right;
      *(outbuffer + offset + 0) = (u_turning_right.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_turning_right.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_turning_right.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_turning_right.base >> (8 * 3)) & 0xFF;
      *(outbuffer + offset + 4) = (u_turning_right.base >> (8 * 4)) & 0xFF;
      *(outbuffer + offset + 5) = (u_turning_right.base >> (8 * 5)) & 0xFF;
      *(outbuffer + offset + 6) = (u_turning_right.base >> (8 * 6)) & 0xFF;
      *(outbuffer + offset + 7) = (u_turning_right.base >> (8 * 7)) & 0xFF;
      offset += sizeof(this->turning_right);
      union {
        int64_t real;
        uint64_t base;
      } u_turning_left;
      u_turning_left.real = this->turning_left;
      *(outbuffer + offset + 0) = (u_turning_left.base >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (u_turning_left.base >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (u_turning_left.base >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (u_turning_left.base >> (8 * 3)) & 0xFF;
      *(outbuffer + offset + 4) = (u_turning_left.base >> (8 * 4)) & 0xFF;
      *(outbuffer + offset + 5) = (u_turning_left.base >> (8 * 5)) & 0xFF;
      *(outbuffer + offset + 6) = (u_turning_left.base >> (8 * 6)) & 0xFF;
      *(outbuffer + offset + 7) = (u_turning_left.base >> (8 * 7)) & 0xFF;
      offset += sizeof(this->turning_left);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      union {
        int64_t real;
        uint64_t base;
      } u_forward_speed;
      u_forward_speed.base = 0;
      u_forward_speed.base |= ((uint64_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_forward_speed.base |= ((uint64_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_forward_speed.base |= ((uint64_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_forward_speed.base |= ((uint64_t) (*(inbuffer + offset + 3))) << (8 * 3);
      u_forward_speed.base |= ((uint64_t) (*(inbuffer + offset + 4))) << (8 * 4);
      u_forward_speed.base |= ((uint64_t) (*(inbuffer + offset + 5))) << (8 * 5);
      u_forward_speed.base |= ((uint64_t) (*(inbuffer + offset + 6))) << (8 * 6);
      u_forward_speed.base |= ((uint64_t) (*(inbuffer + offset + 7))) << (8 * 7);
      this->forward_speed = u_forward_speed.real;
      offset += sizeof(this->forward_speed);
      union {
        int64_t real;
        uint64_t base;
      } u_backward_speed;
      u_backward_speed.base = 0;
      u_backward_speed.base |= ((uint64_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_backward_speed.base |= ((uint64_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_backward_speed.base |= ((uint64_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_backward_speed.base |= ((uint64_t) (*(inbuffer + offset + 3))) << (8 * 3);
      u_backward_speed.base |= ((uint64_t) (*(inbuffer + offset + 4))) << (8 * 4);
      u_backward_speed.base |= ((uint64_t) (*(inbuffer + offset + 5))) << (8 * 5);
      u_backward_speed.base |= ((uint64_t) (*(inbuffer + offset + 6))) << (8 * 6);
      u_backward_speed.base |= ((uint64_t) (*(inbuffer + offset + 7))) << (8 * 7);
      this->backward_speed = u_backward_speed.real;
      offset += sizeof(this->backward_speed);
      union {
        int64_t real;
        uint64_t base;
      } u_turning_right;
      u_turning_right.base = 0;
      u_turning_right.base |= ((uint64_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_turning_right.base |= ((uint64_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_turning_right.base |= ((uint64_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_turning_right.base |= ((uint64_t) (*(inbuffer + offset + 3))) << (8 * 3);
      u_turning_right.base |= ((uint64_t) (*(inbuffer + offset + 4))) << (8 * 4);
      u_turning_right.base |= ((uint64_t) (*(inbuffer + offset + 5))) << (8 * 5);
      u_turning_right.base |= ((uint64_t) (*(inbuffer + offset + 6))) << (8 * 6);
      u_turning_right.base |= ((uint64_t) (*(inbuffer + offset + 7))) << (8 * 7);
      this->turning_right = u_turning_right.real;
      offset += sizeof(this->turning_right);
      union {
        int64_t real;
        uint64_t base;
      } u_turning_left;
      u_turning_left.base = 0;
      u_turning_left.base |= ((uint64_t) (*(inbuffer + offset + 0))) << (8 * 0);
      u_turning_left.base |= ((uint64_t) (*(inbuffer + offset + 1))) << (8 * 1);
      u_turning_left.base |= ((uint64_t) (*(inbuffer + offset + 2))) << (8 * 2);
      u_turning_left.base |= ((uint64_t) (*(inbuffer + offset + 3))) << (8 * 3);
      u_turning_left.base |= ((uint64_t) (*(inbuffer + offset + 4))) << (8 * 4);
      u_turning_left.base |= ((uint64_t) (*(inbuffer + offset + 5))) << (8 * 5);
      u_turning_left.base |= ((uint64_t) (*(inbuffer + offset + 6))) << (8 * 6);
      u_turning_left.base |= ((uint64_t) (*(inbuffer + offset + 7))) << (8 * 7);
      this->turning_left = u_turning_left.real;
      offset += sizeof(this->turning_left);
     return offset;
    }

    const char * getType(){ return "auto_navi/try2"; };
    const char * getMD5(){ return "892f64bf0a5492a565a4134ba1936c83"; };

  };

}
#endif
