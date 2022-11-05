# -*- coding: utf-8 -*-
from __future__ import print_function

import os
import stat
import sys

# find the import for catkin's python package - either from source space or from an installed underlay
if os.path.exists(os.path.join('/opt/ros/melodic/share/catkin/cmake', 'catkinConfig.cmake.in')):
    sys.path.insert(0, os.path.join('/opt/ros/melodic/share/catkin/cmake', '..', 'python'))
try:
    from catkin.environment_cache import generate_environment_script
except ImportError:
    # search for catkin package in all workspaces and prepend to path
    for workspace in '/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf_conversions;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf2_tools;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf2_sensor_msgs;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/test_tf2;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf2_kdl;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf2_geometry_msgs;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf2_ros;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf2_py;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf2_eigen;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf2_bullet;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf2;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/tf2_msgs;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/kdl_conversions;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/geometry2;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/geometry;/home/lusha/miniconda3/envs/rospy3/catkin_ws/devel_isolated/eigen_conversions;/opt/ros/melodic'.split(';'):
        python_path = os.path.join(workspace, 'lib/python2.7/dist-packages')
        if os.path.isdir(os.path.join(python_path, 'catkin')):
            sys.path.insert(0, python_path)
            break
    from catkin.environment_cache import generate_environment_script

code = generate_environment_script('/home/lusha/github/MR_SLAM/Localization/devel/env.sh')

output_filename = '/home/lusha/github/MR_SLAM/Localization/build/catkin_generated/setup_cached.sh'
with open(output_filename, 'w') as f:
    # print('Generate script for cached setup "%s"' % output_filename)
    f.write('\n'.join(code))

mode = os.stat(output_filename).st_mode
os.chmod(output_filename, mode | stat.S_IXUSR)
