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
rotation = {}
function rotation.print(name, message)
	minetest.chat_send_player(name, "rotation: " .. message, false)
end
function rotation.set_h(name, degrees)
	local player = minetest.get_player_by_name(name)
	player:set_look_yaw(math.rad(degrees))
	rotation.print(name, "The horizontal rotation of the player is set to " .. degrees)
end
function rotation.set_v(name, degrees)
	local player = minetest.get_player_by_name(name)
	player:set_look_pitch(math.rad(degrees))
	rotation.print(name, "The vertical rotation of the player is set to " .. degrees)
end
function rotation.set(name, degrees)
	rotation.set_h(name, degrees)
	rotation.set_v(name, degrees)
end
function rotation.version(name)
	rotation.print(name, "rotation 20161209")
	rotation.print(name, "By YuGiOhJCJ <yugiohjcj@1s.fr>")
	rotation.print(name, "http://yugiohjcj.1s.fr/")
end
