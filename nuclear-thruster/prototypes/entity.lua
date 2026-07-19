-- Nuclear thruster entities

local nuclear_thruster_corpse = table.deepcopy(data.raw["corpse"]["thruster-remnants"])
nuclear_thruster_corpse.name = "nuclear-thruster-remnants"
nuclear_thruster_corpse.icon = "__nuclear-thruster__/graphics/icons/nuclear-thruster.png"
nuclear_thruster_corpse.animation = util.sprite_load(
    "__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-remnants",
    {
      scale = 0.5,
      direction_count = 1,
      line_length = 1,
      shift = {0, 3}
    }
)

local nuclear_thruster = table.deepcopy(data.raw["thruster"]["thruster"])
nuclear_thruster.name = "nuclear-thruster"
nuclear_thruster.icon = "__nuclear-thruster__/graphics/icons/nuclear-thruster.png"
nuclear_thruster.corpse = "nuclear-thruster-remnants"
nuclear_thruster.max_health = data.raw["thruster"]["thruster"].max_health * 2.6
nuclear_thruster.minable.result = "nuclear-thruster"

nuclear_thruster.min_performance.fluid_usage = 0.3
nuclear_thruster.min_performance.effectivity = 0.01

nuclear_thruster.max_performance.effectivity =  settings.startup["nuclear-thruster-full-storage-efficiency-percent"].value / 100
nuclear_thruster.max_performance.fluid_usage =  settings.startup["nuclear-thruster-full-storage-fluid-usage-percent"].value / 100

nuclear_thruster.fuel_fluid_box.filter = "uranium-thruster-fuel"
nuclear_thruster.fuel_fluid_box.volume = settings.startup["nuclear-thruster-storage-volume-units"].value
nuclear_thruster.oxidizer_fluid_box.filter = "water"
nuclear_thruster.oxidizer_fluid_box.volume = settings.startup["nuclear-thruster-storage-volume-units"].value

nuclear_thruster.graphics_set =
{
    animation = util.sprite_load(
        "__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster",
        {
            animation_speed = 0.5,
            frame_count = 64,
            scale = 0.5,
            shift = {0,3}
        }
    ),

    integration_patch_render_layer = "floor",
    integration_patch = util.sprite_load("__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-bckg",
        {
            scale = 0.5,
            shift = {0,3}
        }
    ),

    working_visualisations =
    {
        {
            always_draw = true,
            name = "pipe-1",
            enabled_by_name = true,
            animation =
            {
                filename = "__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-pipe-connection-1.png",
                width = 384,
                height = 832,
                shift = util.by_pixel(0, 95),
                scale = 0.5
            }
        },
        {
            always_draw = true,
            name = "pipe-2",
            enabled_by_name = true,
            animation =
            {
                filename = "__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-pipe-connection-2.png",
                width = 384,
                height = 832,
                shift = util.by_pixel(0, 96),
                scale = 0.5
            }
        },
        {
            always_draw = true,
            name = "pipe-3",
            enabled_by_name = true,
            animation =
            {
                filename = "__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-pipe-connection-3.png",
                width = 384,
                height = 832,
                shift = util.by_pixel(0, 96),
                scale = 0.5
            }
        },
        {
            always_draw = true,
            name = "pipe-4",
            enabled_by_name = true,
            animation =
            {
                filename = "__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-pipe-connection-4.png",
                width = 384,
                height = 832,
                shift = util.by_pixel(0, 95),
                scale = 0.5
            }
        },
        {
            fadeout = true,
            animation = util.sprite_load("__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-light",
                {
                    animation_speed = 0.5,
                    frame_count = 64,
                    blend_mode = "additive",
                    draw_as_glow = true,
                    scale = 0.5,
                    shift = {0,3}
                }
            ),
        },
    },
    flame_effect =
    {
        filename = "__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-flame.png",
        width = 384,
        height = 832
    },
    flame_position = {0, 5.5},
    flame_half_height = 0,
    flame_effect_height = 1000 / 32,
    flame_effect_width = 384 / 64,
    flame_effect_offset = 50 / 32,
}

nuclear_thruster.plumes =
{
    render_box = {{-15, -10}, {15, 100}},
    min_probability = 0.08,
    max_probability = 1,
    min_y_offset = -4,
    max_y_offset = 0,
    stateless_visualisations =
    {
        {
            offset_x = { -0.1, 0.1 },
            offset_y = { 10.5, 10.5 },
            offset_z = { 0.0 , 0.0 },

            speed_x = { -0.014, 0.014 },
            speed_y = { 0.5, 0.7 },
            speed_z = { -0.014, 0.014 },

            probability = 0.3,
            count = 3,
            age_discrimination = -10,
            period = 200,
            fade_in_progress_duration = 0.25,
            fade_out_progress_duration = 0.6,
            spread_progress_duration = 0.375,
            begin_scale = 0.25,
            end_scale = 1.25,
            affected_by_wind = false,
            render_layer = "smoke",
            can_lay_on_the_ground = false,
            animation =
            {
                width = 253,
                height = 210,
                    scale = 0.5,
                line_length = 8,
                frame_count = 60,
                shift = {0, 0},
                priority = "high",
                animation_speed = 0.25,
                tint = {r = 1, b = 0.95, g = 0.97, a = 0.5},
                filename = "__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-smoke.png",
                flags = { "smoke" }
            }
        },
        {
            offset_x = { -0.2, 0.2 },
            offset_y = { 14.5, 14.5 },
            offset_z = { 0.0 , 0.0 },

            speed_x = { -0.014, 0.014 },
            speed_y = { 0.55, 0.65 },
            speed_z = { -0.014, 0.014 },

            probability = 0.5,
            period = 60,
            age_discrimination = -6,
            fade_in_progress_duration = 0.5,
            fade_out_progress_duration = 0.5,
            begin_scale = 0.5,
            end_scale = 1.25,
            affected_by_wind = false,
            render_layer = "smoke",
            can_lay_on_the_ground = false,
            animation =
            {
                width = 2024/8,
                height = 1216/8,
                line_length = 8,
                frame_count = 60,
                shift = {0, 0},
                priority = "high",
                animation_speed = 0.25,
                tint = {r = 0.75, b = 0.75, g = 0.75, a = 1},
                filename = "__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-smoke-glow.png",
                flags = { "smoke" },
                draw_as_glow = true
            }
        },
        {
            offset_x = { -0.25, 0.25 },
            offset_y = { 13.0, 13.0 },
            offset_z = { 0.0 , 0.0 },

            speed_x = { -0.014, 0.014 },
            speed_y = { 0.5, 0.7 },
            speed_z = { -0.014, 0.014 },

            probability = 0.2,
            count = 2,
            period = 200,
            fade_in_progress_duration = 0.3,
            fade_out_progress_duration = 0.7,
            begin_scale = 0.5,
            end_scale = 3.0,
            affected_by_wind = false,
            render_layer = "smoke",
            can_lay_on_the_ground = false,
            animation =
            {
                width = 253,
                height = 210,
                line_length = 8,
                frame_count = 60,
                shift = {0, 0},
                priority = "high",
                animation_speed = 0.1,
                tint = {r = 1, b = 0.95, g = 0.97, a = 1.0},
                filename = "__nuclear-thruster__/graphics/entity/nuclear-thruster/thruster-smoke.png",
                flags = { "smoke" }
            }
        }
    }
}

data.extend(
    {
        nuclear_thruster_corpse,
        nuclear_thruster,
    }
)