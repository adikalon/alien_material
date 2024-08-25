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
	Aliens
]]--

local S = alien_material.S

local min_spawn = -31000
local max_spawn = -4000

if alien_material.mods_enabled.nether then
	min_spawn = nether.DEPTH_CEILING

	if max_spawn < min_spawn then
		max_spawn = min_spawn + 100
	end
end

-- Alien by debiankaios
-- Thanks for Mese Monster by Zeg9

mobs:register_mob("alien_material:alien", {
	nametag = S("Alien"),
	type = "monster",
	passive = false,
	damage = 1024,
	attack_type = "shoot",
	shoot_interval = 0.5,
	arrow = "alien_material:alien_mese_arrow",
	shoot_offset = 2,
	hp_min = 3000,
	hp_max = 4000,
	armor = 200,
	collisionbox = {-0.5, -1.5, -0.5, 0.5, 0.5, 0.5},
	visual = "mesh",
	mesh = "alien.x",
	textures = {
		{"alien.png"},
	},
	blood_texture = "alien_mese_fragment.png",
	makes_footstep_sound = false,
	sounds = {
		random = "mobs_mesemonster",
	},
	view_range = 10,
	walk_velocity = 0.5,
	run_velocity = 2,
	jump = true,
	jump_height = 8,
	fall_damage = 0,
	fall_speed = -6,
	stepheight = 2.1,
	drops = {
		{name = "alien_material:alien_apple", chance = 1, min = 10, max = 20},
		{name = "alien_material:alien_mese", chance = 1, min = 30, max = 50},
		{name = "alien_material:alien_diamond", chance = 1, min = 30, max = 50},
	},
	water_damage = 1,
	lava_damage = 1,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 14,
		walk_start = 38,
		walk_end = 15,
		run_start = 40,
		run_end = 63,
		punch_start = 40,
		punch_end = 63,
	},
})

if not alien_material.custom_spawn then
	mobs:spawn({
		name = "alien_material:alien",
		nodes = {"group:cracky", "group:crumbly"},
		chance = 5000,
		active_object_count = 1,
		min_height = min_spawn,
		max_height = max_spawn,
	})
end

mobs:register_egg("alien_material:alien", S("Alien"), "alien_mese_block.png", 1)

-- Alien mese arrow (weapon)
mobs:register_arrow("alien_material:alien_mese_arrow", {
	visual = "sprite",
	--visual = "wielditem",
	visual_size = {x = 0.5, y = 0.5},
	textures = {"alien_mese_fragment.png"},
	--textures = {"alien_material:alien_mese_fragment"},
	velocity = 6,
	--rotate = 180,

	hit_player = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 10},
		}, nil)
	end,

	hit_mob = function(self, player)
		player:punch(self.object, 1.0, {
			full_punch_interval = 1.0,
			damage_groups = {fleshy = 10},
		}, nil)
	end,

	hit_node = function(self, pos, node)
	end
})
