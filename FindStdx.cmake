if(STDX_PATH)	
	find_path(STDX_INCLUDE_DIRS NAMES "stdx/env.h" PATHS ${STDX_PATH})
	if(${CMAKE_BUILD_TYPE} STREQUAL "Debug")
		find_library(STDX_LIBRARIES NAMES "libstdxd.lib" "libstdxd.a" PATHS ${STDX_PATH})
	else()
		find_library(STDX_LIBRARIES NAMES "libstdx.lib" "libstdx.a" PATHS ${STDX_PATH})
	endif()
else()
	find_path(STDX_INCLUDE_DIRS NAMES "stdx/env.h")
	if(${CMAKE_BUILD_TYPE} STREQUAL "Debug")
		find_library(STDX_LIBRARIES NAMES  "libstdxd.lib" "libstdxd.a")
	else()
		find_library(STDX_LIBRARIES NAMES "libstdx.lib" "libstdx.a")
	endif()
endif()
if(STDX_INCLUDE_DIRS)
	if(STDX_LIBRARIES)
		set(STDX_FOUND)
		message(STATUS "--Found stdx Library ${STDX_LIBRARIES}")
		message(STATUS "--Found stdx Include ${STDX_INCLUDE_DIRS}")
	endif()
endif()