project(FlatUi)


add_definitions(-DFLATUI_BUILD_PLUGIN)
file(GLOB SRC *.cpp *.h FlatUi/*.qml FlatUi/qmldir)

add_library(${PROJECT_NAME} SHARED ${SRC})


target_link_libraries(${PROJECT_NAME} Qt5::QuickControls2)

add_custom_target(copy-plugin ALL
	COMMAND 
	${CMAKE_COMMAND} -E copy_directory
		${CMAKE_CURRENT_SOURCE_DIR}/FlatUi
		${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/FlatUi
)

set_target_properties(
	${PROJECT_NAME} 
	PROPERTIES LIBRARY_OUTPUT_DIRECTORY 
		${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/FlatUi
)