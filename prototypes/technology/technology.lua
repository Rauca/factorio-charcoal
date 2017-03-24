--table.insert(data.raw["technology"]["advanced-material-processing"].effects,{type = "unlock-recipe",recipe = "charcoal"})
--table.insert(data.raw["technology"]["advanced-material-processing"].effects,{type = "unlock-recipe",recipe = "charcoal-coal"})

data:extend({
  {
    type = "technology",
    name = "coal-processing",
    icon_size = 128,
    icon = "__Charcoal__/graphics/technology/charcoal_128.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "charcoal"
      },
      {
        type = "unlock-recipe",
        recipe = "cokery"
      }
    },
    prerequisites = {"advanced-material-processing"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "c-c-b"
  },
  {
    type = "technology",
    name = "coal-processing-2",
    icon_size = 128,
    icon = "__Charcoal__/graphics/technology/coal-coke_128.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "charcoal-coal"
      }
    },
    prerequisites = {"coal-processing"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"science-pack-1", 2},
        {"science-pack-2", 2},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "c-c-b"
  },
  {
    type = "technology",
    name = "coal-processing-3",
    icon_size = 128,
    icon = "__Charcoal__/graphics/technology/coal-coke_128.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "coal-coke"
      }
    },
    prerequisites = {"coal-processing-2"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 3},
        {"science-pack-3", 2},
        {"alien-science-pack", 1}
      },
      time = 45
    },
    order = "c-c-b"
  }
})
