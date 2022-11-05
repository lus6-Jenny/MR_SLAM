# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "grid_map_core;grid_map_ros;grid_map_msgs;pcl_ros;slam_msg;roscpp;message_filters;sensor_msgs;std_msgs;tf;tf_conversions;eigen_conversions;kindr;kindr_ros;pcl_ros".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lelevation_mapping_library;/usr/lib/x86_64-linux-gnu/libboost_system.so".split(';') if "-lelevation_mapping_library;/usr/lib/x86_64-linux-gnu/libboost_system.so" != "" else []
PROJECT_NAME = "elevation_mapping"
PROJECT_SPACE_DIR = "/home/lusha/github/MR_SLAM/Mapping/install"
PROJECT_VERSION = "0.4.0"
