cmake_minimum_required(VERSION 3.9)
project(myldb VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(MYLDB_PUBLIC_INCLUDE_DIR "include/myldb")

option(MYLDB_BUILD_TEST "Build Myldb's unit tests" ON)



include_directories(
    "${PROJECT_SOURCE_DIR}/include"
    "${PROJECT_SOURCE_DIR}"
)

add_library(myldb "")
target_sources(myldb
    PRIVATE

    $<$<VERSION_GREATER:CMAKE_VERSION,3.2>:PUBLIC>
    "${MYLDB_PUBLIC_INCLUDE_DIR}/slice.h"
    "${MYLDB_PUBLIC_INCLUDE_DIR}/status.h"
)
target_compile_definitions(myldb
    PRIVATE
    MYLDB_PLATFORM_POSIX
)
set_target_properties(myldb PROPERTIES LINKER_LANGUAGE CXX)


if(MYLDB_BUILD_TEST)
    enable_testing()

    function(myldb_test test_file)
        get_filename_component(test_target_name "${test_file}" NAME_WE)

        add_executable("${test_target_name}" "")
        target_sources("${test_target_name}"
            PRIVATE
                "${test_file}"
        )
        target_compile_options("${test_target_name}" PRIVATE -g)

        target_link_libraries("${test_target_name}" myldb)

        add_test(NAME "${test_target_name}" COMMAND "${test_target_name}")
    endfunction(myldb_test)

    myldb_test("${PROJECT_SOURCE_DIR}/test/slice_test.cc")
    myldb_test("${PROJECT_SOURCE_DIR}/test/encoding_test.cc")
endif(MYLDB_BUILD_TEST)











