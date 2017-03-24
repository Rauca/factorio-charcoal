   data:extend(
{
	{
		type = "fluid",
		name = "creosote",
		default_temperature = 25,
		heat_capacity = "1KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.5, g=0.5, b=0.5},
		max_temperature = 100,
		icon = "__base__/graphics/icons/fluid/crude-oil.png",
		pressure_to_speed_ratio = 0.4,
		flow_to_energy_ratio = 0.59,
		order = "a[fluid]-b[creosote]"
	},

}
)
