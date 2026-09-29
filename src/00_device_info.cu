#include <cstdio>
#include <cuda_runtime.h>

int main() {
    cudaDeviceProp p{};

    cudaGetDeviceProperties(&p, 0);
    std::printf("device                 : %s\n", p.name);
    std::printf("compute capability     : %d.%d\n", p.major, p.minor);
    std::printf("SMs                    : %d persistent blocks can launch\n", p.multiProcessorCount);
    std::printf("threads per SM         : %d\n", p.maxThreadsPerMultiProcessor);
    std::printf("smem / block           : %zu B\n", static_cast<size_t>(p.sharedMemPerBlock));
    std::printf("smem / block option    : %zu B persistent kernel can get\n",
            static_cast<size_t>(p.sharedMemPerBlockOptin));
    std::printf("regs / SM              : %d\n", p.regsPerMultiprocessor);
    std::printf("L2                     : %d B\n", p.l2CacheSize);
    std::printf("memory bus             : %d bit\n", p.memoryBusWidth);

    return 0;
}
