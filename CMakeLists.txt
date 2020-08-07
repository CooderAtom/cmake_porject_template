cmake_minimum_required (VERSION 3.5)

project (main)

# set(CMAKE_CXX_STANDARD 11)
# set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC ")
# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")

# option(DEBUG "is debug" OFF)

# if(DEBUG)
#     add_definitions("-DDEBUG")
# endif(DEBUG)

aux_source_directory (${PROJECT_SOURCE_DIR}/src SRC_DIRS)

include_directories (
	${PROJECT_SOURCE_DIR}/inc 
	)

# link_directories (
# 	${COMPILER_LIBRARY_PATH} 
# 	)

add_executable (main ${SRC_DIRS})
set_property(TARGET main PROPERTY C_STANDARD 99)

target_link_libraries (main 
	-lm
	)

install(
	TARGETS main
	DESTINATION ${CMAKE_CURRENT_SOURCE_DIR}
)