cmake_minimum_required(VERSION 3.27)
project(strat_macro)

set(CMAKE_CXX_STANDARD 23)

file(GLOB_RECURSE SOURCES "src/**")

add_executable(strat_macro ${SOURCES})

target_sources(strat_macro PRIVATE ${CMAKE_SOURCE_DIR}/resources.rc)