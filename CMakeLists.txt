#------------------------------------------------------------------------------
# General Projects Settings
#------------------------------------------------------------------------------
cmake_minimum_required(VERSION 3.12 FATAL_ERROR)
set(APPLICATION_NAME tusur_pascal)

#------------------------------------------------------------------------------
# Install dependency
#------------------------------------------------------------------------------
set(GITHUB_URL "https://raw.githubusercontent.com/scivision/radioutils-pascal/master/cmake_modules/")
list(APPEND CMAKE_FILE_LIST
        CMakeDeterminePascalCompiler.cmake
        CMakePascalCompiler.cmake.in
        CMakePascalInformation.cmake
        CMakeTestPascalCompiler.cmake)
foreach(C IN LISTS CMAKE_FILE_LIST)
    if(NOT EXISTS "${CMAKE_BINARY_DIR}/cmake_modules/${C}")
        message(STATUS "Downloading '${C}'.")
        file(DOWNLOAD
                "${GITHUB_URL}${C}"
                "${CMAKE_BINARY_DIR}/cmake_modules/${C}")
    endif()
endforeach()
list(APPEND CMAKE_MODULE_PATH ${CMAKE_BINARY_DIR}/cmake_modules)
#set(CMAKE_MODULE_PATH "${CMAKE_BINARY_DIR}/cmake_modules")

#------------------------------------------------------------------------------
# Setup targets
#------------------------------------------------------------------------------
enable_language(Pascal)
project(${APPLICATION_NAME} LANGUAGES Pascal)
enable_testing()

add_executable(main
        src/example.pas
        )
add_test(NAME MainTest COMMAND bash -c "$<TARGET_FILE:main> <<< q")
set_tests_properties(MainTest PROPERTIES PASS_REGULAR_EXPRESSION "Program name: MainTest")