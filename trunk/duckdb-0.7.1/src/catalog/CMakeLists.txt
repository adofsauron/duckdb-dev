add_subdirectory(catalog_entry)
add_subdirectory(default)

add_library_unity(
  duckdb_catalog
  OBJECT
  catalog_entry.cpp
  catalog.cpp
  catalog_search_path.cpp
  catalog_set.cpp
  catalog_transaction.cpp
  duck_catalog.cpp
  dependency_list.cpp
  dependency_manager.cpp
  similar_catalog_entry.cpp)
set(ALL_OBJECT_FILES
    ${ALL_OBJECT_FILES} $<TARGET_OBJECTS:duckdb_catalog>
    PARENT_SCOPE)
