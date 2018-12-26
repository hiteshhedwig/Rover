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
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/hit_ter/rover_ws/src/mavros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/hit_ter/rover_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/hit_ter/rover_ws/install/lib/python2.7/dist-packages:/home/hit_ter/rover_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/hit_ter/rover_ws/build" \
    "/usr/bin/python" \
    "/home/hit_ter/rover_ws/src/mavros/setup.py" \
    build --build-base "/home/hit_ter/rover_ws/build/mavros" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/hit_ter/rover_ws/install" --install-scripts="/home/hit_ter/rover_ws/install/bin"
