cmake_minimum_required(VERSION 3.7 FATAL_ERROR)
project(printer SHARED printer.c printer.def)
add_executable(printer printer.c)

set_targert_properties(printer PROPERTIES 
    PUBLIC_HEADER printer.h
    VERSION ${PROJECT_VERSION}
    SOVERSION 1
    OUTPUT_NAME "printer"
    )
