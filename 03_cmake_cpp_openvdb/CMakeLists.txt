cmake_minimum_required(VERSION 3.5)
project(main)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wno-changes-meaning")
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(OPENVDB_INCLUDE_DIR "" CACHE PATH "")
set(OPENVDB_LIBRARIES "" CACHE FILEPATH "")
set(TBB_LIBRARIES "" CACHE FILEPATH "")

add_executable(main main.cpp)
target_link_libraries(main ${OPENVDB_LIBRARIES} ${TBB_LIBRARIES} pthread)
target_include_directories(main PUBLIC ${OPENVDB_INCLUDE_DIR})
