set(BINARY ${CMAKE_PROJECT_NAME}_tests_test)
file(GLOB_RECURSE TEST_SOURCES LIST_DIRECTORIES false *.h *.cpp)

set(SOURCES ${TEST_SOURCES})

if (EXISTS ${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
    conan_basic_setup()
else ()
    message(WARNING "THE FILE CONANBUILDINFO.CAMAKE DOESN'T EXIST, YOU HAVE TO RUN CONAN INSTALL FIRST.")
endif ()

include_directories(../include)

add_executable(${BINARY} ${TEST_SOURCES} main.cpp TwoSumTests.cpp ../src/TwoSum.cpp)

#target_link_directories(../src ../include)
target_link_libraries(${BINARY} PUBLIC ${CONAN_LIBS})

add_test(NAME ${BINARY} COMMAND ${BINARY})
