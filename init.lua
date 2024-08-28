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

]]--

local path = minetest.get_modpath(minetest.get_current_modname())

alien_material = {}

alien_material.version = "1.0"
alien_material.protocol_version = 11 -- Version as number
alien_material.status = "Pre" -- Pre aren't stable Version and Main are the main versions

alien_material.custom_spawn = false
local input = io.open(path .. "/spawn.lua", "r")

if input then
	alien_material.custom_spawn = true
	input:close()
	input = nil
end

alien_material.mods_enabled = {
	mobs = minetest.get_modpath("mobs"),
	nether = minetest.get_modpath("nether"),
	farming = minetest.get_modpath("farming"),
	mobs_npc = minetest.get_modpath("mobs_npc"),
	x_bows = minetest.get_modpath("x_bows"),
	armor_3d = minetest.get_modpath("3d_armor"),
	lootchests_default = minetest.get_modpath("lootchests_default"),
	dungeon_loot = minetest.get_modpath("dungeon_loot"),
	bones_loot = minetest.get_modpath("bones_loot"),
	handle_schematics = minetest.get_modpath("handle_schematics"),
	toolranks = minetest.get_modpath("toolranks"),
}

alien_material.S = minetest.get_translator(minetest.get_current_modname())

-- dofile
dofile(path .. "/ores.lua")
dofile(path .. "/tools.lua")
dofile(path .. "/items.lua")
dofile(path .. "/crafting.lua")

if alien_material.mods_enabled.armor_3d then
	dofile(path .. "/armor.lua")
end

dofile(path .. "/gifts.lua")

if alien_material.mods_enabled.mobs then
	dofile(path .. "/alien.lua")
end

if alien_material.custom_spawn then
	dofile(path .. "/spawn.lua")
end
