# Neural Network notes

## CUDA Memory Types
- **Host Memory**: resides on the CPU, accessible by normal C++ code
- **Device Memory**: resides on the GPU, accessible only by CUDA kernals.
- Data must be explicitly copied between host and device using 'cudaMemcpy'.

## Sigmoid Function
- Neural networks are parallel
    - We use the Sigmoind function because we can use a thread to compute the sigmoind for one nueron, this is much faster than letting the cpu compute this because one neuron;s computation would happen one after another.
    - On a GPU, everything happens in parallel -> massive speedup for large networks.

- Memory efficiency
    - You can store the inputs and outputs of neurons directly in **GPU memory**.
    - You can apply the sigmoid in-place, meaning you don't need to create extra copies
    - Benfit:
        - Avoids slow memory transfers between CPU and GPU
        - Keeps all data local to the GPU -> Faster computation.

- Training Large networks
    - Deep learning networks can have millions of neurons
    - CPU computation becomes very slow because it's mostly sequential.
    - GPU computation can be hundreds of times faster because it runs thousands of threads in parallel.
    - Result:
        - Efficient forward and backward passes, allowing large-scale networks to train in a reasonable time.

## Activation Layer 


## Neural Network Layer
- A group of Nuerons
    1) Take the same input values
    2) Compute their own weighted sums + ias
    3) Apply an activation function
    4) Produce output values together
    - This is one layer