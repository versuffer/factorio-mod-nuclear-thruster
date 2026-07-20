-- Nuclear thruster settings

local enable_nuclear_thruster_fluid_box_symmetry_setting = {
    type = "bool-setting",
    name = "enable-nuclear-thruster-fluid-box-symmetry",
    setting_type = "startup",
    default_value = false,
    order = "a"
}

local enable_nuclear_thruster_alternative_flame_graphics_setting = {
    type = "bool-setting",
    name = "enable-nuclear-thruster-alternative-flame-graphics",
    setting_type = "startup",
    default_value = false,
    order = "b"
}

local enable_uranium_thruster_fuel_fuel_value_adjustment = {
    type = "bool-setting",
    name = "enable-uranium-thruster-fuel-fuel-value-adjustment",
    setting_type = "startup",
    default_value = false,
    order = "c"
}

local uranium_thruster_fuel_fuel_value_setting = {
    type = "int-setting",
    name = "uranium-thruster-fuel-fuel-value-kj",
    setting_type = "startup",
    minimum_value = 850,
    maximum_value = 85000,
    default_value = 850,
    order = "d"
}

local nuclear_thruster_full_storage_efficiency_percent_setting = {
    type = "int-setting",
    name = "nuclear-thruster-full-storage-efficiency-percent",
    setting_type = "startup",
    minimum_value = 15,
    maximum_value = 100,
    default_value = 97,
    order = "e"
}

local nuclear_thruster_full_storage_fluid_usage_percent_setting = {
    type = "int-setting",
    name = "nuclear-thruster-full-storage-fluid-usage-percent",
    setting_type = "startup",
    minimum_value = 50,
    maximum_value = 200,
    default_value = 100,
    order = "f"
}

local nuclear_thruster_storage_volume_units_setting = {
    type = "int-setting",
    name = "nuclear-thruster-storage-volume-units",
    setting_type = "startup",
    minimum_value = 500,
    maximum_value = 25000,
    default_value = 1000,
    order = "g"
}

data.extend(
    {
        enable_nuclear_thruster_fluid_box_symmetry_setting,
        enable_nuclear_thruster_alternative_flame_graphics_setting,

        enable_uranium_thruster_fuel_fuel_value_adjustment,
        uranium_thruster_fuel_fuel_value_setting,

        nuclear_thruster_storage_volume_units_setting,
        nuclear_thruster_full_storage_fluid_usage_percent_setting,
        nuclear_thruster_full_storage_efficiency_percent_setting,
    }
)
