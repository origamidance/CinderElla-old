cmake_minimum_required( VERSION 2.8 FATAL_ERROR )
set( CMAKE_VERBOSE_MAKEFILE ON )

project( CairoBasic )

get_filename_component( CINDER_PATH "${CMAKE_CURRENT_LIST_DIR}/../Cinder" ABSOLUTE )
get_filename_component( SOURCES_PATH "${CMAKE_CURRENT_LIST_DIR}/src" ABSOLUTE )
get_filename_component( BLOCKS_PATH "${CMAKE_CURRENT_LIST_DIR}/blocks" ABSOLUTE )

include( "${CINDER_PATH}/proj/cmake/modules/cinderMakeApp.cmake" )

ci_make_app(
	SOURCES     ${SOURCES_PATH}/CairoBasicApp.cpp
	CINDER_PATH ${CINDER_PATH}
  	BLOCKS      ${BLOCKS_PATH}/Cinder-Cairo ${BLOCKS_PATH}/Cinder-ImGui
)
