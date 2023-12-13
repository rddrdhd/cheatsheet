cmake_minimum_required(VERSION 3.8 FATAL_ERROR)
project(my_project LANGUAGES CXX CUDA)

#set(CUDA_ARCHS "61")
#set(CMAKE_CUDA_ARCHITECTURES "${CUDA_ARCHS}")
#set(CUDA_ROOT ${CUDA_LIBRARIES})

find_package(CUDA)
include_directories(${CUDA_LIBRARIES})

add_library(my_lib STATIC say_hello.cu say_hello.h)
target_compile_features(my_lib PUBLIC cxx_std_11)
set_target_properties( my_lib PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

add_executable(my_project main.cpp)

target_link_libraries(my_project PRIVATE my_lib)
