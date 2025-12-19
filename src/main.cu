#include <device_launch_parameters.h>
#include <cuda_runtime.h>
#include <iostream>
#include <stdio.h>
#include <vector>
#include <cmath>


/*###################################################
#####                KERNELS                    #####
###################################################*/

/*
weight_matrix = A weight tells a neuron how important an input is
    - Small weight: Input matters a little
    - Negative weight: Input counts against the neuron

biases = A bias is a number added to the neuron that controls how easily it turns on, before looking at the inputs
    - Set the baseline, without a bias your neurons are too rigid

x_inputs = The raw numbers you feed into the neuron

z_values = The raw score a neuron computes before the activation function

activation_values = The number a neuron outputs after it finishes it computation

nr_output_neurons = 

nr_input_neurons = How many neurons are in this layer

Example: x_inputs = [1,2,3] | nr_output_neurons = 3 | nr_input_neurons = 4
1) We have 4 neurons with a weight of 
    - Neuron 0: [0.5, -1, 2]
    - Neuron 1: [1, 0, -0.5]
    - Neuron 2: [-1, 2, 1]
    - Neuron 3: [0.2, 0.3, 0.4]
2)



*/

__global__ void linear_layer_and_activation(float *weight_matrix, float *biases, float *x_inputs,
                 float *z_values, float *activation_values,
                 int nr_output_neurons, int nr_input_neurons){
    

    

}

/*##################################################
#####                MAIN                      #####
##################################################*/

int main() {
    
    std::cout << "Hellow bruh" << std::endl;

    return 0;
}
