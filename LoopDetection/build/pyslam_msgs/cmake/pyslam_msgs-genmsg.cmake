# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "pyslam_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ipyslam_msgs:/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/melodic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(pyslam_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg" NAME_WE)
add_custom_target(_pyslam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pyslam_msgs" "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg" NAME_WE)
add_custom_target(_pyslam_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "pyslam_msgs" "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:sensor_msgs/PointCloud2:sensor_msgs/PointField:sensor_msgs/Image:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(pyslam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pyslam_msgs
)
_generate_msg_cpp(pyslam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pyslam_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(pyslam_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pyslam_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(pyslam_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(pyslam_msgs_generate_messages pyslam_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg" NAME_WE)
add_dependencies(pyslam_msgs_generate_messages_cpp _pyslam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg" NAME_WE)
add_dependencies(pyslam_msgs_generate_messages_cpp _pyslam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pyslam_msgs_gencpp)
add_dependencies(pyslam_msgs_gencpp pyslam_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pyslam_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(pyslam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pyslam_msgs
)
_generate_msg_eus(pyslam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pyslam_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(pyslam_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pyslam_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(pyslam_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(pyslam_msgs_generate_messages pyslam_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg" NAME_WE)
add_dependencies(pyslam_msgs_generate_messages_eus _pyslam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg" NAME_WE)
add_dependencies(pyslam_msgs_generate_messages_eus _pyslam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pyslam_msgs_geneus)
add_dependencies(pyslam_msgs_geneus pyslam_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pyslam_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(pyslam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pyslam_msgs
)
_generate_msg_lisp(pyslam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pyslam_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(pyslam_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pyslam_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(pyslam_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(pyslam_msgs_generate_messages pyslam_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg" NAME_WE)
add_dependencies(pyslam_msgs_generate_messages_lisp _pyslam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg" NAME_WE)
add_dependencies(pyslam_msgs_generate_messages_lisp _pyslam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pyslam_msgs_genlisp)
add_dependencies(pyslam_msgs_genlisp pyslam_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pyslam_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(pyslam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pyslam_msgs
)
_generate_msg_nodejs(pyslam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pyslam_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(pyslam_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pyslam_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(pyslam_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(pyslam_msgs_generate_messages pyslam_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg" NAME_WE)
add_dependencies(pyslam_msgs_generate_messages_nodejs _pyslam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg" NAME_WE)
add_dependencies(pyslam_msgs_generate_messages_nodejs _pyslam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pyslam_msgs_gennodejs)
add_dependencies(pyslam_msgs_gennodejs pyslam_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pyslam_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(pyslam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyslam_msgs
)
_generate_msg_py(pyslam_msgs
  "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyslam_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(pyslam_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyslam_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(pyslam_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(pyslam_msgs_generate_messages pyslam_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/Loop.msg" NAME_WE)
add_dependencies(pyslam_msgs_generate_messages_py _pyslam_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lusha/github/MR_SLAM/LoopDetection/src/pyslam_msgs/msg/SubMap.msg" NAME_WE)
add_dependencies(pyslam_msgs_generate_messages_py _pyslam_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(pyslam_msgs_genpy)
add_dependencies(pyslam_msgs_genpy pyslam_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS pyslam_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pyslam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/pyslam_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(pyslam_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(pyslam_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(pyslam_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(pyslam_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pyslam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/pyslam_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(pyslam_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(pyslam_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(pyslam_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(pyslam_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pyslam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/pyslam_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(pyslam_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(pyslam_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(pyslam_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(pyslam_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pyslam_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/pyslam_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(pyslam_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(pyslam_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(pyslam_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(pyslam_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyslam_msgs)
  install(CODE "execute_process(COMMAND \"/home/lusha/miniconda3/envs/rospy3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyslam_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/pyslam_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(pyslam_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(pyslam_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(pyslam_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(pyslam_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
