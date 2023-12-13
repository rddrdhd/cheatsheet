# OpenVDB Hello World
## Env to run
1. SSH to Karolina
2. Load modules

my `ml list` output:
```
Currently Loaded Modules:
  1) ncurses/6.2        5) CMake/3.20.1                 9) binutils/2.35-GCCcore-10.2.0  13) Boost/1.74.0-GCC-10.2.0
  2) OpenSSL/1.1        6) c-blosc/1.21.0-GCC-10.3.0   10) GCC/10.2.0                    14) googletest/1.11.0-GCCcore-11.2.0
  3) cURL/7.76.0        7) tbb/2020.3-GCCcore-10.2.0   11) bzip2/1.0.8-GCCcore-10.2.0    15) CUDA/12.2.0
  4) libarchive/3.5.1   8) zlib/1.2.11-GCCcore-10.2.0  12) XZ/5.2.5-GCCcore-10.2.0       16) GCCcore/13.2.0
```

3. Build and install OpenVDB and NanoVDB

## Run
  - `cd repo` # this repo
  - `./build_script.sh`
  - `cd build`
  - `./main`
