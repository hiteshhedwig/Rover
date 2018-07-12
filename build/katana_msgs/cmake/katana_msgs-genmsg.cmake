# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "katana_msgs: 8 messages, 0 services")

set(MSG_I_FLAGS "-Ikatana_msgs:/home/hit_ter/rover_ws/src/katana_msgs/msg;-Ikatana_msgs:/home/hit_ter/rover_ws/devel/share/katana_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(katana_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg" NAME_WE)
add_custom_target(_katana_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "katana_msgs" "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg" ""
)

get_filename_component(_filename "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg" NAME_WE)
add_custom_target(_katana_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "katana_msgs" "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg" NAME_WE)
add_custom_target(_katana_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "katana_msgs" "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:katana_msgs/JointMovementResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg" NAME_WE)
add_custom_target(_katana_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "katana_msgs" "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg" "actionlib_msgs/GoalID:std_msgs/Header:katana_msgs/JointMovementActionResult:katana_msgs/JointMovementGoal:katana_msgs/JointMovementFeedback:katana_msgs/JointMovementActionGoal:sensor_msgs/JointState:katana_msgs/JointMovementActionFeedback:katana_msgs/JointMovementResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg" NAME_WE)
add_custom_target(_katana_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "katana_msgs" "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg" "sensor_msgs/JointState:std_msgs/Header"
)

get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg" NAME_WE)
add_custom_target(_katana_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "katana_msgs" "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg" "katana_msgs/JointMovementFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg" NAME_WE)
add_custom_target(_katana_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "katana_msgs" "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg" ""
)

get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg" NAME_WE)
add_custom_target(_katana_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "katana_msgs" "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg" "actionlib_msgs/GoalID:katana_msgs/JointMovementGoal:std_msgs/Header:sensor_msgs/JointState"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs
)
_generate_msg_cpp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs
)
_generate_msg_cpp(katana_msgs
  "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs
)
_generate_msg_cpp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs
)
_generate_msg_cpp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs
)
_generate_msg_cpp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs
)
_generate_msg_cpp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs
)
_generate_msg_cpp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(katana_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(katana_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(katana_msgs_generate_messages katana_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_cpp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_cpp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_cpp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_cpp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_cpp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_cpp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_cpp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_cpp _katana_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(katana_msgs_gencpp)
add_dependencies(katana_msgs_gencpp katana_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS katana_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs
)
_generate_msg_eus(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs
)
_generate_msg_eus(katana_msgs
  "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs
)
_generate_msg_eus(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs
)
_generate_msg_eus(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs
)
_generate_msg_eus(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs
)
_generate_msg_eus(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs
)
_generate_msg_eus(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(katana_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(katana_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(katana_msgs_generate_messages katana_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_eus _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_eus _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_eus _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_eus _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_eus _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_eus _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_eus _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_eus _katana_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(katana_msgs_geneus)
add_dependencies(katana_msgs_geneus katana_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS katana_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs
)
_generate_msg_lisp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs
)
_generate_msg_lisp(katana_msgs
  "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs
)
_generate_msg_lisp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs
)
_generate_msg_lisp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs
)
_generate_msg_lisp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs
)
_generate_msg_lisp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs
)
_generate_msg_lisp(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(katana_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(katana_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(katana_msgs_generate_messages katana_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_lisp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_lisp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_lisp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_lisp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_lisp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_lisp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_lisp _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_lisp _katana_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(katana_msgs_genlisp)
add_dependencies(katana_msgs_genlisp katana_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS katana_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs
)
_generate_msg_nodejs(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs
)
_generate_msg_nodejs(katana_msgs
  "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs
)
_generate_msg_nodejs(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs
)
_generate_msg_nodejs(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs
)
_generate_msg_nodejs(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs
)
_generate_msg_nodejs(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs
)
_generate_msg_nodejs(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(katana_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(katana_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(katana_msgs_generate_messages katana_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_nodejs _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_nodejs _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_nodejs _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_nodejs _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_nodejs _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_nodejs _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_nodejs _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_nodejs _katana_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(katana_msgs_gennodejs)
add_dependencies(katana_msgs_gennodejs katana_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS katana_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs
)
_generate_msg_py(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs
)
_generate_msg_py(katana_msgs
  "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs
)
_generate_msg_py(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs
)
_generate_msg_py(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs
)
_generate_msg_py(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs
)
_generate_msg_py(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs
)
_generate_msg_py(katana_msgs
  "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(katana_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(katana_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(katana_msgs_generate_messages katana_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementResult.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_py _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/src/katana_msgs/msg/GripperControllerState.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_py _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionResult.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_py _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementAction.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_py _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementGoal.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_py _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionFeedback.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_py _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementFeedback.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_py _katana_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hit_ter/rover_ws/devel/share/katana_msgs/msg/JointMovementActionGoal.msg" NAME_WE)
add_dependencies(katana_msgs_generate_messages_py _katana_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(katana_msgs_genpy)
add_dependencies(katana_msgs_genpy katana_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS katana_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/katana_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(katana_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(katana_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/katana_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(katana_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(katana_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/katana_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(katana_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(katana_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/katana_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(katana_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(katana_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/katana_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(katana_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(katana_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
