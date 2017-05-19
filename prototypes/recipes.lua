data.raw.recipe["rail"].ingredients[1][1] = "stone-brick";
data.raw.recipe["concrete"].ingredients[2][1] = "iron-stick";
data:extend(
{
  {
    type = "recipe",
    name = "steel-plate",
    category = "smelting",
    normal =
    {
      enabled = false,
      energy_required = 17.5,
      ingredients = {{"iron-plate", 2}},
      result = "steel-plate"
    },
    expensive =
    {
      enabled = false,
      energy_required = 35,
      ingredients = {{"iron-plate", 10}},
      result = "steel-plate"
    }
  }
}

)