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
	Armor
]]--

armor:register_armor("alien_material:alien_boots", {
	description = alien_material.S("Alien Boots"),
	inventory_image = "armor_inv_boots_alien.png",
	groups = {armor_fire=4, armor_feet=1,
		armor_heal=6, armor_use=50,
		physics_jump= 0.8, physics_speed=1.5, physics_gravity=0},
	armor_groups = {fleshy=6, radiation=16},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	texture = "armor_boots_alien.png",
	preview = "armor_boots_alien_preview.png",
})

armor:register_armor("alien_material:alien_helmet", {
	description = alien_material.S("Alien Helmet"),
	inventory_image = "armor_inv_helmet_alien.png",
	groups = {armor_head=1, armor_heal=7, armor_use=50},
	armor_groups = {fleshy=7, radiation=16},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	texture = "armor_helmet_alien.png",
	preview = "armor_helmet_alien_preview.png",
})

armor:register_armor("alien_material:alien_leggings", {
	description = alien_material.S("Alien Leggings"),
	inventory_image = "armor_inv_leggings_alien.png",
	groups = {armor_legs=1, armor_heal=13, armor_use=50},
	armor_groups = {fleshy=13, radiation=8},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	texture = "armor_leggings_alien.png",
	preview = "armor_leggings_alien_preview.png",
})

armor:register_armor("alien_material:alien_chestplate", {
	description = alien_material.S("Alien Chestplate"),
	inventory_image = "armor_inv_chestplate_alien.png",
	groups = {armor_torso=1, armor_heal=15, armor_use=50},
	armor_groups = {fleshy=15, radiation=8},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	texture = "armor_chestplate_alien.png",
	preview = "armor_chestplate_alien_preview.png",
})

armor:register_armor("alien_material:alien_shield", {
	description = alien_material.S("Alien Shield"),
	inventory_image = "armor_inv_shield_alien.png",
	groups = {armor_shield=1, armor_heal=13, armor_use=50},
	armor_groups = {fleshy=13, radiation=16},
	damage_groups = {cracky=3, snappy=3, choppy=2, crumbly=2, level=1},
	texture = "armor_shield_alien.png",
	preview = "armor_shield_alien_preview.png",
})
