# cudaMalloc

## Offical Documentation
https://docs.nvidia.com/cuda/cuda-runtime-api/group__CUDART__MEMORY.html#group__CUDART__MEMORY_1g37d37965bfb4803b6d4e59ff26856356

## Overview
- Allocates memory on the GPU (device memory) for use in CUDA kernals (A Cuda program that runs on the GPU is called a kernal)

## Signature
cudaMalloc(void** devPtr, size_t size);

- void ** devPtr -> the first arguement is the address of a pointer.
    - Why? Because cudaMalloc needs to modify your pointer so it points to GPU memory

- size_t size -> The number of bytes of memory you want to allocate on the GPU.

# Notes 
- Always check the return value for errors
- Free memory after use with cudaFree(pointer)

# Example Code
float* d_array;
cudaError_t err = cudaMalloc((void**)&d_array, 100 * sizeof(float));
if (err != cudaSuccess){
    // handle error
}
cudaFree(d_array);
