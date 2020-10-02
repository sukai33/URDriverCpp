add_library(driver SHARED URDriver.cpp URScript.cpp)
target_link_libraries(
        driver
        ${QT_LIBRARIES}
)