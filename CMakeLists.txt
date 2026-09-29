cmake_minimum_required(VERSION 3.26)

project(megakernel_demo LANGUAGES CXX CUDA)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CUDA_STANDARD_REQUIRED ON)

if(NOT CMAKE_CUDA_ARCHITECTURES)
    set(CMAKE_CUDA_ARCHITECTURES 120)  # Blackwell consumer (RTX 50 series)
endif()

add_executable(device_info
        src/00_device_info.cu
)
