-- recipes, sulfur and plastic bar alternates
data:extend(
{
  {
    type = "recipe",
    name = "sulfurification-vulcanization",
    icon = "__Sulfurification__/graphics/icons/vulcanization.png",
    icon_size = 32,
    category = "chemistry",
    subgroup = "raw-material",
    normal =
    {
      enabled = "false",
      energy_required = 5,
      ingredients =
      {
        {type = "item", name = "sulfur", amount = 3},
        {type = "fluid", name = "steam", amount = 30},
        {type = "item", name = "plastic-bar", amount = 1},
      },
	  result = "plastic-bar",
	  result_count = 2,
    },
    expensive = 
    {
      enabled = "false",
      energy_required = 5,
      ingredients =
      {
        {type = "item", name = "sulfur", amount = 5},
        {type = "fluid", name = "steam", amount = 30},
        {type = "item", name = "plastic-bar", amount = 1},
      },
	  result = "plastic-bar",
	  result_count = 2,
    }
  },
  {
    type = "recipe",
    name = "sulfurification-coalwashing",
    icon = "__Sulfurification__/graphics/icons/coalwashing.png",
    icon_size = 32,
    subgroup = "raw-material",
    category = "chemistry",
    normal =
    {
      enabled = "false",
      energy_required = 3,
      ingredients =
      {
        {type = "item", name = "coal", amount = 5},
        {type = "fluid", name = "water", amount = 50},
      },
      results = 
      {
        {type = "item", name = "coal", amount = 3},
        {type = "item", name = "sulfur", amount = 1},
      }
    },
    expensive = 
    {
      enabled = "false",
      energy_required = 3,
      ingredients =
      {
        {type = "item", name = "coal", amount = 5},
        {type = "fluid", name = "water", amount = 50},
      },
      results = 
      {
        {type = "item", name = "coal", amount = 2},
        {type = "item", name = "sulfur", amount = 1},
      }
    }
  },
})
