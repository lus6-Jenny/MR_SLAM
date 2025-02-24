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
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class SubMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.submap = null;
      this.keyframePC = null;
      this.orthoImage = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('submap')) {
        this.submap = initObj.submap
      }
      else {
        this.submap = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('keyframePC')) {
        this.keyframePC = initObj.keyframePC
      }
      else {
        this.keyframePC = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('orthoImage')) {
        this.orthoImage = initObj.orthoImage
      }
      else {
        this.orthoImage = new sensor_msgs.msg.Image();
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
    // Serializes a message object of type SubMap
    // Serialize message field [submap]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.submap, buffer, bufferOffset);
    // Serialize message field [keyframePC]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.keyframePC, buffer, bufferOffset);
    // Serialize message field [orthoImage]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.orthoImage, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SubMap
    let len;
    let data = new SubMap(null);
    // Deserialize message field [submap]
    data.submap = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [keyframePC]
    data.keyframePC = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [orthoImage]
    data.orthoImage = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.submap);
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.keyframePC);
    length += sensor_msgs.msg.Image.getMessageSize(object.orthoImage);
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dislam_msgs/SubMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8f4d32838c028357c1260b3cf28a86d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2 submap
    sensor_msgs/PointCloud2 keyframePC
    sensor_msgs/Image orthoImage
    geometry_msgs/Pose pose
    
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
    
    ================================================================================
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
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
    const resolved = new SubMap(null);
    if (msg.submap !== undefined) {
      resolved.submap = sensor_msgs.msg.PointCloud2.Resolve(msg.submap)
    }
    else {
      resolved.submap = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.keyframePC !== undefined) {
      resolved.keyframePC = sensor_msgs.msg.PointCloud2.Resolve(msg.keyframePC)
    }
    else {
      resolved.keyframePC = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.orthoImage !== undefined) {
      resolved.orthoImage = sensor_msgs.msg.Image.Resolve(msg.orthoImage)
    }
    else {
      resolved.orthoImage = new sensor_msgs.msg.Image()
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

module.exports = SubMap;
