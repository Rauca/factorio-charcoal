data:extend(
{
   {
    type = "recipe",
    name = "charcoal",
    category = "cokery-smelting",
    energy_required = 8,
    ingredients = {
      {type="item", name="raw-wood", amount=1}
    },
    results=
		{
		  {type="item", name="charcoal", amount=1},
		  {type="fluid", name="creosote", amount=25}
		},
    enabled = false,
    icon = "__Charcoal__/graphics/recipes/charcoal-creosote.png",
    subgroup = "fluid-recipes"
  },
  {
    type = "recipe",
    name = "charcoal-coal",
    category = "cokery-smelting",
    energy_required = 10,
    ingredients = {
      {type="item", name="charcoal", amount=12}
    },
    results=
		{
		  {type="item", name="coal", amount=10}
		},
    enabled = false
  }
}
)
