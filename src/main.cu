#include <device_launch_parameters.h>
#include <cuda_runtime.h>
#include <iostream>
#include <stdio.h>
#include <vector>
#include <cmath>


/*###################################################
#####                KERNELS                    #####
###################################################*/

__global__ void linear_layer_and_activation(float *weight_matrix, float *biases, float *x_inputs,
                 float *z_values, float *activation_values,
                 int nr_output_neurons, int nr_input_neurons){
    
    int id = blockIdx.x * blockDim.x + threadIdx.x;
    

}

/*##################################################
#####                MAIN                      #####
##################################################*/

int main() {
    
    std::cout << "Hellow bruh" << std::endl;

    return 0;
}
