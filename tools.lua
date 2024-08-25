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
	Tools
]]--

minetest.register_tool("alien_material:alien_pickaxe", {
	description = alien_material.S("Alien Pickaxe"),
	inventory_image = "alien_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 1,
		groupcaps = {
			cracky = {
				maxlevel = 3,
				uses = 10,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1},
})

minetest.register_tool("alien_material:alien_axe", {
	description = alien_material.S("Alien Axe"),
	inventory_image = "alien_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 1,
		groupcaps = {
			choppy = {
				maxlevel = 3,
				uses = 10,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
		},
		damage_groups = {fleshy=7},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1},
})

minetest.register_tool("alien_material:alien_spade", {
	description = alien_material.S("Alien Spade"),
	inventory_image = "alien_spade.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level = 1,
		groupcaps = {
			crumbly = {
				maxlevel = 3,
				uses = 10,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
		},
		damage_groups = {fleshy=4},
		sound = {breaks = "default_tool_breaks"},
		groups = {shovel = 1},
	},
})

minetest.register_tool("alien_material:alien_sword", {
	description = alien_material.S("Alien Sword"),
	inventory_image = "alien_sword.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level = 1,
		groupcaps = {
			snappy = {
				maxlevel = 3,
				uses = 10,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
		},
		damage_groups = {fleshy=30},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1},
})
