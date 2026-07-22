-- Nuclear thruster recipies

local nuclear_thruster_recipe = {
  type = "recipe",
  name = "nuclear-thruster",
  category = "metallurgy",
  enabled = false,
  energy_required = 30,
  ingredients = {
    {type = "fluid", name = "molten-iron", amount = 4000},
    {type = "item", name = "low-density-structure", amount = 50},
    {type = "item", name = "heat-pipe", amount = 30},
    {type = "item", name = "processing-unit", amount = 50},
    {type = "item", name = "electric-engine-unit", amount = 30},
    {type = "item", name = "tungsten-plate", amount = 100},
    {type = "item", name = "carbon-fiber", amount = 50},
    {type = "item", name = "supercapacitor", amount = 15},
  },
  results = {{type = "item", name = "nuclear-thruster", amount = 1}},
  hide_from_player_crafting = true,
  auto_recycle = false -- check data-updates.lua
}

local uranium_thruster_fuel_recipe = {
    type = "recipe",
    name = "uranium-thruster-fuel",
    energy_required = 90,
    enabled = false,
    category = "centrifuging",
    subgroup = "uranium-processing",
    order = "b[uranium-products]-d[uranium-thruster-fuel]",
    ingredients =
    {
      {type = "item", name = "uranium-235", amount = 1},
      {type = "item", name = "uranium-238", amount = 5},
      {type = "fluid", name = "water", amount = 10000},
    },
    results = {{type="fluid", name="uranium-thruster-fuel", amount=9000}},
    allow_productivity = true
}

local metallic_asteriod_uranium_extraction = {
    type = "recipe",
    name = "metallic-asteroid-uranium-extraction",
    icon = "__nuclear-thruster__/graphics/icons/metallic-asteroid-uranium-extraction.png",
    icon_size = 64,
    category = "crushing",
    subgroup = "space-processing",
    order = "b[advanced-metallic-asteroid-crushing]-c[metallic-asteroid-uranium-extraction]",
    enabled = false,
    energy_required = 5,
    ingredients = {
      {type = "item", name = "metallic-asteroid-chunk", amount = 1}
    },
    results = {
      {
        type = "item",
        name = "uranium-ore",
        amount = 10,
        probability = 0.20
      },
      {
        type = "item",
        name = "metallic-asteroid-chunk",
        amount = 1,
        probability = 0.03
      },
    },
    allow_productivity = true,
    allow_decomposition = false
}

local uranium_thruster_fuel_from_waste = {
    type = "recipe",
    name = "uranium-thruster-fuel-from-waste",
    energy_required = 15,
    enabled = false,
    category = "centrifuging",
    ingredients = {
        {
            type = "item",
            name = "depleted-uranium-fuel-cell",
            amount = 5
        },
        {
            type = "fluid",
            name = "water",
            amount = 600
        },
    },
    icon = "__nuclear-thruster__/graphics/icons/uranium-thruster-fuel-from-waste.png",
    icon_size = 256,
    subgroup = "uranium-processing",
    order = "b[uranium-products]-b[uranium-thruster-fuel-from-waste]",
    main_product = "",
    results = {
        {
            type="fluid",
            name="uranium-thruster-fuel",
            amount=500
        }
    },
    allow_decomposition = false,
    allow_productivity = true
}

data.extend(
    {
        uranium_thruster_fuel_recipe,
        nuclear_thruster_recipe,
        metallic_asteriod_uranium_extraction,
        uranium_thruster_fuel_from_waste,
    }
)
