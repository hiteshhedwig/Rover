# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ps3joy: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ips3joy:/home/hit_ter/rover_ws/src/ps3joy/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ps3joy_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg" NAME_WE)
add_custom_target(_ps3joy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ps3joy" "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ps3joy
  "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps3joy
)

### Generating Services

### Generating Module File
_generate_module_cpp(ps3joy
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps3joy
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ps3joy_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ps3joy_generate_messages ps3joy_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg" NAME_WE)
add_dependencies(ps3joy_generate_messages_cpp _ps3joy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ps3joy_gencpp)
add_dependencies(ps3joy_gencpp ps3joy_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps3joy_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ps3joy
  "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ps3joy
)

### Generating Services

### Generating Module File
_generate_module_eus(ps3joy
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ps3joy
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ps3joy_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ps3joy_generate_messages ps3joy_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg" NAME_WE)
add_dependencies(ps3joy_generate_messages_eus _ps3joy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ps3joy_geneus)
add_dependencies(ps3joy_geneus ps3joy_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps3joy_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ps3joy
  "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps3joy
)

### Generating Services

### Generating Module File
_generate_module_lisp(ps3joy
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps3joy
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ps3joy_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ps3joy_generate_messages ps3joy_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg" NAME_WE)
add_dependencies(ps3joy_generate_messages_lisp _ps3joy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ps3joy_genlisp)
add_dependencies(ps3joy_genlisp ps3joy_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps3joy_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ps3joy
  "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ps3joy
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ps3joy
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ps3joy
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ps3joy_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ps3joy_generate_messages ps3joy_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg" NAME_WE)
add_dependencies(ps3joy_generate_messages_nodejs _ps3joy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ps3joy_gennodejs)
add_dependencies(ps3joy_gennodejs ps3joy_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps3joy_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ps3joy
  "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps3joy
)

### Generating Services

### Generating Module File
_generate_module_py(ps3joy
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps3joy
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ps3joy_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ps3joy_generate_messages ps3joy_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hit_ter/rover_ws/src/ps3joy/msg/try2.msg" NAME_WE)
add_dependencies(ps3joy_generate_messages_py _ps3joy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ps3joy_genpy)
add_dependencies(ps3joy_genpy ps3joy_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ps3joy_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps3joy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ps3joy
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ps3joy_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ps3joy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ps3joy
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ps3joy_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps3joy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ps3joy
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ps3joy_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ps3joy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ps3joy
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ps3joy_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps3joy)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps3joy\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ps3joy
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ps3joy_generate_messages_py std_msgs_generate_messages_py)
endif()
