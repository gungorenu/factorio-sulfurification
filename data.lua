--require("prototypes.category")
--require("prototypes.items")
--require("prototypes.entities")
require("prototypes.recipes")
--require("prototypes.technology")

-- data.raw.recipe["sulfuric-acid"].energy_required = 3
data.raw.recipe["sulfurification-coalwashing"].order = "g[sulfurification-coalwashing]"
data.raw.recipe["sulfurification-vulcanization"].order = "f[sulfurification-vulcanization]"

table.insert(data.raw["technology"]["sulfur-processing"].effects,
	{
		type = "unlock-recipe",
		recipe = "sulfurification-vulcanization"
	}
)
table.insert(data.raw["technology"]["sulfur-processing"].effects,
	{
		type = "unlock-recipe",
		recipe = "sulfurification-coalwashing"
	}
)


for k, v in pairs(data.raw.module) do
  if v.name:find("productivity%-module") and v.limitation then
    table.insert(v.limitation, "sulfurification-vulcanization")
    table.insert(v.limitation, "sulfurification-coalwashing")
  end
end

