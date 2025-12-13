cmake_minimum_required(VERSION 3.20)
project(NeuralNetworksCUDA LANGUAGES CXX CUDA)

set(CMAKE_CUDA_STANDARD 17)
set(CMAKE_CXX_STANDARD 17)

add_executable(app
    src/main.cu
)

# Optional: better warnings
target_compile_options(app PRIVATE $<$<COMPILE_LANGUAGE:CUDA>:--expt-relaxed-constexpr>)
