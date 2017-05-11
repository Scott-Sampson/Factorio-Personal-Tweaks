require("prototypes.recipes")
require("prototypes.technology")

-- Lighting
data.raw["player"]["player"].light =
    {
      {
        intensity = 0.9,
        size = 150,
      } 
    }
data.raw["car"]["car"].light =
	{
	  {
		intensity = 0.9,
		size = 150,
	  }
   }
data.raw["car"]["tank"].light =
	{
	  {
		intensity = 0.9,
		size = 150,
	  }
   }
data.raw["locomotive"]["locomotive"].front_light =
   {
	  {
		intensity = 0.9,
		size = 150,
	  },
	  {
		intensity = 0.9,
		size = 150,
	  }
   }
data.raw["locomotive"]["locomotive"].stand_by_light =
   {
	  {
		color = {b=1},
		shift = {-0.6, -3.5},
		size = 2,
		intensity = 0.5
	  },
	  {
	  intensity = 0.9,
	  size = 60,
	  }
   }
-- Fluid Colours

data.raw["fluid"]["water"]["base_color"] = {r=0.03, g=0.25, b=0.35}
data.raw["fluid"]["water"]["flow_color"] = {r=0.35, g=0.8, b=0.87}
data.raw["fluid"]["heavy-oil"]["base_color"] = {r=0.57, g=0.1, b=0}
data.raw["fluid"]["heavy-oil"]["flow_color"] = {r=1, g=0.51, b=0.07}
data.raw["fluid"]["light-oil"]["base_color"] = {r=0.57, g=0.33, b=0}
data.raw["fluid"]["light-oil"]["flow_color"] = {r=1, g=0.73, b=0.07}
data.raw["fluid"]["petroleum-gas"]["base_color"] = {r=0.42, g=0.38, b=0.44}
data.raw["fluid"]["petroleum-gas"]["flow_color"] = {r=1, g=1, b=1}
data.raw["fluid"]["lubricant"]["base_color"] = {r=0.1, g=0.24, b=0.02}
data.raw["fluid"]["lubricant"]["flow_color"] = {r=0.43, g=0.75, b=0.31}
data.raw["fluid"]["sulfuric-acid"]["base_color"] = {r=1, g=0.5, b=0}
data.raw["fluid"]["sulfuric-acid"]["flow_color"] = {r=1, g=1, b=0}