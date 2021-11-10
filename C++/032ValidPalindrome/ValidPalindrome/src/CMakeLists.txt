set(BINARY ${CMAKE_PROJECT_NAME}_src)



include_directories(../include)


file(GLOB SOURCES *.cpp)
set(SOURCES ${SOURCES})

add_executable(Validpalindrome_src ${SOURCES})

