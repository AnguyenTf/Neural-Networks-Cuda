## Threads
- The smallest unit of execution on a GPU

- Each thread performs computations independently

- In neural networks, one thread can compute one neuron's activation

## Block
- A group of threads that execute together on the same GPU Streaming Multiprocessor (SM).

- Threads in a block can cshare memory and synchronize with each other

- A block allows threads to be organized for larger parallel computations.

## Grid
- A grid is a collection of blocks
- Grids allow GPUs, to hadle arrays larger than a single block

## Calling the Kernal
- After calling the Kernal we can add the argument parameter in
    - Example: cudaKernal<<<1, 1>>>(arg 1...argX);

## int id = blockIdx.x * blockDim.x + threadIdx.x;
- Threads -> blocks -> grid

- int id
    - Which single piece of data does this thread work on

- threadIdx.x
    - The thread's index inside its block
    - Ranges [0, (blockDim.x - 1)]
        - blockdim.x = 256
        - threadId.x = [0, 255]

- blockDim.x
    - The number of threads per block
    - Same for every block
    - Example
        - blockDim.x = 256

- blockIdx.x
    - The block's index inside the grid
    - Ranges [0, (gridDim.x - 1)]

