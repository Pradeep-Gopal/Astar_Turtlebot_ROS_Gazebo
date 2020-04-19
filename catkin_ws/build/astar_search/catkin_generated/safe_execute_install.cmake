execute_process(COMMAND "/home/manika/catkin_ws/build/astar_search/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/manika/catkin_ws/build/astar_search/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
