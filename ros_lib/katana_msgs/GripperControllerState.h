#ifndef _ROS_katana_msgs_GripperControllerState_h
#define _ROS_katana_msgs_GripperControllerState_h

#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include "ros/msg.h"
#include "std_msgs/Header.h"

namespace katana_msgs
{

  class GripperControllerState : public ros::Msg
  {
    public:
      typedef std_msgs::Header _header_type;
      _header_type header;
      uint32_t name_length;
      typedef char* _name_type;
      _name_type st_name;
      _name_type * name;
      uint32_t actual_length;
      typedef float _actual_type;
      _actual_type st_actual;
      _actual_type * actual;
      uint32_t desired_length;
      typedef float _desired_type;
      _desired_type st_desired;
      _desired_type * desired;
      uint32_t error_length;
      typedef float _error_type;
      _error_type st_error;
      _error_type * error;

    GripperControllerState():
      header(),
      name_length(0), name(NULL),
      actual_length(0), actual(NULL),
      desired_length(0), desired(NULL),
      error_length(0), error(NULL)
    {
    }

    virtual int serialize(unsigned char *outbuffer) const
    {
      int offset = 0;
      offset += this->header.serialize(outbuffer + offset);
      *(outbuffer + offset + 0) = (this->name_length >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->name_length >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->name_length >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->name_length >> (8 * 3)) & 0xFF;
      offset += sizeof(this->name_length);
      for( uint32_t i = 0; i < name_length; i++){
      uint32_t length_namei = strlen(this->name[i]);
      varToArr(outbuffer + offset, length_namei);
      offset += 4;
      memcpy(outbuffer + offset, this->name[i], length_namei);
      offset += length_namei;
      }
      *(outbuffer + offset + 0) = (this->actual_length >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->actual_length >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->actual_length >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->actual_length >> (8 * 3)) & 0xFF;
      offset += sizeof(this->actual_length);
      for( uint32_t i = 0; i < actual_length; i++){
      offset += serializeAvrFloat64(outbuffer + offset, this->actual[i]);
      }
      *(outbuffer + offset + 0) = (this->desired_length >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->desired_length >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->desired_length >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->desired_length >> (8 * 3)) & 0xFF;
      offset += sizeof(this->desired_length);
      for( uint32_t i = 0; i < desired_length; i++){
      offset += serializeAvrFloat64(outbuffer + offset, this->desired[i]);
      }
      *(outbuffer + offset + 0) = (this->error_length >> (8 * 0)) & 0xFF;
      *(outbuffer + offset + 1) = (this->error_length >> (8 * 1)) & 0xFF;
      *(outbuffer + offset + 2) = (this->error_length >> (8 * 2)) & 0xFF;
      *(outbuffer + offset + 3) = (this->error_length >> (8 * 3)) & 0xFF;
      offset += sizeof(this->error_length);
      for( uint32_t i = 0; i < error_length; i++){
      offset += serializeAvrFloat64(outbuffer + offset, this->error[i]);
      }
      return offset;
    }

    virtual int deserialize(unsigned char *inbuffer)
    {
      int offset = 0;
      offset += this->header.deserialize(inbuffer + offset);
      uint32_t name_lengthT = ((uint32_t) (*(inbuffer + offset))); 
      name_lengthT |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1); 
      name_lengthT |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2); 
      name_lengthT |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3); 
      offset += sizeof(this->name_length);
      if(name_lengthT > name_length)
        this->name = (char**)realloc(this->name, name_lengthT * sizeof(char*));
      name_length = name_lengthT;
      for( uint32_t i = 0; i < name_length; i++){
      uint32_t length_st_name;
      arrToVar(length_st_name, (inbuffer + offset));
      offset += 4;
      for(unsigned int k= offset; k< offset+length_st_name; ++k){
          inbuffer[k-1]=inbuffer[k];
      }
      inbuffer[offset+length_st_name-1]=0;
      this->st_name = (char *)(inbuffer + offset-1);
      offset += length_st_name;
        memcpy( &(this->name[i]), &(this->st_name), sizeof(char*));
      }
      uint32_t actual_lengthT = ((uint32_t) (*(inbuffer + offset))); 
      actual_lengthT |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1); 
      actual_lengthT |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2); 
      actual_lengthT |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3); 
      offset += sizeof(this->actual_length);
      if(actual_lengthT > actual_length)
        this->actual = (float*)realloc(this->actual, actual_lengthT * sizeof(float));
      actual_length = actual_lengthT;
      for( uint32_t i = 0; i < actual_length; i++){
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->st_actual));
        memcpy( &(this->actual[i]), &(this->st_actual), sizeof(float));
      }
      uint32_t desired_lengthT = ((uint32_t) (*(inbuffer + offset))); 
      desired_lengthT |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1); 
      desired_lengthT |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2); 
      desired_lengthT |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3); 
      offset += sizeof(this->desired_length);
      if(desired_lengthT > desired_length)
        this->desired = (float*)realloc(this->desired, desired_lengthT * sizeof(float));
      desired_length = desired_lengthT;
      for( uint32_t i = 0; i < desired_length; i++){
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->st_desired));
        memcpy( &(this->desired[i]), &(this->st_desired), sizeof(float));
      }
      uint32_t error_lengthT = ((uint32_t) (*(inbuffer + offset))); 
      error_lengthT |= ((uint32_t) (*(inbuffer + offset + 1))) << (8 * 1); 
      error_lengthT |= ((uint32_t) (*(inbuffer + offset + 2))) << (8 * 2); 
      error_lengthT |= ((uint32_t) (*(inbuffer + offset + 3))) << (8 * 3); 
      offset += sizeof(this->error_length);
      if(error_lengthT > error_length)
        this->error = (float*)realloc(this->error, error_lengthT * sizeof(float));
      error_length = error_lengthT;
      for( uint32_t i = 0; i < error_length; i++){
      offset += deserializeAvrFloat64(inbuffer + offset, &(this->st_error));
        memcpy( &(this->error[i]), &(this->st_error), sizeof(float));
      }
     return offset;
    }

    const char * getType(){ return "katana_msgs/GripperControllerState"; };
    const char * getMD5(){ return "57ba9ed166f48062eddf3c6e509f2dc0"; };

  };

}
#endif
