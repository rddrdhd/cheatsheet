 
 export LD_LIBRARY_PATH=/apps/all/tbb/2020.3-GCCcore-10.2.0/lib64:$LD_LIBRARY_PATH
 cmake -S . -B build/ -DOPENVDB_LIBRARIES=/mnt/proj3/open-28-64/zur0037/openvdb/install/lib64/libopenvdb.so -DOPENVDB_INCLUDE_DIR=/mnt/proj3/open-28-64/zur0037/openvdb/install/include -DTBB_LIBRARIES=/apps/all/tbb/2020.3-GCCcore-10.2.0/lib64/libtbb.so; 
 cd build
 mkdir data
 make
