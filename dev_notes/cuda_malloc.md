# Cuda Malloc

## Overview
- Allocates memory on the GPU (device memory) for use in CUDA kernals (A Cuda program that runs on the GPU is called a kernal)

## Syntax / Signature

''' cpp
cudaError_t cudaMalloc(void** devPtr, size_t size);

- cudaError_t -> The return type is an error code. You can check it to see if the allocation succeeded

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


