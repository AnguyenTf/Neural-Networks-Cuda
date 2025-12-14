# Neural Networks with CUDA

This project implements neural network operations using custom CUDA kernels.  
Designed for learning HPC, CUDA programming, memory optimization, and GPU-accelerated deep learning fundamentals.

## Fundamentals
The first kernel we are programming today will take a bunch of set. Set being the value of the neuron before the activation function. So bassically the weights times the input plus the bais and compute the activations all at once

While using many gpu threads in order to do that we need to do the following things.
1) We need to initialize some buffers on the cpu, then store their set values 
2) Then we need to request some memory on the gpu for our applications to use
3) Then we need to transfer the set values to the gpu 
4) Compute the activation values
5) Transfer the activation values back to the cpu 
6) Finally print the results


# Step 1 - Creating all the nesscary buffers
- We need one buffer for the cpu for the set values and one for the activation values, will name it host_z_values and host_activations

# Step 2 - Allocate memory on the GPU for activation buffers
- First we calculate the numbers of bytes needed because we are going to need this for the cuda Malloc call
- Then we create the float pointers called device_z_values, device_activations which will contain the address of the arrays on the GPU
- Additionally, we call 'cudaMalloc' to allocate memory on the PGu for these pointers. (Notes: 'cudaMalloc' only allocates GPU memory; copying data from the CPU is done separately using 'cudamemcpy'.)
- Finally, we call cudaMemcpy to copy host_z_values to device_z_values with the size of btyes_z_values and we are copying it from the host to the device with cudaMemcpyHostToDevice

# Step 3 - Compute the activation values of the given set array
- After allocating GPU memory and copying input data, we launch the sigmoid activation kernel.
- The kernel reads the input values ('z_matrix') from GPU memory and writes the computed activation values into 'activation_matrix'.
- Kernal Arguments
    - **z_matrix**: Pointer to an array of pre-activation values stored in GPU memory.
    - **activation_matrix**: pointer to an array in GPU memory where the sigmoid results will be stored.

- Each GPU thread processes one element: