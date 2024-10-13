cmake_minimum_required(VERSION 3.20)

project(fps-project)

# includes 
include_directories(
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/include,
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/deps/glfw/include,
    PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/deps/glad/include
)

# subdirectories
add_subdirectory("deps/glfw")

# sources
set(SOURCES 
    src/main.cpp
    deps/glad/src/glad.c
)

# executables
add_executable(fps-project ${SOURCES})

# LINK DIRECTORIES
target_link_directories(${PROJECT_NAME}
	PRIVATE "deps/glfw/src"
)

# LINK LIBRARIES
target_link_libraries(${PROJECT_NAME}
	glfw
)