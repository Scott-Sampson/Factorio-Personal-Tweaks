-- Reach / Build Distance
data.raw.player.player.build_distance = 10000
data.raw.player.player.reach_distance = 10000
data.raw.player.player.reach_resource_distance = 10000

-- Inventory Size
data.raw["player"]["player"].inventory_size = 120

-- Underground Belt Distance

data.raw["underground-belt"]["underground-belt"].max_distance = 6
data.raw["underground-belt"]["fast-underground-belt"].max_distance = 9
data.raw["underground-belt"]["express-underground-belt"].max_distance = 12

-- bigger stack sizes

local StackSize = 1000
local factor_default = 10
local factor_barrel = 25

for _,dat in pairs(data.raw) do
   	for _,items in pairs(dat) do
      	if items.stack_size and items.stack_size > 1 and items.stack_size < StackSize then
           	if items.stack_size * factor_default < StackSize then
				if string.find(items.name, "barrel") then
					items.stack_size = items.stack_size * factor_barrel
				else
					items.stack_size = items.stack_size * factor_default
				end
			else
				items.stack_size = StackSize
			end
      	end
   	end
end