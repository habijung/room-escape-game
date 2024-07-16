cmake_minimum_required(VERSION 3.5)
project(room-escape)

add_subdirectory(src)

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

add_executable(${PROJECT_NAME} src/main.cpp)

# Target link libraries
target_link_libraries(${PROJECT_NAME} ${EXTERNAL_LINK_LIBS})

# Copy files
file(GLOB_RECURSE DLLS
        ${CMAKE_SOURCE_DIR}/freeglut/*.dll
        ${CMAKE_SOURCE_DIR}/glew/*.dll
)
file(COPY ${DLLS} DESTINATION ${CMAKE_BINARY_DIR}/Debug)
