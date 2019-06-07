
project(FlatUi)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
find_package(Qt5 COMPONENTS QuickControls2 REQUIRED)

add_definitions(-DFLATUI_BUILD_PLUGIN)
add_definitions(-DFLATUI_BUILD_LIB)
file(GLOB SRC *.cpp *.h FlatUi/*.qml FlatUi/qmldir)

add_library(${PROJECT_NAME} SHARED ${SRC})


target_link_libraries(${PROJECT_NAME} Qt5::QuickControls2)


add_custom_target(copy-plugin ALL
        COMMAND
        ${CMAKE_COMMAND} -E copy_directory
                ${CMAKE_CURRENT_SOURCE_DIR}/FlatUi
                ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/FlatUi
)


add_custom_target(copy-lib ALL
        COMMAND
        ${CMAKE_COMMAND} -E copy_if_different
                ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/FlatUi.dll
                ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/FlatUi
        DEPENDS ${PROJECT_NAME}
)

