#include <iostream>
#include <vector>
#include <cmath>
#include <cuda_runtime.h>

#include <iostream>
#include <cuda_runtime.h>

/*###################################################
#####                KERNELS                    #####
#####################################################*/

__global__ void helloKernel() {
    int idx = blockIdx.x * blockDim.x + threadIdx.x;
    printf("Hello from thread %d\n", idx);
    
}

/*##################################################
#####                MAIN                      #####
####################################################*/

int main() {
    helloKernel<<<1, 4>>>();
    cudaDeviceSynchronize();
    return 0;
}
