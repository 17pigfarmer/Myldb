file(REMOVE_RECURSE
  "libmyldb.pdb"
  "libmyldb.a"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/myldb.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
