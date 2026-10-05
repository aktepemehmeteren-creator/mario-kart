cmake_minimum_required(VERSION 3.11)
project(MarioKartPSP C)

add_executable(${PROJECT_NAME} main.c)

target_link_libraries(${PROJECT_NAME} PRIVATE
    pspgum
    pspgu
    pspctrl
    pspdisplay
    pspge
    m
)

create_pbp_file(
    TARGET ${PROJECT_NAME}
    TITLE "Mario Kart PSP"
    VERSION "01.00"
    MEMSIZE 1
)
