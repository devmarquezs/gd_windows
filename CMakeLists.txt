cmake_minimum_required(VERSION 4.0)
project(gd_windows LANGUAGES NONE)

# Força o build tipo se não especificado (pode ser modificado conforme necessário)
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release CACHE STRING "Build type" FORCE)
endif()

# Cria um alvo customizado para invocar o sistema de build do Zig
add_custom_target(
    gd_windows_zig ALL
    COMMAND zig build
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    COMMENT "Building gd_windows using Zig's build system with Ninja"
)

