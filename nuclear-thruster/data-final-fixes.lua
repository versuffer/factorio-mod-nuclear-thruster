-- Nuclear thruster fluid box symmetry

local modified_uranium_thruster_fuel_fluid_box = {
    {
        flow_direction = "input-output",
        direction = defines.direction.west,
        position = {-1.5, -2},
        enable_working_visualisations = { "pipe-4" }
    },
    {
        flow_direction = "input-output",
        direction = defines.direction.east,
        position = { 1.5, -2},
        enable_working_visualisations = { "pipe-1" }
    }
}

local modified_water_fluid_box = {
    {
        flow_direction = "input-output",
        direction = defines.direction.west,
        position = {-1.5, 0},
        enable_working_visualisations = { "pipe-3" }
    },
    {
        flow_direction = "input-output",
        direction = defines.direction.east,
        position = { 1.5, 0},
        enable_working_visualisations = { "pipe-2" }
    }
}

if settings.startup["enable-nuclear-thruster-fluid-box-symmetry"].value == true then
    data.raw["thruster"]["nuclear-thruster"].fuel_fluid_box.pipe_connections = modified_uranium_thruster_fuel_fluid_box
    data.raw["thruster"]["nuclear-thruster"].oxidizer_fluid_box.pipe_connections = modified_water_fluid_box
end

-- Uranium thruster fuel fuel_value adjustment

if settings.startup["enable-uranium-thruster-fuel-fuel-value-adjustment"].value == true then
    local adjusted_fuel_value = settings.startup["uranium-thruster-fuel-fuel-value-kj"].value .. "kJ"
    data.raw["fluid"]["uranium-thruster-fuel"].fuel_value = adjusted_fuel_value
end