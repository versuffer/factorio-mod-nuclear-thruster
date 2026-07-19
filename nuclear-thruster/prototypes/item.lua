-- Nuclear thruster items

local nuclear_thruster_item = table.deepcopy(data.raw.item["thruster"])
nuclear_thruster_item.name = "nuclear-thruster"
nuclear_thruster_item.icon = "__nuclear-thruster__/graphics/icons/nuclear-thruster.png"
nuclear_thruster_item.place_result = "nuclear-thruster"
nuclear_thruster_item.order = "f[thruster]"
nuclear_thruster_item.subgroup = "space-platform"

data.extend(
    {
        nuclear_thruster_item,
    }
)