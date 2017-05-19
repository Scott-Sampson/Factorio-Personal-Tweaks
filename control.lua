local CHUNK_SIZE = 32

local function removeDecorationsArea(surface, area )
	for _, entity in pairs(surface.find_entities_filtered{area = area, type="decorative"}) do
		if (entity.name ~= "red-bottleneck" and entity.name ~= "yellow-bottleneck" and entity.name ~= "green-bottleneck") then
			entity.destroy()
		end
	end
end

local function removeDecorations(surface, x, y, width, height )
	removeDecorationsArea(surface, {{x, y}, {x + width, y + height}})
end

local function clearDecorations()
	local surface = game.surfaces["nauvis"]
	for chunk in surface.get_chunks() do
		removeDecorations(surface, chunk.x * CHUNK_SIZE, chunk.y * CHUNK_SIZE, CHUNK_SIZE - 1, CHUNK_SIZE - 1)
	end
	
	for _, player in pairs(game.players) do
		player.print("Decorations removed")
	end
end

script.on_event(defines.events.on_chunk_generated, function(event)
	removeDecorationsArea( event.surface, event.area )
end)

script.on_event(defines.events.on_tick, function(event)

	if not global.fullClear then
		clearDecorations()
		global.fullClear = true
	end
	
	script.on_event(defines.events.on_tick, nil)
end)

script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
		local inventory = player.get_inventory(defines.inventory.player_quickbar)
			 inventory.clear()
			 inventory.set_filter(1,"transport-belt")
			 inventory.set_filter(2,"underground-belt")
			 inventory.set_filter(3,"splitter")
			 inventory.set_filter(4,"inserter")
			 inventory.set_filter(5,"small-electric-pole")
			 inventory.set_filter(6,"medium-electric-pole")
			 inventory.set_filter(7,"assembling-machine-1")
			 inventory.set_filter(8,"electric-mining-drill")
			 inventory.set_filter(9,"stone-furnace")
			 inventory.set_filter(10,"poison-capsule")
	
	-- Personal Equipment
		player.insert{name="iron-axe", count=5}	
		player.insert{name="firearm-magazine", count=50}
		player.insert{name="burner-mining-drill", count=10}
		player.insert{name="stone-furnace", count=10}
		player.insert{name="poison-capsule", count=20}
	
	-- Resources
		player.insert{name="coal", count=50}
		player.insert{name="iron-plate", count=50}
		player.insert{name="copper-plate", count=50}
		player.insert{name="stone", count=50}
		player.insert{name="science-pack-1", count=10} -- Allows immediate research of Automation
	end
)