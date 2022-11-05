# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dislam_msgs: 6 messages, 1 services")

set(MSG_I_FLAGS "-Idislam_msgs:/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dislam_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg" NAME_WE)
add_custom_target(_dislam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dislam_msgs" "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg" "geometry_msgs/Pose:sensor_msgs/Image:geometry_msgs/Quaternion:sensor_msgs/PointField:std_msgs/Header:geometry_msgs/Point:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg" NAME_WE)
add_custom_target(_dislam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dislam_msgs" "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg" NAME_WE)
add_custom_target(_dislam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dislam_msgs" "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:sensor_msgs/PointField:std_msgs/Header:geometry_msgs/Point:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg" NAME_WE)
add_custom_target(_dislam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dislam_msgs" "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:sensor_msgs/PointField:dislam_msgs/InterPR:std_msgs/Header:geometry_msgs/Point:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg" NAME_WE)
add_custom_target(_dislam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dislam_msgs" "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg" NAME_WE)
add_custom_target(_dislam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dislam_msgs" "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg" "geometry_msgs/Pose:geometry_msgs/Point:dislam_msgs/Loop:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv" NAME_WE)
add_custom_target(_dislam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dislam_msgs" "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dislam_msgs
)
_generate_msg_cpp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dislam_msgs
)
_generate_msg_cpp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dislam_msgs
)
_generate_msg_cpp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dislam_msgs
)
_generate_msg_cpp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dislam_msgs
)
_generate_msg_cpp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dislam_msgs
)

### Generating Services
_generate_srv_cpp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dislam_msgs
)

### Generating Module File
_generate_module_cpp(dislam_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dislam_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dislam_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dislam_msgs_generate_messages dislam_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_cpp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_cpp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_cpp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_cpp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_cpp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_cpp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_cpp _dislam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dislam_msgs_gencpp)
add_dependencies(dislam_msgs_gencpp dislam_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dislam_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dislam_msgs
)
_generate_msg_eus(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dislam_msgs
)
_generate_msg_eus(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dislam_msgs
)
_generate_msg_eus(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dislam_msgs
)
_generate_msg_eus(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dislam_msgs
)
_generate_msg_eus(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dislam_msgs
)

### Generating Services
_generate_srv_eus(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dislam_msgs
)

### Generating Module File
_generate_module_eus(dislam_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dislam_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dislam_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dislam_msgs_generate_messages dislam_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_eus _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_eus _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_eus _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_eus _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_eus _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_eus _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_eus _dislam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dislam_msgs_geneus)
add_dependencies(dislam_msgs_geneus dislam_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dislam_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dislam_msgs
)
_generate_msg_lisp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dislam_msgs
)
_generate_msg_lisp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dislam_msgs
)
_generate_msg_lisp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dislam_msgs
)
_generate_msg_lisp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dislam_msgs
)
_generate_msg_lisp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dislam_msgs
)

### Generating Services
_generate_srv_lisp(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dislam_msgs
)

### Generating Module File
_generate_module_lisp(dislam_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dislam_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dislam_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dislam_msgs_generate_messages dislam_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_lisp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_lisp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_lisp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_lisp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_lisp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_lisp _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_lisp _dislam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dislam_msgs_genlisp)
add_dependencies(dislam_msgs_genlisp dislam_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dislam_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dislam_msgs
)
_generate_msg_nodejs(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dislam_msgs
)
_generate_msg_nodejs(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dislam_msgs
)
_generate_msg_nodejs(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dislam_msgs
)
_generate_msg_nodejs(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dislam_msgs
)
_generate_msg_nodejs(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dislam_msgs
)

### Generating Services
_generate_srv_nodejs(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dislam_msgs
)

### Generating Module File
_generate_module_nodejs(dislam_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dislam_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dislam_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dislam_msgs_generate_messages dislam_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_nodejs _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_nodejs _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_nodejs _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_nodejs _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_nodejs _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_nodejs _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_nodejs _dislam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dislam_msgs_gennodejs)
add_dependencies(dislam_msgs_gennodejs dislam_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dislam_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs
)
_generate_msg_py(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs
)
_generate_msg_py(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs
)
_generate_msg_py(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs
)
_generate_msg_py(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs
)
_generate_msg_py(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs
)

### Generating Services
_generate_srv_py(dislam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs
)

### Generating Module File
_generate_module_py(dislam_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dislam_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dislam_msgs_generate_messages dislam_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/SubMap.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_py _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/DiSCO.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_py _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPR.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_py _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/InterPRs.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_py _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loop.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_py _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/msg/Loops.msg" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_py _dislam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/dislam_msgs/srv/GetInitMap.srv" NAME_WE)
add_dependencies(dislam_msgs_generate_messages_py _dislam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dislam_msgs_genpy)
add_dependencies(dislam_msgs_genpy dislam_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dislam_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dislam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dislam_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dislam_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(dislam_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dislam_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(dislam_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dislam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dislam_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dislam_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(dislam_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dislam_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(dislam_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dislam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dislam_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dislam_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(dislam_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dislam_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(dislam_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dislam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dislam_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dislam_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(dislam_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dislam_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(dislam_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs)
  install(CODE "execute_process(COMMAND \"/home/lusha/miniconda3/envs/rospy3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dislam_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dislam_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(dislam_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dislam_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(dislam_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
