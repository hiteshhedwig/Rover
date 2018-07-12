// Auto-generated. Do not edit!

// (in-package katana_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GripperControllerState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.actual = null;
      this.desired = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('actual')) {
        this.actual = initObj.actual
      }
      else {
        this.actual = [];
      }
      if (initObj.hasOwnProperty('desired')) {
        this.desired = initObj.desired
      }
      else {
        this.desired = [];
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GripperControllerState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [actual]
    bufferOffset = _arraySerializer.float64(obj.actual, buffer, bufferOffset, null);
    // Serialize message field [desired]
    bufferOffset = _arraySerializer.float64(obj.desired, buffer, bufferOffset, null);
    // Serialize message field [error]
    bufferOffset = _arraySerializer.float64(obj.error, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GripperControllerState
    let len;
    let data = new GripperControllerState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [actual]
    data.actual = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [desired]
    data.desired = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [error]
    data.error = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.actual.length;
    length += 8 * object.desired.length;
    length += 8 * object.error.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'katana_msgs/GripperControllerState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '57ba9ed166f48062eddf3c6e509f2dc0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The actual and desired angles (in radian) of the gripper joints, 
    # and the error between actual and desired.
    #
    # Each joint is uniquely identified by its name.
    #
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    #
    # All arrays in this message should have the same size.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    Header header
    
    string[] name
    float64[] actual
    float64[] desired
    float64[] error
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GripperControllerState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.actual !== undefined) {
      resolved.actual = msg.actual;
    }
    else {
      resolved.actual = []
    }

    if (msg.desired !== undefined) {
      resolved.desired = msg.desired;
    }
    else {
      resolved.desired = []
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = []
    }

    return resolved;
    }
};

module.exports = GripperControllerState;
