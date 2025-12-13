#include <device_launch_paramteters.h>
#include <cuda_runtime.h>
#include <iostream>
#include <stdio.h>
#include <vector>
#include <cmath>


/*###################################################
#####                KERNELS                    #####
#####################################################*/



/*##################################################
#####                MAIN                      #####
####################################################*/

int main() {
    const int arraySize = 5;

    // Initializing arrays on the CPu
    float host_z_values[arraySize] = {1., 2., 3., 4., 5. };
    float host activations[arraySize] = { 0 };

    // Caclulating the number of bytes required to store the arrays.
    const size_t bytes_z_values = arraySize * sizeof(float);
    const size_t bytes_activations = arraySize * sizeof(float);

    // Float pointers which will contain the address of the arrays on the GPU.
    float *device_z_values, *device_activations;

    // Allocate memory on the GPU
    cudaMalloc(&device_z_values, bytes_z_values);
    cudaMalloc(&device_activations, bytes_activations);

    cudaMemcpy();
    cudaMemcpy();
    

    return 0;
}
