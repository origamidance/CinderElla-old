cmake_minimum_required( VERSION 2.8 FATAL_ERROR )
set( CMAKE_VERBOSE_MAKEFILE ON )
include("cmake/CinderElla.cmake")
# set(SOURCES
# 		${SOURCES_PATH}/CinderEllaApp.cpp)
# set(BLOCKS
# 		${BLOCKS_PATH}/Cinder-ImGui
# 		${BLOCKS_PATH}/Cinder-NanoVG
# 		)
option(SAMPLE_PROJECT "build sample project" ON)

if(SAMPLE_PROJECT)
  add_subdirectory("${CMAKE_CURRENT_LIST_DIR}/projects/SampleApp")
endif()

# project( CinderEllaApp)
# ci_make_app(
# 		SOURCES     ${SOURCES}
# 		CINDER_PATH ${CINDER_PATH}
# 		BLOCKS      ${BLOCKS}
# )
