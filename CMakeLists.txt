cmake_minimum_required( VERSION 2.8 FATAL_ERROR )
set( CMAKE_VERBOSE_MAKEFILE ON )


get_filename_component( CINDER_PATH "${CMAKE_CURRENT_LIST_DIR}/../Cinder" ABSOLUTE )
get_filename_component( SOURCES_PATH "${CMAKE_CURRENT_LIST_DIR}/src" ABSOLUTE )
get_filename_component( BLOCKS_PATH "${CMAKE_CURRENT_LIST_DIR}/blocks" ABSOLUTE )

include( "${CINDER_PATH}/proj/cmake/modules/cinderMakeApp.cmake" )

set(SOURCES
		${SOURCES_PATH}/CinderEllaApp.cpp
		${SOURCES_PATH}/Graph/Graph.h
		${SOURCES_PATH}/Graph/Graph.cpp
		)
set(BLOCKS
		${BLOCKS_PATH}/Cinder-ImGui
		${BLOCKS_PATH}/Cinder-NanoVG
		)

#project( CairoBasic )
#ci_make_app(
#	SOURCES     ${SOURCES_PATH}/CairoBasicApp.cpp
#	CINDER_PATH ${CINDER_PATH}
#  	BLOCKS      ${BLOCKS_PATH}/Cinder-NanoVG ${BLOCKS_PATH}/Cinder-Cairo ${BLOCKS_PATH}/Cinder-ImGui
#)
#project( NanoVGApp)
#ci_make_app(
#		SOURCES     ${SOURCES_PATH}/NanoVGApp.cpp
#		CINDER_PATH ${CINDER_PATH}
#		BLOCKS      ${BLOCKS_PATH}/Cinder-NanoVG ${BLOCKS_PATH}/Cinder-ImGui
#)
find_package(Eigen3)
project( CinderEllaApp)
ci_make_app(
		SOURCES     ${SOURCES}
		CINDER_PATH ${CINDER_PATH}
		INCLUDES 	${EIGEN3_INCLUDE_DIR}
		BLOCKS      ${BLOCKS}
)
