set(CINDERELLA ON)
get_filename_component( CINDER_PATH "${CMAKE_CURRENT_LIST_DIR}/../Cinder" ABSOLUTE )
get_filename_component( BLOCKS_PATH "${CMAKE_CURRENT_LIST_DIR}/../blocks" ABSOLUTE )
include( "${CINDER_PATH}/proj/cmake/modules/cinderMakeApp.cmake" )
include_directories("${CINDER_PATH}/Eigen")