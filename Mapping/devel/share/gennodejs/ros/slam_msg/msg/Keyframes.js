// Auto-generated. Do not edit!

// (in-package slam_msg.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Keyframe = require('./Keyframe.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Keyframes {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.keyframes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('keyframes')) {
        this.keyframes = initObj.keyframes
      }
      else {
        this.keyframes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Keyframes
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [keyframes]
    // Serialize the length for message field [keyframes]
    bufferOffset = _serializer.uint32(obj.keyframes.length, buffer, bufferOffset);
    obj.keyframes.forEach((val) => {
      bufferOffset = Keyframe.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Keyframes
    let len;
    let data = new Keyframes(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [keyframes]
    // Deserialize array length for message field [keyframes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.keyframes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.keyframes[i] = Keyframe.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 44 * object.keyframes.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'slam_msg/Keyframes';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4a320307c3c27d6044230b27f893913';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Keyframe[] keyframes
    
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
    string frame_id
    
    ================================================================================
    MSG: slam_msg/Keyframe
    int32 id
    float64[3] position
    float32[4] rotation
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Keyframes(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.keyframes !== undefined) {
      resolved.keyframes = new Array(msg.keyframes.length);
      for (let i = 0; i < resolved.keyframes.length; ++i) {
        resolved.keyframes[i] = Keyframe.Resolve(msg.keyframes[i]);
      }
    }
    else {
      resolved.keyframes = []
    }

    return resolved;
    }
};

module.exports = Keyframes;
