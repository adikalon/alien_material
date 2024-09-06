--[[
	This file is part of the Alien Material, a mod which contains much about aliens!

	Copyright (C) 2020-2024  debiankaios

	This program is free software: you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation, either version 3 of the License, or
	(at your option) any later version.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program.  If not, see <https://www.gnu.org/licenses/>.

	==============
	Items
]]--

-- Food
minetest.register_craftitem("alien_material:alien_apple", {
	inventory_image = "alien_apple.png",
	description = alien_material.S("Alien Apple"),
	on_use = minetest.item_eat(20),
	groups = {food = 20, eatable=20},
})

minetest.register_craftitem("alien_material:alien_bread", {
	inventory_image = "alien_bread.png",
	description = alien_material.S("Alien Bread"),
	on_use = minetest.item_eat(20),
	groups = {food = 20, eatable=20},
})


-- Alien Diamond
minetest.register_node("alien_material:alien_diamond_block", {
	tiles = {
		"alien_diamond_block.png"
	},
	groups = {cracky = 1},
	drop = "alien_material:alien_diamond_block",
	description = alien_material.S("Alien Diamond Block"),
	light_source = default.LIGHT_MAX,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("alien_material:alien_diamond_ore", {
	tiles = {
		"default_stone.png^alien_diamond_ore.png"
	},
	groups = {cracky = 1},
	drop = "alien_material:alien_diamond",
	description = alien_material.S("Alien Diamond Ore"),
	is_ground_content = true,
	legacy_mineral = true,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("alien_material:alien_diamond", {
	inventory_image = "alien_diamond.png",
	description = alien_material.S("Alien Diamond"),
})



-- Alien Mese
minetest.register_node("alien_material:alien_mese_ore", {
	description = alien_material.S("Alien Mese Ore"),
	tiles = {"default_stone.png^alien_mese_ore.png"},
	groups = {cracky = 1},
	is_ground_content = true,
	legacy_mineral = true,
	drop = "alien_material:alien_mese",
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("alien_material:alien_mese_block", {
	tiles = {
		"alien_mese_block.png"
	},
	groups = {cracky = 1},
	is_ground_content = true,
	legacy_mineral = true,
	drop = "alien_material:alien_mese_block",
	description = alien_material.S("Alien Mese Block"),
	light_source = default.LIGHT_MAX/2,
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("alien_material:alien_mese", {
	inventory_image = "alien_mese.png",
	description = alien_material.S("Alien Mese"),
})

minetest.register_craftitem("alien_material:alien_mese_fragment", {
	inventory_image = "alien_mese_fragment.png",
	description = alien_material.S("Alien Mese fragments"),
})


-- Alien Ore
minetest.register_craftitem("alien_material:alien_ingot", {
	inventory_image = "alien_ingot.png",
	description = alien_material.S("Alien Ingot"),
})

minetest.register_node("alien_material:alien_block", {
	tiles = {
		"alien_block.png"
	},
	groups = {cracky = 1},
	drop = "alien_material:alien_block",
	description = alien_material.S("Alien Block"),
	light_source = default.LIGHT_MAX,
	sounds = default.node_sound_metal_defaults(),
})

minetest.register_node("alien_material:alien_post_light", {
	description = alien_material.S("Alien Post Light"),
	tiles = {"default_fence_wood.png", "default_fence_wood.png",
		"alien_post_light_side.png", "alien_post_light_side.png",
		"alien_post_light_side.png", "alien_post_light_side.png"},
	wield_image = "alien_post_light_side.png",
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-2 / 16, -8 / 16, -2 / 16, 2 / 16, 8 / 16, 2 / 16},
		},
	},
	paramtype = "light",
	light_source = default.LIGHT_MAX,
	sunlight_propagates = true,
	is_ground_content = false,
	groups = {choppy = 2, oddly_breakable_by_hand = 2, flammable = 2},
	sounds = default.node_sound_wood_defaults(),
})

-- X Bows
if alien_material.mods_enabled.x_bows then
	XBows:register_arrow("arrow_alien", {
		description = alien_material.S("Arrow Alien"),
		short_description = alien_material.S("Arrow Alien"),
		inventory_image = "x_bows_arrow_alien.png",
		custom = {
			mod_name = "alien_material",
			recipe = {
				{ "default:flint" },
				{ "alien_material:alien_diamond" },
				{ "group:wool" },
			},
			tool_capabilities = {
				full_punch_interval = 0.3,
				max_drop_level = 1,
				damage_groups = { fleshy = 30 },
			},
		}
	})

	XBows:update_bow_allowed_ammunition("bow_wood", {"alien_material:arrow_alien"})
end

if alien_material.mods_enabled.toolranks then
	minetest.override_item("alien_material:alien_sword", {
		description = toolranks.create_description(alien_material.S("Alien Sword"), 0, 0),
		original_description = alien_material.S("Alien Sword"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("alien_material:alien_pickaxe", {
		description = toolranks.create_description(alien_material.S("Alien Pickaxe"), 0, 0),
		original_description = alien_material.S("Alien Pickaxe"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("alien_material:alien_axe", {
		description = toolranks.create_description(alien_material.S("Alien Axe"), 0, 0),
		original_description = alien_material.S("Alien Axe"),
		after_use = toolranks.new_afteruse
	})

	minetest.override_item("alien_material:alien_spade", {
		description = toolranks.create_description(alien_material.S("Alien Spade"), 0, 0),
		original_description = alien_material.S("Alien Spade"),
		after_use = toolranks.new_afteruse
	})
end
