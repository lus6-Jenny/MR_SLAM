// Auto-generated. Do not edit!

// (in-package pyslam_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Loop {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id0 = null;
      this.id1 = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('id0')) {
        this.id0 = initObj.id0
      }
      else {
        this.id0 = [];
      }
      if (initObj.hasOwnProperty('id1')) {
        this.id1 = initObj.id1
      }
      else {
        this.id1 = [];
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
    // Serializes a message object of type Loop
    // Serialize message field [id0]
    bufferOffset = _arraySerializer.int64(obj.id0, buffer, bufferOffset, null);
    // Serialize message field [id1]
    bufferOffset = _arraySerializer.int64(obj.id1, buffer, bufferOffset, null);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Loop
    let len;
    let data = new Loop(null);
    // Deserialize message field [id0]
    data.id0 = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [id1]
    data.id1 = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.id0.length;
    length += 8 * object.id1.length;
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pyslam_msgs/Loop';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36672ea1b2db4ae845d4fdab55058cb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64[]  id0
    int64[]  id1
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
    const resolved = new Loop(null);
    if (msg.id0 !== undefined) {
      resolved.id0 = msg.id0;
    }
    else {
      resolved.id0 = []
    }

    if (msg.id1 !== undefined) {
      resolved.id1 = msg.id1;
    }
    else {
      resolved.id1 = []
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

module.exports = Loop;
