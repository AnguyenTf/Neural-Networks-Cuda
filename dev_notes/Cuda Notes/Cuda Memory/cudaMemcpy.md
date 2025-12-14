# cudaMemcp

## Offical Documentation
https://docs.nvidia.com/cuda/cuda-runtime-api/group__CUDART__MEMORY.html#group__CUDART__MEMORY_1g37d37965bfb4803b6d4e59ff26856356

## Overview
- A function used to copy data between CPU(host) and GPU (device)
- Copy features
    - CPU -> GPU: Send input data to the GPU
        - cudaMemcpyHostToDevice
    - GPU -> CPU:Retrieve results back to the CPU
        - cudaMemcpyDeviceToHost
    - GPU -> GPU:Copy data between GPU buffers 
        - cudaMemcpyDeviceToDevice
        
## Signature
cudaMemcpy(void * dst, const void* src, cudaMemcpyKind kind);

- dst: Destination pointer (where the data will go)
- src: Source pointer (where the data come from)
- count: Number of bytes to copy
- kinda: Direction of copy (Refer to the copy features)

# Notes
- the count argument must be in bytes

# Exmaple Code
float h_array[100]; // CPU array
float* d_array;     // GPU pointer

cudaMalloc(&d_array, 100 * sizeof(float)); // allocate GPU memory

cudaMemcpy(d_array, h_array, 100 * sizeof(float), cudaMemcpyHostToDevice); // copy to GPU
