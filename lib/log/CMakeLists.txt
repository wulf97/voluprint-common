cmake_minimum_required(VERSION 3.22)

set(PROJECT_NAME "voluprint-log")

project(${PROJECT_NAME})

include(lib_template)

addlibrary(${PROJECT_NAME} "Log")