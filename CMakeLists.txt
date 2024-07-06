cmake_minimum_required(VERSION 3.0)
project(room-escape)

set(EXTERNAL_LINK_LIBS 
        freeglut.lib
        glew32.lib
)

# Include directories
include_directories(${CMAKE_SOURCE_DIR}/freeglut/include)
include_directories(${CMAKE_SOURCE_DIR}/glew/inc)

# Link directories
link_directories(${CMAKE_SOURCE_DIR}/freeglut/lib)
link_directories(${CMAKE_SOURCE_DIR}/glew/lib)

# Collect source files
file(GLOB SRC *.cpp)
file(GLOB HDR *.h)

add_executable(${PROJECT_NAME} main.cpp)

# Target link libraries
target_link_libraries(${PROJECT_NAME} ${EXTERNAL_LINK_LIBS})

# Copy files
file(GLOB_RECURSE DLLS
        ${CMAKE_SOURCE_DIR}/freeglut/*.dll
        ${CMAKE_SOURCE_DIR}/glew/*.dll
)
file(COPY ${DLLS} DESTINATION ${CMAKE_BINARY_DIR}/Debug)

file(GLOB_RECURSE OBJECTS ${CMAKE_SOURCE_DIR}/object/*.obj)
file(COPY ${OBJECTS} DESTINATION ${CMAKE_BINARY_DIR}/object)

file(GLOB_RECURSE IMAGES ${CMAKE_SOURCE_DIR}/*.bmp)
file(COPY ${IMAGES} DESTINATION ${CMAKE_BINARY_DIR})
