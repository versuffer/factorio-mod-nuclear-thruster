local uranium_thruster_fuel_fluid = {
    type = "fluid",
    name = "uranium-thruster-fuel",
    icon = "__nuclear-thruster__/graphics/icons/uranium-thruster-fuel.png",
    icon_size = 64,
    icon_mipmaps = 4,
    subgroup = "fluid",
    order = "b[new-fluid]-a[space]-a[uranium-thruster-fuel]",
    default_temperature = 25,
    fuel_value = "850kJ",
    base_color = {0, 1, 0},
    flow_color = {0, 1, 0},
    auto_barrel = false
}

data.extend(
    {
        uranium_thruster_fuel_fluid,
    }
)
