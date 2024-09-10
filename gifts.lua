if alien_material.mods_enabled.lootchests_default then
	local items = {
		{"alien_material:alien_pickaxe"},
		{"alien_material:alien_axe"},
		{"alien_material:alien_spade"},
		{"alien_material:alien_sword"},
		{"alien_material:alien_post_light"},
		{"alien_material:alien_bread"},
		{"alien_material:alien_apple"},
	}

	if alien_material.mods_enabled.x_bows then
		table.insert(items, {"alien_material:arrow_alien"})
	end

	if alien_material.mods_enabled.armor_3d then
		table.insert(items, {"alien_material:alien_boots"})
		table.insert(items, {"alien_material:alien_helmet"})
		table.insert(items, {"alien_material:alien_leggings"})
		table.insert(items, {"alien_material:alien_chestplate"})
		table.insert(items, {"alien_material:alien_shield"})
	end

	lootchests.add_to_loot_table("lootchests_default:ocean_chest", items)
	lootchests.add_to_loot_table("lootchests_default:urn", items)
	lootchests.add_to_loot_table("lootchests_default:stone_chest", items)
	lootchests.add_to_loot_table("lootchests_default:basket", items)
	lootchests.add_to_loot_table("lootchests_default:barrel", items)
end

if alien_material.mods_enabled.dungeon_loot then
	dungeon_loot.register({
		{name = "alien_material:alien_pickaxe", chance = 0.1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_axe", chance = 0.1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_spade", chance = 0.1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_sword", chance = 0.1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_post_light", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_bread", chance = 0.3, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_apple", chance = 0.3, count = {1, 1}, y = {-31000, 31000}},
	})

	if alien_material.mods_enabled.x_bows then
		dungeon_loot.register({
			{name = "alien_material:arrow_alien", chance = 0.3, count = {1, 3}, y = {-31000, 31000}},
		})
	end

	if alien_material.mods_enabled.armor_3d then
		dungeon_loot.register({
			{name = "alien_material:alien_boots", chance = 0.1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_helmet", chance = 0.1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_leggings", chance = 0.1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_chestplate", chance = 0.1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_shield", chance = 0.1, count = {1, 1}, y = {-31000, 31000}},
		})
	end
end

if alien_material.mods_enabled.bones_loot then
	bones_loot.register_loot({
		{name = "alien_material:alien_pickaxe", chance = 0.1, count = {1, 1}, types = {"underworld_warrior"}},
		{name = "alien_material:alien_axe", chance = 0.1, count = {1, 1}, types = {"underworld_warrior"}},
		{name = "alien_material:alien_spade", chance = 0.1, count = {1, 1}, types = {"underworld_warrior"}},
		{name = "alien_material:alien_sword", chance = 0.1, count = {1, 1}, types = {"underworld_warrior"}},
		{name = "alien_material:alien_post_light", chance = 0.3, count = {1, 1}, types = {"underworld_warrior"}},
		{name = "alien_material:alien_bread", chance = 0.3, count = {1, 1}, types = {"underworld_warrior"}},
		{name = "alien_material:alien_apple", chance = 0.3, count = {1, 1}, types = {"underworld_warrior"}},
	})

	if alien_material.mods_enabled.x_bows then
		bones_loot.register_loot({
			{name = "alien_material:arrow_alien", chance = 0.3, count = {1, 3}, types = {"underworld_warrior"}},
		})
	end

	if alien_material.mods_enabled.armor_3d then
		bones_loot.register_loot({
			{name = "alien_material:alien_boots", chance = 0.1, count = {1, 1}, types = {"underworld_warrior"}},
			{name = "alien_material:alien_helmet", chance = 0.1, count = {1, 1}, types = {"underworld_warrior"}},
			{name = "alien_material:alien_leggings", chance = 0.1, count = {1, 1}, types = {"underworld_warrior"}},
			{name = "alien_material:alien_chestplate", chance = 0.1, count = {1, 1}, types = {"underworld_warrior"}},
			{name = "alien_material:alien_shield", chance = 0.1, count = {1, 1}, types = {"underworld_warrior"}},
		})
	end
end

if alien_material.mods_enabled.handle_schematics then
	table.insert(handle_schematics.random_chest_content, {
		"alien_material:alien_pickaxe",
		1,
		1,
		1,
		chest_default = 1,
		farm_tiny = 1,
		farm_full = 1,
		shed = 1,
		hut = 1,
		chest_work = 1,
		lumberjack = 1,
		forge = 1,
		guard = 1,
		ship = 1,
		church = 1,
		library = 1,
		chest_private = 1,
		wreck = 1,
		tavern = 1,
		inn = 1,
		bakery = 1,
		shelf = 1,
	})

	table.insert(handle_schematics.random_chest_content, {
		"alien_material:alien_axe",
		1,
		1,
		1,
		chest_default = 1,
		farm_tiny = 1,
		farm_full = 1,
		shed = 1,
		hut = 1,
		chest_work = 1,
		lumberjack = 1,
		forge = 1,
		guard = 1,
		ship = 1,
		church = 1,
		library = 1,
		chest_private = 1,
		wreck = 1,
		tavern = 1,
		inn = 1,
		bakery = 1,
		shelf = 1,
	})

	table.insert(handle_schematics.random_chest_content, {
		"alien_material:alien_spade",
		1,
		1,
		1,
		chest_default = 1,
		farm_tiny = 1,
		farm_full = 1,
		shed = 1,
		hut = 1,
		chest_work = 1,
		lumberjack = 1,
		forge = 1,
		guard = 1,
		ship = 1,
		church = 1,
		library = 1,
		chest_private = 1,
		wreck = 1,
		tavern = 1,
		inn = 1,
		bakery = 1,
		shelf = 1,
	})

	table.insert(handle_schematics.random_chest_content, {
		"alien_material:alien_sword",
		1,
		1,
		1,
		chest_default = 1,
		farm_tiny = 1,
		farm_full = 1,
		shed = 1,
		hut = 1,
		chest_work = 1,
		lumberjack = 1,
		forge = 1,
		guard = 1,
		ship = 1,
		church = 1,
		library = 1,
		chest_private = 1,
		wreck = 1,
		tavern = 1,
		inn = 1,
		bakery = 1,
		shelf = 1,
	})

	table.insert(handle_schematics.random_chest_content, {
		"alien_material:alien_post_light",
		2,
		1,
		1,
		chest_default = 1,
		farm_tiny = 1,
		farm_full = 1,
		shed = 1,
		hut = 1,
		chest_work = 1,
		lumberjack = 1,
		forge = 1,
		guard = 1,
		ship = 1,
		church = 1,
		library = 1,
		chest_private = 1,
		wreck = 1,
		tavern = 1,
		inn = 1,
		bakery = 1,
		shelf = 1,
	})

	table.insert(handle_schematics.random_chest_content, {
		"alien_material:alien_bread",
		5,
		1,
		1,
		chest_default = 1,
		farm_tiny = 1,
		farm_full = 1,
		shed = 1,
		hut = 1,
		chest_work = 1,
		lumberjack = 1,
		forge = 1,
		guard = 1,
		ship = 1,
		church = 1,
		library = 1,
		chest_private = 1,
		wreck = 1,
		tavern = 1,
		inn = 1,
		bakery = 1,
		shelf = 1,
	})

	table.insert(handle_schematics.random_chest_content, {
		"alien_material:alien_apple",
		5,
		1,
		1,
		chest_default = 1,
		farm_tiny = 1,
		farm_full = 1,
		shed = 1,
		hut = 1,
		chest_work = 1,
		lumberjack = 1,
		forge = 1,
		guard = 1,
		ship = 1,
		church = 1,
		library = 1,
		chest_private = 1,
		wreck = 1,
		tavern = 1,
		inn = 1,
		bakery = 1,
		shelf = 1,
	})

	if alien_material.mods_enabled.x_bows then
		table.insert(handle_schematics.random_chest_content, {
			"alien_material:arrow_alien",
			1,
			3,
			1,
			chest_default = 1,
			farm_tiny = 1,
			farm_full = 1,
			shed = 1,
			hut = 1,
			chest_work = 1,
			lumberjack = 1,
			forge = 1,
			guard = 1,
			ship = 1,
			church = 1,
			library = 1,
			chest_private = 1,
			wreck = 1,
			tavern = 1,
			inn = 1,
			bakery = 1,
			shelf = 1,
		})
	end

	if alien_material.mods_enabled.armor_3d then
		table.insert(handle_schematics.random_chest_content, {
			"alien_material:alien_boots",
			1,
			1,
			1,
			chest_default = 1,
			farm_tiny = 1,
			farm_full = 1,
			shed = 1,
			hut = 1,
			chest_work = 1,
			lumberjack = 1,
			forge = 1,
			guard = 1,
			ship = 1,
			church = 1,
			library = 1,
			chest_private = 1,
			wreck = 1,
			tavern = 1,
			inn = 1,
			bakery = 1,
			shelf = 1,
		})

		table.insert(handle_schematics.random_chest_content, {
			"alien_material:alien_helmet",
			1,
			1,
			1,
			chest_default = 1,
			farm_tiny = 1,
			farm_full = 1,
			shed = 1,
			hut = 1,
			chest_work = 1,
			lumberjack = 1,
			forge = 1,
			guard = 1,
			ship = 1,
			church = 1,
			library = 1,
			chest_private = 1,
			wreck = 1,
			tavern = 1,
			inn = 1,
			bakery = 1,
			shelf = 1,
		})

		table.insert(handle_schematics.random_chest_content, {
			"alien_material:alien_leggings",
			1,
			1,
			1,
			chest_default = 1,
			farm_tiny = 1,
			farm_full = 1,
			shed = 1,
			hut = 1,
			chest_work = 1,
			lumberjack = 1,
			forge = 1,
			guard = 1,
			ship = 1,
			church = 1,
			library = 1,
			chest_private = 1,
			wreck = 1,
			tavern = 1,
			inn = 1,
			bakery = 1,
			shelf = 1,
		})

		table.insert(handle_schematics.random_chest_content, {
			"alien_material:alien_chestplate",
			1,
			1,
			1,
			chest_default = 1,
			farm_tiny = 1,
			farm_full = 1,
			shed = 1,
			hut = 1,
			chest_work = 1,
			lumberjack = 1,
			forge = 1,
			guard = 1,
			ship = 1,
			church = 1,
			library = 1,
			chest_private = 1,
			wreck = 1,
			tavern = 1,
			inn = 1,
			bakery = 1,
			shelf = 1,
		})

		table.insert(handle_schematics.random_chest_content, {
			"alien_material:alien_shield",
			1,
			1,
			1,
			chest_default = 1,
			farm_tiny = 1,
			farm_full = 1,
			shed = 1,
			hut = 1,
			chest_work = 1,
			lumberjack = 1,
			forge = 1,
			guard = 1,
			ship = 1,
			church = 1,
			library = 1,
			chest_private = 1,
			wreck = 1,
			tavern = 1,
			inn = 1,
			bakery = 1,
			shelf = 1,
		})
	end
end
