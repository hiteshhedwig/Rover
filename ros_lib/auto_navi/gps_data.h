#ifndef _ROS_auto_navi_gps_data_h
#define _ROS_auto_navi_gps_data_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace auto_navi
{

  class gps_data : public ros::Msg
  {
    public:
      typedef float _x_type;
      _x_type x;
      typedef float _y_type;
      _y_type y;

    gps_data():
      x(0),
      y(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += serializeAvrFloat64(outbuffer + offset, this->x);
      offset += serializeAvrFloat64(outbuffer + offset, this->y);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->x));
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->y));
     return offset;
    }

    const char * getType(){ return "auto_navi/gps_data"; };
    const char * getMD5(){ return "209f516d3eb691f0663e25cb750d67c1"; };

  };

}
#endif
