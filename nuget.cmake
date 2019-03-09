function(nuget target_name)
    find_program(NUGET nuget)

    if(NOT NUGET)
        message(FATAL_ERROR "NuGet not found!")
    endif(NOT NUGET)

    configure_file(${CMAKE_CURRENT_SOURCE_DIR}/packages.config ${CMAKE_CURRENT_BINARY_DIR}/packages.config COPYONLY)

    add_custom_target(${target_name}_nuget
        COMMAND ${NUGET} restore ${CMAKE_CURRENT_BINARY_DIR}/${target_name}.sln
    )

    add_dependencies(${target_name} ${target_name}_nuget)
endfunction()
