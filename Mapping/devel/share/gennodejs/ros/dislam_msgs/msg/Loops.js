// Auto-generated. Do not edit!

// (in-package dislam_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Loop = require('./Loop.js');

//-----------------------------------------------------------

class Loops {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Loops = null;
    }
    else {
      if (initObj.hasOwnProperty('Loops')) {
        this.Loops = initObj.Loops
      }
      else {
        this.Loops = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Loops
    // Serialize message field [Loops]
    // Serialize the length for message field [Loops]
    bufferOffset = _serializer.uint32(obj.Loops.length, buffer, bufferOffset);
    obj.Loops.forEach((val) => {
      bufferOffset = Loop.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Loops
    let len;
    let data = new Loops(null);
    // Deserialize message field [Loops]
    // Deserialize array length for message field [Loops]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Loops = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Loops[i] = Loop.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 72 * object.Loops.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dislam_msgs/Loops';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '98d0c6cc3ee49f9066dc90163982613f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Loop[] Loops
    ================================================================================
    MSG: dislam_msgs/Loop
    int64 id0
    int64 id1
    geometry_msgs/Pose pose
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Loops(null);
    if (msg.Loops !== undefined) {
      resolved.Loops = new Array(msg.Loops.length);
      for (let i = 0; i < resolved.Loops.length; ++i) {
        resolved.Loops[i] = Loop.Resolve(msg.Loops[i]);
      }
    }
    else {
      resolved.Loops = []
    }

    return resolved;
    }
};

module.exports = Loops;
