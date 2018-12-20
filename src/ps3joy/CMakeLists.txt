# http://ros.org/doc/groovy/api/catkin/html/user_guide/supposed.html
cmake_minimum_required(VERSION 2.8.3)
project(ps3joy)

find_package(PkgConfig REQUIRED)
pkg_search_module(LIBUSB REQUIRED libusb)
if(LIBUSB_FOUND)
  include_directories(SYSTEM ${LIBUSB_INCLUDE_DIRS})
  link_directories(${LIBUSB_LIBRARY_DIRS})
else()
  message( FATAL_ERROR "Failed to find libusb" )
endif(LIBUSB_FOUND)

# Load catkin and all dependencies required for this package
set(CATKIN_DEPS diagnostic_msgs std_msgs sensor_msgs rospy rosgraph message_generation)
find_package(catkin REQUIRED COMPONENTS 
      ${CATKIN_DEPS}
      
)
#find_package(catkin REQUIRED COMPONENTS
 # message_generation
#)
#catkin_package(CATKIN_DEPENDS  ${CATKIN_DEPS} message_runtime
#)
add_message_files(
   FILES
#   gps_data.msg
   try2.msg
 )

generate_messages(
   DEPENDENCIES
   std_msgs
 )
catkin_package(
#  INCLUDE_DIRS include
  LIBRARIES ps3joy
  CATKIN_DEPENDS diagnostic_msgs std_msgs sensor_msgs rospy rosgraph message_runtime
#  DEPENDS system_lib
)





include_directories(${catkin_INCLUDE_DIRS})
add_executable(sixpair src/sixpair.c)
target_link_libraries(sixpair -lusb ${catkin_LIBRARIES})

# Install targets
install(TARGETS sixpair
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
  )

install(DIRECTORY launch 
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
  )

install(FILES diagnostics.yaml
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
  )

install(PROGRAMS scripts/ps3joy.py scripts/ps3joy_node.py scripts/ps3joysim.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
  )
