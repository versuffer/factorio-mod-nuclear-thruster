local pipe_picture = assembler3pipepictures()
pipe_picture.north = util.empty_sprite()
pipe_picture.south.filename = "__nuclear-thruster__/graphics/entity/centrifuge/centrifuge-pipe-S.png"
pipe_picture.east.filename = "__nuclear-thruster__/graphics/entity/centrifuge/centrifuge-pipe-E.png"
pipe_picture.west.filename = "__nuclear-thruster__/graphics/entity/centrifuge/centrifuge-pipe-W.png"

local centrifuge = table.deepcopy(data.raw["assembling-machine"]["centrifuge"])
centrifuge.fluid_boxes = {
	{
		production_type = "input",
		pipe_picture = pipe_picture,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = { { flow_direction = "input", direction = defines.direction.north, position = { 0, -1 } } },
	},
	{
		production_type = "output",
		pipe_picture = pipe_picture,
		pipe_covers = pipecoverspictures(),
		volume = 1000,
		pipe_connections = { { flow_direction = "output", direction = defines.direction.south, position = { 0, 1 } } },
	},
}

data.extend(
  {
    centrifuge
  }
)
