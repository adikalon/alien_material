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
	description = "Alien Pickaxe",
	inventory_image = "alien_pickaxe.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level = 1,
		groupcaps = {
			cracky = {
				maxlevel = 5,
				uses = 65536,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
		},
		damage_groups = {cracky=2},
	},
})

minetest.register_tool("alien_material:alien_axe", {
	description = "Alien Axe",
	inventory_image = "alien_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level = 1,
		groupcaps = {
			choppy = {
				maxlevel = 5,
				uses = 65536,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
		},
		damage_groups = {choppy=2},
	},
})

minetest.register_tool("alien_material:alien_spade", {
	description = "Alien Spade",
	inventory_image = "alien_spade.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level = 1,
		groupcaps = {
			crumbly = {
				maxlevel = 5,
				uses = 65536,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
		},
		damage_groups = {crumbly=2},
	},
})





minetest.register_tool("alien_material:alien_sword", {
	description = "Alien Sword",
	inventory_image = "alien_sword.png",
	tool_capabilities = {
		full_punch_interval = 0,3,
		max_drop_level = 1,
		groupcaps = {
			fleshy = {
				maxlevel = 5,
				uses = 65536,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
		},
		damage_groups = {fleshy=80},
	},
})





minetest.register_tool("alien_material:alien_multitool", {
	description = "Alien Multitool",
	inventory_image = "alien_multitool.png",
	tool_capabilities = {
		full_punch_interval = 0.3,
		max_drop_level = 1,
		groupcaps = {
			fleshy = {
				maxlevel = 5,
				uses = 65536,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
			crumbly = {
				maxlevel = 5,
				uses = 65536,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
			choppy = {
				maxlevel = 5,
				uses = 65536,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
			cracky = {
				maxlevel = 5,
				uses = 65536,
				times = {[1]=1.00, [2]=0.50, [3]=0.20}
			},
		},
		damage_groups = {fleshy=80, crumbly=2, choppy=2, cracky=2},
	},
})
