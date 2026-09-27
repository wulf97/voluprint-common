if(UTILS_INCLUDE)
    return()
endif()

set(UTILS_INCLUDE TRUE)

macro(subdirlist _result _curdir)
    file(GLOB children RELATIVE
        ${_curdir}
        ${_curdir}/*
    )

    set(_dirlist "")
    foreach(_child ${children})
        if(IS_DIRECTORY ${_curdir}/${_child})
            list(APPEND _dirlist ${_child})
        endif()
    endforeach()

    set(${_result} ${_dirlist})
endmacro()