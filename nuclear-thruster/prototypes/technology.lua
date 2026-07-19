-- Nuclear thruster technologies

local nuclear_thruster_technology = {
    type = "technology",
    name = "nuclear-thruster",
    icon = "__nuclear-thruster__/graphics/technology/nuclear-thruster-research.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nuclear-thruster"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-thruster-fuel"
      },
    },
    prerequisites = {
        "space-platform-thruster",
        "nuclear-power",
        "metallurgic-science-pack",
        "electromagnetic-science-pack",
        "carbon-fiber",
    },
    unit =
    {
      count = 4000,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"electromagnetic-science-pack", 1},
      },
      time = 60
    }
}

local uranium_thruster_fuel_from_waste_technology = {
    type = "technology",
    name = "uranium-thruster-fuel-from-waste",
    icon = "__nuclear-thruster__/graphics/technology/uranium-thruster-fuel-from-waste-research.png",
    icon_size = 256,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "uranium-thruster-fuel-from-waste"
      }
    },
    prerequisites = {"nuclear-thruster", "nuclear-fuel-reprocessing"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"agricultural-science-pack", 1},
        {"electromagnetic-science-pack", 1},
      },
      time = 60,
    }
}

data.extend(
    {
        nuclear_thruster_technology,
        uranium_thruster_fuel_from_waste_technology,
    }
)