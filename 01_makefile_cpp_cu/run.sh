ml CUDA
ml CMake

echo "===== Modules loaded ====="
rm -rf build/
cmake -S . -B build/ -DCUDA_LIBRARIES=/apps/all/CUDA/12.2.0

echo "===== My project built ====="
cd build
make

echo "===== Running my project ====="
./my_project

