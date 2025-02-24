// Auto-generated. Do not edit!

// (in-package dislam_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class InterPR {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id0 = null;
      this.id1 = null;
      this.isAerial = null;
      this.isChecked = null;
      this.id0Pose = null;
      this.factorPose = null;
      this.keyframe = null;
    }
    else {
      if (initObj.hasOwnProperty('id0')) {
        this.id0 = initObj.id0
      }
      else {
        this.id0 = 0;
      }
      if (initObj.hasOwnProperty('id1')) {
        this.id1 = initObj.id1
      }
      else {
        this.id1 = 0;
      }
      if (initObj.hasOwnProperty('isAerial')) {
        this.isAerial = initObj.isAerial
      }
      else {
        this.isAerial = false;
      }
      if (initObj.hasOwnProperty('isChecked')) {
        this.isChecked = initObj.isChecked
      }
      else {
        this.isChecked = false;
      }
      if (initObj.hasOwnProperty('id0Pose')) {
        this.id0Pose = initObj.id0Pose
      }
      else {
        this.id0Pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('factorPose')) {
        this.factorPose = initObj.factorPose
      }
      else {
        this.factorPose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('keyframe')) {
        this.keyframe = initObj.keyframe
      }
      else {
        this.keyframe = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InterPR
    // Serialize message field [id0]
    bufferOffset = _serializer.int64(obj.id0, buffer, bufferOffset);
    // Serialize message field [id1]
    bufferOffset = _serializer.int64(obj.id1, buffer, bufferOffset);
    // Serialize message field [isAerial]
    bufferOffset = _serializer.bool(obj.isAerial, buffer, bufferOffset);
    // Serialize message field [isChecked]
    bufferOffset = _serializer.bool(obj.isChecked, buffer, bufferOffset);
    // Serialize message field [id0Pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.id0Pose, buffer, bufferOffset);
    // Serialize message field [factorPose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.factorPose, buffer, bufferOffset);
    // Serialize message field [keyframe]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.keyframe, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InterPR
    let len;
    let data = new InterPR(null);
    // Deserialize message field [id0]
    data.id0 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [id1]
    data.id1 = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [isAerial]
    data.isAerial = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [isChecked]
    data.isChecked = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id0Pose]
    data.id0Pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [factorPose]
    data.factorPose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [keyframe]
    data.keyframe = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.keyframe);
    return length + 130;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dislam_msgs/InterPR';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b4beb7f05ebd7c0cec036a4e93d3373';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 id0
    int64 id1
    bool isAerial
    bool isChecked
    geometry_msgs/Pose id0Pose
    geometry_msgs/Pose factorPose
    sensor_msgs/PointCloud2 keyframe
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
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
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
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InterPR(null);
    if (msg.id0 !== undefined) {
      resolved.id0 = msg.id0;
    }
    else {
      resolved.id0 = 0
    }

    if (msg.id1 !== undefined) {
      resolved.id1 = msg.id1;
    }
    else {
      resolved.id1 = 0
    }

    if (msg.isAerial !== undefined) {
      resolved.isAerial = msg.isAerial;
    }
    else {
      resolved.isAerial = false
    }

    if (msg.isChecked !== undefined) {
      resolved.isChecked = msg.isChecked;
    }
    else {
      resolved.isChecked = false
    }

    if (msg.id0Pose !== undefined) {
      resolved.id0Pose = geometry_msgs.msg.Pose.Resolve(msg.id0Pose)
    }
    else {
      resolved.id0Pose = new geometry_msgs.msg.Pose()
    }

    if (msg.factorPose !== undefined) {
      resolved.factorPose = geometry_msgs.msg.Pose.Resolve(msg.factorPose)
    }
    else {
      resolved.factorPose = new geometry_msgs.msg.Pose()
    }

    if (msg.keyframe !== undefined) {
      resolved.keyframe = sensor_msgs.msg.PointCloud2.Resolve(msg.keyframe)
    }
    else {
      resolved.keyframe = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

module.exports = InterPR;
