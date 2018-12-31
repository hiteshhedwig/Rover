// Auto-generated. Do not edit!

// (in-package auto_navi.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class try2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.forward_speed = null;
      this.backward_speed = null;
      this.turning_right = null;
      this.turning_left = null;
    }
    else {
      if (initObj.hasOwnProperty('forward_speed')) {
        this.forward_speed = initObj.forward_speed
      }
      else {
        this.forward_speed = 0;
      }
      if (initObj.hasOwnProperty('backward_speed')) {
        this.backward_speed = initObj.backward_speed
      }
      else {
        this.backward_speed = 0;
      }
      if (initObj.hasOwnProperty('turning_right')) {
        this.turning_right = initObj.turning_right
      }
      else {
        this.turning_right = 0;
      }
      if (initObj.hasOwnProperty('turning_left')) {
        this.turning_left = initObj.turning_left
      }
      else {
        this.turning_left = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type try2
    // Serialize message field [forward_speed]
    bufferOffset = _serializer.int64(obj.forward_speed, buffer, bufferOffset);
    // Serialize message field [backward_speed]
    bufferOffset = _serializer.int64(obj.backward_speed, buffer, bufferOffset);
    // Serialize message field [turning_right]
    bufferOffset = _serializer.int64(obj.turning_right, buffer, bufferOffset);
    // Serialize message field [turning_left]
    bufferOffset = _serializer.int64(obj.turning_left, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type try2
    let len;
    let data = new try2(null);
    // Deserialize message field [forward_speed]
    data.forward_speed = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [backward_speed]
    data.backward_speed = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [turning_right]
    data.turning_right = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [turning_left]
    data.turning_left = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_navi/try2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '892f64bf0a5492a565a4134ba1936c83';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 forward_speed
    int64 backward_speed
    int64 turning_right
    int64 turning_left
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new try2(null);
    if (msg.forward_speed !== undefined) {
      resolved.forward_speed = msg.forward_speed;
    }
    else {
      resolved.forward_speed = 0
    }

    if (msg.backward_speed !== undefined) {
      resolved.backward_speed = msg.backward_speed;
    }
    else {
      resolved.backward_speed = 0
    }

    if (msg.turning_right !== undefined) {
      resolved.turning_right = msg.turning_right;
    }
    else {
      resolved.turning_right = 0
    }

    if (msg.turning_left !== undefined) {
      resolved.turning_left = msg.turning_left;
    }
    else {
      resolved.turning_left = 0
    }

    return resolved;
    }
};

module.exports = try2;
