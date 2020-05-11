cmake_minimum_required(VERSION 3.12)

list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake_modules)
enable_language(Pascal)

project(TUSUR_PASCAL LANGUAGES Pascal)
add_executable(coax_vlf coax_vlf.pas)