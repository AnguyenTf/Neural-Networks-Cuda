cat << 'EOF' > README.md
# Neural Networks with CUDA

This project implements neural network operations using custom CUDA kernels.  
Designed for learning HPC, CUDA programming, memory optimization, and GPU-accelerated deep learning fundamentals.

## Build Instructions
cmake .. && make -j$(nproc) && ./app
