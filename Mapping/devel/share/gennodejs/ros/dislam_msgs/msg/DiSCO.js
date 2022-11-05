// Auto-generated. Do not edit!

// (in-package dislam_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DiSCO {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.fftr = null;
      this.ffti = null;
      this.signature = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('fftr')) {
        this.fftr = initObj.fftr
      }
      else {
        this.fftr = [];
      }
      if (initObj.hasOwnProperty('ffti')) {
        this.ffti = initObj.ffti
      }
      else {
        this.ffti = [];
      }
      if (initObj.hasOwnProperty('signature')) {
        this.signature = initObj.signature
      }
      else {
        this.signature = [];
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DiSCO
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [fftr]
    bufferOffset = _arraySerializer.float32(obj.fftr, buffer, bufferOffset, null);
    // Serialize message field [ffti]
    bufferOffset = _arraySerializer.float32(obj.ffti, buffer, bufferOffset, null);
    // Serialize message field [signature]
    bufferOffset = _arraySerializer.float32(obj.signature, buffer, bufferOffset, null);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DiSCO
    let len;
    let data = new DiSCO(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [fftr]
    data.fftr = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ffti]
    data.ffti = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [signature]
    data.signature = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.fftr.length;
    length += 4 * object.ffti.length;
    length += 4 * object.signature.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dislam_msgs/DiSCO';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd3b54ec90639aa0f312784272d40b050';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    float32[] fftr 
    float32[] ffti 
    float32[] signature
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
    const resolved = new DiSCO(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.fftr !== undefined) {
      resolved.fftr = msg.fftr;
    }
    else {
      resolved.fftr = []
    }

    if (msg.ffti !== undefined) {
      resolved.ffti = msg.ffti;
    }
    else {
      resolved.ffti = []
    }

    if (msg.signature !== undefined) {
      resolved.signature = msg.signature;
    }
    else {
      resolved.signature = []
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = DiSCO;
