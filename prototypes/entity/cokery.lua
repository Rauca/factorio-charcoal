require ("util")
data:extend(
{
  {
    type = "assembling-machine",
    name = "cokery",
    icon = "__Charcoal__/graphics/items/cokery.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "cokery"},
    max_health = 500,
    corpse = "medium-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"cokery-smelting"},
    result_inventory_size = 1,
    energy_usage = "180kW",
    ingredient_count = 2,
    crafting_speed = 2,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      emissions = 0.02,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          frequency = 10,
          position = {0.7, -1.2},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/steel-furnace/steel-furnace.png",
      priority = "high",
      width = 140,
      height = 76,
      frame_count = 1,
      shift = {1.21875, -0.125}
    },
    working_visualisations =
    {
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-fire.png",
          priority = "high",
          line_length = 8,
          width = 29,
          height = 41,
          frame_count = 48,
          axially_symmetrical = false,
          direction_count = 1,
          shift = {-0.01563, 0.171875},
        },
        light = {intensity = 1, size = 1}
      },
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        effect = "flicker", -- changes alpha based on energy source light intensity
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-glow.png",
          priority = "high",
          width = 60,
          height = 43,
          frame_count = 1,
          shift = {0.03125, 0.640625},
          blend_mode = "additive"
        }
      },
      {
        north_position = {0.0, 0.0},
        east_position = {0.0, 0.0},
        south_position = {0.0, 0.0},
        west_position = {0.0, 0.0},
        effect = "flicker", -- changes alpha based on energy source light intensity
        animation =
        {
          filename = "__base__/graphics/entity/steel-furnace/steel-furnace-working-lighting.png",
          priority = "high",
          line_length = 8,
          width = 58,
          height = 59,
          frame_count = 1,
          axially_symmetrical = false,
          direction_count = 1,
          shift = {0.09375, 0.046875},
          blend_mode = "additive"
        }
      },
    },
    --fast_replaceable_group = "furnace"

  fluid_boxes =
  {
    {
      production_type = "input",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 10,
      base_level = -1,
      pipe_connections = {{ type="input", position = {-0.5, 1} }}
    },
    {
      production_type = "output",
      pipe_picture = assembler2pipepictures(),
      pipe_covers = pipecoverspictures(),
      base_area = 10,
      base_level = 1,
      pipe_connections = {{ type="output", position = {-0.5, 1} }}
    },
    off_when_no_fluid_recipe = true
  },
  pipe_covers = pipecoverspictures()
}
})
