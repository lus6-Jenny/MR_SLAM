#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/lusha/github/MR_SLAM/LoopDetection/src/geometry2/tf2_geometry_msgs"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/lusha/github/MR_SLAM/LoopDetection/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/lusha/github/MR_SLAM/LoopDetection/install/lib/python3/dist-packages:/home/lusha/github/MR_SLAM/LoopDetection/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/lusha/github/MR_SLAM/LoopDetection/build" \
    "/home/lusha/miniconda3/envs/rospy3/bin/python3" \
    "/home/lusha/github/MR_SLAM/LoopDetection/src/geometry2/tf2_geometry_msgs/setup.py" \
    egg_info --egg-base /home/lusha/github/MR_SLAM/LoopDetection/build/geometry2/tf2_geometry_msgs \
    build --build-base "/home/lusha/github/MR_SLAM/LoopDetection/build/geometry2/tf2_geometry_msgs" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/lusha/github/MR_SLAM/LoopDetection/install" --install-scripts="/home/lusha/github/MR_SLAM/LoopDetection/install/bin"
