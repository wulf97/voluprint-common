if(LIB_TEMPLATE_INCLUDE)
    return()
endif()

set(LIB_TEMPLATE_INCLUDE TRUE)

macro(addlibrary _libname _include_dir)
    file(GLOB SOURCES src/*.cpp)

    add_library(${_libname} "${SOURCES}")
    target_include_directories(${_libname} PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/include")
    target_include_directories(${_libname} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/include/${_include_dir}")

    if(BUILD_TESTS)
        add_subdirectory("${CMAKE_CURRENT_SOURCE_DIR}/tests")
    endif()
endmacro()