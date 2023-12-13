#include "say_hello.h"

__global__ 
void say_hello_kernel()
{
    int global_idx = blockIdx.x * blockDim.x + threadIdx.x;
    int n_threads_total = blockDim.x * gridDim.x;

    printf("Hello GPU world from thread %d/%d, block %d/%d, my global index is %d/%d\n", threadIdx.x, blockDim.x, blockIdx.x, gridDim.x, global_idx, n_threads_total);
}

void say_hello(){
    printf("Launching the kernel with 2 blocks, each with 4 threads\n");

    // launch the kernel
    say_hello_kernel<<< 2, 4 >>>();

    printf("Kernel was launched, waiting for its completion\n");
   
    // wait for the kernel to finish
    cudaDeviceSynchronize();

    printf("Kernel execution completed\n");
}