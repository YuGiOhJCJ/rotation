-- rotation: A minetest mod to set the rotation of the player.
-- Copyright (C) 2016 YuGiOhJCJ

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
dofile(minetest.get_modpath("rotation") .. "/rotation.lua")
minetest.register_chatcommand("rotation_set_h", {
	params = "<degrees>",
	description = "Set the horizontal rotation of the player",
	privs = {},
	func = function(name, param)
		local degrees = string.match(param, "^%s*(%-?%d+)%s*$")
		if degrees ~= nil then
			rotation.set_h(name, degrees)
		else
			rotation.print(name, "Invalid parameters (see /help rotation_set_h)")
		end
	end
})
minetest.register_chatcommand("rotation_set_v", {
	params = "<degrees>",
	description = "Set the vertical rotation of the player",
	privs = {},
	func = function(name, param)
		local degrees = string.match(param, "^%s*(%-?%d+)%s*$")
		if degrees ~= nil then
			rotation.set_v(name, degrees)
		else
			rotation.print(name, "Invalid parameters (see /help rotation_set_v)")
		end
	end
})
minetest.register_chatcommand("rotation_set", {
	params = "<degrees>",
	description = "Set the rotation of the player",
	privs = {},
	func = function(name, param)
		local degrees = string.match(param, "^%s*(%-?%d+)%s*$")
		if degrees ~= nil then
			rotation.set(name, degrees)
		else
			rotation.print(name, "Invalid parameters (see /help rotation_set)")
		end
	end
})
minetest.register_chatcommand("rotation_version", {
	params = "",
	description = "Show the rotation version",
	privs = {},
	func = function(name, param)
		local result = string.match(param, "^%s*$")
		if result ~= nil then
			rotation.version(name)
		else
			rotation.print(name, "Invalid parameters (see /help rotation_version)")
		end
	end
})
