if minetest.get_modpath("mobs_npc") then
	table.insert(mobs.human.items, {"alien_material:alien_pickaxe", "default:gold_ingot 80", 10})
	table.insert(mobs.human.items, {"alien_material:alien_axe", "default:gold_ingot 80", 10})
	table.insert(mobs.human.items, {"alien_material:alien_spade", "default:gold_ingot 70", 10})
	table.insert(mobs.human.items, {"alien_material:alien_sword", "default:gold_ingot 80", 10})
	table.insert(mobs.human.items, {"alien_material:alien_post_light", "default:gold_ingot 80", 10})
	table.insert(mobs.human.items, {"alien_material:alien_bread", "default:gold_ingot 25", 10})
	table.insert(mobs.human.items, {"alien_material:alien_apple", "default:gold_ingot 25", 10})

	if minetest.get_modpath("x_bows") then
		table.insert(mobs.human.items, {"alien_material:arrow_alien", "default:gold_ingot 10", 10})
	end

	if minetest.get_modpath("3d_armor") then
		table.insert(mobs.human.items, {"alien_material:alien_boots", "default:gold_ingot 90", 10})
		table.insert(mobs.human.items, {"alien_material:alien_helmet", "default:gold_ingot 90", 10})
		table.insert(mobs.human.items, {"alien_material:alien_leggings", "default:gold_ingot 90", 10})
		table.insert(mobs.human.items, {"alien_material:alien_chestplate", "default:gold_ingot 90", 10})
		table.insert(mobs.human.items, {"alien_material:alien_shield", "default:gold_ingot 90", 10})
	end
end

if minetest.get_modpath("lootchests_default") then
	local items = {
		{"alien_material:alien_pickaxe"},
		{"alien_material:alien_axe"},
		{"alien_material:alien_spade"},
		{"alien_material:alien_sword"},
		{"alien_material:alien_post_light"},
		{"alien_material:alien_bread"},
		{"alien_material:alien_apple"},
	}

	if minetest.get_modpath("x_bows") then
		table.insert(items, {"alien_material:arrow_alien"})
	end

	if minetest.get_modpath("3d_armor") then
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

if minetest.get_modpath("dungeon_loot") then
	dungeon_loot.register({
		{name = "alien_material:alien_pickaxe", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_axe", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_spade", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_sword", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_post_light", chance = 5, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_bread", chance = 10, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_apple", chance = 10, count = {1, 1}, y = {-31000, 31000}},
	})

	if minetest.get_modpath("x_bows") then
		dungeon_loot.register({
			{name = "alien_material:arrow_alien", chance = 5, count = {1, 1}, y = {-31000, 31000}},
		})
	end

	if minetest.get_modpath("3d_armor") then
		dungeon_loot.register({
			{name = "alien_material:alien_boots", chance = 1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_helmet", chance = 1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_leggings", chance = 1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_chestplate", chance = 1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_shield", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		})
	end
end

if minetest.get_modpath("bones_loot") then
	bones_loot.register_loot({
		{name = "alien_material:alien_pickaxe", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_axe", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_spade", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_sword", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_post_light", chance = 5, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_bread", chance = 10, count = {1, 1}, y = {-31000, 31000}},
		{name = "alien_material:alien_apple", chance = 10, count = {1, 1}, y = {-31000, 31000}},
	})

	if minetest.get_modpath("x_bows") then
		bones_loot.register_loot({
			{name = "alien_material:arrow_alien", chance = 5, count = {1, 1}, y = {-31000, 31000}},
		})
	end

	if minetest.get_modpath("3d_armor") then
		bones_loot.register_loot({
			{name = "alien_material:alien_boots", chance = 1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_helmet", chance = 1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_leggings", chance = 1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_chestplate", chance = 1, count = {1, 1}, y = {-31000, 31000}},
			{name = "alien_material:alien_shield", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		})
	end
end

if minetest.get_modpath("handle_schematics") then
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
		"alien_material:alien_bread",
		10,
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
		10,
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

	if minetest.get_modpath("x_bows") then
		table.insert(handle_schematics.random_chest_content, {
			"alien_material:arrow_alien",
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
	end

	if minetest.get_modpath("3d_armor") then
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
