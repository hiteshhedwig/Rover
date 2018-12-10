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

class try1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cX = null;
      this.cY = null;
    }
    else {
      if (initObj.hasOwnProperty('cX')) {
        this.cX = initObj.cX
      }
      else {
        this.cX = 0.0;
      }
      if (initObj.hasOwnProperty('cY')) {
        this.cY = initObj.cY
      }
      else {
        this.cY = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type try1
    // Serialize message field [cX]
    bufferOffset = _serializer.float64(obj.cX, buffer, bufferOffset);
    // Serialize message field [cY]
    bufferOffset = _serializer.float64(obj.cY, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type try1
    let len;
    let data = new try1(null);
    // Deserialize message field [cX]
    data.cX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cY]
    data.cY = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'auto_navi/try1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd466dd2a275f04fea16b85b9a5cea50';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 cX
    float64 cY
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new try1(null);
    if (msg.cX !== undefined) {
      resolved.cX = msg.cX;
    }
    else {
      resolved.cX = 0.0
    }

    if (msg.cY !== undefined) {
      resolved.cY = msg.cY;
    }
    else {
      resolved.cY = 0.0
    }

    return resolved;
    }
};

module.exports = try1;
