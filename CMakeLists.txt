# lua-mongo: mongo for lua, forked from neoxic
# Jian Chen <admin@chensoft.com>
# http://chensoft.com
cmake_minimum_required(VERSION 3.1)
project(mongo LANGUAGES C)

add_library(mongo MODULE "")

# environment
set_target_properties(mongo PROPERTIES C_STANDARD 99 C_STANDARD_REQUIRED ON)
set_target_properties(mongo PROPERTIES PREFIX "")

# source codes
file(GLOB PROJ_INC src/*.h)
file(GLOB PROJ_SRC src/*.c)

# third party
find_package(libmongoc-1.0 1.17 REQUIRED)
find_package(Lua REQUIRED)

# generate lib
target_include_directories(mongo PRIVATE ${MONGOC_INCLUDE_DIRS} ${LUA_INCLUDE_DIR})
target_sources(mongo PRIVATE ${PROJ_INC} ${PROJ_SRC})
target_link_libraries(mongo ${MONGOC_LIBRARIES} ${LUA_LIBRARIES})

# install lib
install(TARGETS mongo DESTINATION "${CMAKE_INSTALL_PREFIX}/lib")