package = "lua-mongo"
version = "scm-0"
source = {
   url = "git+https://github.com/luatoolz/lua-mongo",
}
description = {
   summary = "Lua bindings for mongo, forked from neoxic/lua-mongo",
   detailed = "",
   homepage = "https://github.com/luatoolz/lua-mongo",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "cmake",
   variables = {
     LUA_LIBDIR="$(LUA_LIBDIR)",
     LUA_BINDIR="$(LUA_BINDIR)",
     LUA_INCDIR="$(LUA_INCDIR)",
     CMAKE_BUILD_TYPE = "Release",
     CMAKE_INSTALL_PREFIX = "$(PREFIX)"
   },
}