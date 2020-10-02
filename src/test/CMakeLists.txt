add_executable(test main.cpp MainWindow.cpp)
# 指定包含的头文件目录
include_directories(../driver)
target_link_libraries(
        test
        driver
)