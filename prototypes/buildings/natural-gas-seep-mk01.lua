RECIPE {
    type = "recipe",
    name = "natural-gas-seep-mk01",
    energy_required = 15,
    enabled = false,
    ingredients = {
        {"electric-mining-drill", 4},
        {"steel-plate", 30},
        {"electronic-circuit", 10},
        {"engine-unit", 10},
    },
    results = {
        {"natural-gas-seep-mk01", 1}
    }
}:add_unlock("oil-machines-mk01")

ITEM {
    type = "item",
    name = "natural-gas-seep-mk01",
    icon = "__base__/graphics/icons/pumpjack.png",
    icon_size = 64,
    flags = {},
    subgroup = "py-petroleum-handling-buildings-mk01",
    order = "a",
    place_result = "natural-gas-seep-mk01",
    stack_size = 10
}

ENTITY {
    type = "mining-drill",
    name = "natural-gas-seep-mk01",
    icon = "__base__/graphics/icons/pumpjack.png",
    icon_size = 64,
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 0.5, result = "natural-gas-seep-mk01"},
    resource_categories = {"bitumen-seep", "natural-gas"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    energy_source =
    {
      type = "electric",
      emissions_per_second_per_watt = 10 / 90000,
      usage_priority = "secondary-input"
    },
    energy_usage = "90kW",
    mining_speed = 1,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 2
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
    monitor_visualization_tint = {r=78, g=173, b=255},
    base_render_layer = "lower-object-above-shadow",
    base_picture =
    {
      sheets =
      {
        {
          filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
          priority = "extra-high",
          width = 131,
          height = 137,
          shift = util.by_pixel(-2.5, -4.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-base.png",
            priority = "extra-high",
            width = 261,
            height = 273,
            shift = util.by_pixel(-2.25, -4.75),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
          priority = "extra-high",
          width = 110,
          height = 111,
          draw_as_shadow = true,
          shift = util.by_pixel(6, 0.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-base-shadow.png",
            width = 220,
            height = 220,
            scale = 0.5,
            draw_as_shadow = true,
            shift = util.by_pixel(6, 0.5)
          }
        }
      }
    },
    animations =
    {
      north =
      {
        layers =
        {
          {
            priority = "high",
            filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
            line_length = 8,
            width = 104,
            height = 102,
            frame_count = 40,
            shift = util.by_pixel(-4, -24),
            animation_speed = 0.5,
            hr_version =
            {
              priority = "high",
              filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead.png",
              animation_speed = 0.5,
              scale = 0.5,
              line_length = 8,
              width = 206,
              height = 202,
              frame_count = 40,
              shift = util.by_pixel(-4, -24)
            }
          },
          {
            priority = "high",
            filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
            animation_speed = 0.5,
            draw_as_shadow = true,
            line_length = 8,
            width = 155,
            height = 41,
            frame_count = 40,
            shift = util.by_pixel(17.5, 14.5),
            hr_version =
            {
              priority = "high",
              filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead-shadow.png",
              animation_speed = 0.5,
              draw_as_shadow = true,
              line_length = 8,
              width = 309,
              height = 82,
              frame_count = 40,
              scale = 0.5,
              shift = util.by_pixel(17.75, 14.5)
            }
          }
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5
    },
    fast_replaceable_group = "pumpjack",
  }


ENTITY {
    type = "assembling-machine",
    name = "natural-gas-seep-mk01-base",
    icon = "__pypetroleumhandlinggraphics__/graphics/icons/coalbed-mk01.png",
	icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    max_health = 100,
    corpse = "medium-remnants",
    dying_explosion = "big-explosion",
    collision_box = {{ -1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{0,0}, {0,0}},
    match_animation_speed_to_activity = false,
    module_specification = {
        module_slots = 0
    },
    allowed_effects = {},
    crafting_categories = {"drilling-fluid"},
    crafting_speed = 1,
    energy_source = {
        type = "void",
    },
    energy_usage = "750kW",
    fixed_recipe = 'drilling-fluids',
    fluid_boxes = {
        --1
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1, 2}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_area = 10,
            base_level = -1,
            pipe_connections = {{type = "input", position = {-1, -2}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = -1,
            pipe_connections = {{type = "input", position = {1, -2}}}
        },
        {
            production_type = "input",
            pipe_picture = DATA.Pipes.pictures("assembling-machine-2", nil, {0.0, -0.96}, nil, nil),
            pipe_covers = DATA.Pipes.covers(false, true, true, true),
            base_level = -1,
            pipe_connections = {{type = "input", position = {1, 2}}}
        },
        off_when_no_fluid_recipe = false
    },
}