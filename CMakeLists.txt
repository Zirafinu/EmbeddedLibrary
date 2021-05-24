cmake_minimum_required (VERSION 3.12)
cmake_policy(SET CMP0076 NEW)

project (EmbeddedLibrary VERSION 1.0.0 LANGUAGES CXX)
enable_language(CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
add_executable(${PROJECT_NAME})

set_target_properties(${PROJECT_NAME} PROPERTIES CXX_CLANG_TIDY "clang-tidy")

add_subdirectory("Remote")
add_subdirectory("Source")
