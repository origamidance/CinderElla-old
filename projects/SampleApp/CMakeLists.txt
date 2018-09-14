cmake_minimum_required( VERSION 2.8 FATAL_ERROR )
include("../../cmake/CinderElla.cmake")
set(BLOCKS
		${BLOCKS_PATH}/Cinder-ImGui
		${BLOCKS_PATH}/Cinder-NanoVG
		)
set(SOURCES
		src/CinderEllaApp.cpp)

project( SampleApp)
ci_make_app(
		SOURCES     ${SOURCES}
		CINDER_PATH ${CINDER_PATH}
		BLOCKS      ${BLOCKS}
)
