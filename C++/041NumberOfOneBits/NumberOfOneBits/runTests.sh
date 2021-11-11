CURRENT_DIR=`pwd`
cd build && rm -rf * && conan install .. -s compiler.libcxx=libc++ && cmake .. && make && (./tests/bin/NumberOfOneBits_tests_test)
cd "${CURRENT_DIR}"
