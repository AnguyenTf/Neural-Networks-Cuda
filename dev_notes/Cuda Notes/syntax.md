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

