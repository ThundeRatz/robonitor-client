set(ROBONITOR_PATH
    ./lib/robonitor-client
)

list(APPEND LIB_SOURCES
    ${ROBONITOR_PATH}/src/robonitor.c
)

list(APPEND LIB_INCLUDE_DIRECTORIES
    ${ROBONITOR_PATH}/inc
)
