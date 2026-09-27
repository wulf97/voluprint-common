cmake_minimum_required(VERSION 3.22)

set(PROJECT_NAME "voluprint-log-tests")

project(${PROJECT_NAME})

set(SRC_DIR "${CMAKE_CURRENT_SOURCE_DIR}")
set(SOURCES "")

list(
    APPEND
    SOURCES
    "${SRC_DIR}/main.cpp"
)

add_executable(${PROJECT_NAME} ${SOURCES})
target_link_libraries(
    ${PROJECT_NAME}
    gtest
    gmock
    voluprint-log)

add_test(
    NAME ${PROJECT_NAME}
    COMMAND ${PROJECT_NAME})