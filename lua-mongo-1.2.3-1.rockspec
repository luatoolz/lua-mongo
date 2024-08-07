package = "lua-mongo"
version = "1.2.3-1"
source = {
   url = "git://github.com/luatoolz/lua-mongo",
   tag = "v1.2.3"
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
     CMAKE_BUILD_TYPE = "Release",
     CMAKE_INSTALL_PREFIX = "$(PREFIX)"
   },
}