#ifndef _ROS_auto_navi_try3_h
#define _ROS_auto_navi_try3_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"

namespace auto_navi
{

  class try3 : public ros::Msg
  {
    public:
      typedef float _lat_type;
      _lat_type lat;
      typedef float _long_type;
      _long_type long;
      typedef float _X_type;
      _X_type X;
      typedef float _Y_type;
      _Y_type Y;

    try3():
      lat(0),
      long(0),
      X(0),
      Y(0)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += serializeAvrFloat64(outbuffer + offset, this->lat);
      offset += serializeAvrFloat64(outbuffer + offset, this->long);
      offset += serializeAvrFloat64(outbuffer + offset, this->X);
      offset += serializeAvrFloat64(outbuffer + offset, this->Y);
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->lat));
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->long));
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->X));
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->Y));
     return offset;
    }

    const char * getType(){ return "auto_navi/try3"; };
    const char * getMD5(){ return "d1aba966ad6a1f4a1f3e7976f86d20de"; };

  };

}
#endif
