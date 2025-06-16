# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appQtBasics_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appQtBasics_autogen.dir\\ParseCache.txt"
  "appQtBasics_autogen"
  )
endif()
