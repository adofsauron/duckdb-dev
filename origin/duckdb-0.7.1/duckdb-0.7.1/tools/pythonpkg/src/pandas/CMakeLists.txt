# this is used for clang-tidy checks
include_directories(${pybind11_INCLUDE_DIR})
include_directories(${PYTHON_INCLUDE_DIRS})
find_package(pybind11 REQUIRED)

add_library(python_pandas OBJECT type.cpp scan.cpp analyzer.cpp)

set(ALL_OBJECT_FILES
    ${ALL_OBJECT_FILES} $<TARGET_OBJECTS:python_pandas>
    PARENT_SCOPE)
