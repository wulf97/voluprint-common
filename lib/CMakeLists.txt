cmake_minimum_required(VERSION 3.22)

set(PROJECT_NAME "voluprint-common")

project(${PROJECT_NAME})

option(BUILD_TESTS "Build tests" OFF)
option(BUILD_LOG "Build log" ON)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/../cmake")

if (${BUILD_LOG})
    add_subdirectory("${CMAKE_CURRENT_LIST_DIR}/log")
endif()