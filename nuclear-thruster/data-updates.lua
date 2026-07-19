-- Nuclear thruster recycling recipe

-- Custom recipe is needed because original Nuclear thruster recipe uses molten iron and Quality mod cannot make proper recycling recipe because of it.
local nuclear_thruster_recycling_recipe = {
  type = "recipe",
  name = "nuclear-thruster-recycling",
  category = "recycling",
  order = "a",
  hidden = true,
  energy_required = 0.5,
  main_product = "",

  ingredients = {
    {type = "item", name = "nuclear-thruster", amount = 1}
  },
  results = {
    {type = "item", name = "iron-plate", amount = 10},
    {type = "item", name = "low-density-structure", amount = 13},
    {type = "item", name = "heat-pipe", amount = 8},
    {type = "item", name = "processing-unit", amount = 13},
    {type = "item", name = "electric-engine-unit", amount = 8},
    {type = "item", name = "tungsten-plate", amount = 25},
    {type = "item", name = "carbon-fiber", amount = 13},
    {type = "item", name = "supercapacitor", amount = 4},
  }
}

nuclear_thruster_recycling_recipe.icons = {
    {
        icon = "__nuclear-thruster__/graphics/icons/nuclear-thruster.png",
        icon_size = 64,
        icon_mipmaps = 1,
    },
    {
        icon = "__core__/graphics/icons/recycling-icon.png",
        icon_size = 64,
        scale = 0.5,
        shift = {6, 6}
    }
}

nuclear_thruster_recycling_recipe.localised_name = {"recipe-name.recycling", {"item-name.nuclear-thruster"}}

local nuclear_thruster_item = data.raw.item["nuclear-thruster"]
nuclear_thruster_recycling_recipe.icons = generate_recycling_recipe_icons_from_item(nuclear_thruster_item)

data.extend(
    {
        nuclear_thruster_recycling_recipe
    }
)